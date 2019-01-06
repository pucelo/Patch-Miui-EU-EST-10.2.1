.class public Lmiui/push/ServiceClient;
.super Ljava/lang/Object;
.source "ServiceClient.java"


# static fields
.field private static sInstance:Lmiui/push/ServiceClient;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createServiceIntent()Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.xiaomi.xmsf"

    const-string/jumbo v3, "com.xiaomi.xmsf.push.service.XMPushService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/push/PushConstants;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lmiui/push/ServiceClient;
    .registers 2

    sget-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/push/ServiceClient;

    invoke-direct {v0, p0}, Lmiui/push/ServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    :cond_b
    sget-object v0, Lmiui/push/ServiceClient;->sInstance:Lmiui/push/ServiceClient;

    return-object v0
.end method

.method private hasNetwork()Z
    .registers 7

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v4, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    :cond_19
    if-ltz v2, :cond_1c

    const/4 v3, 0x1

    :cond_1c
    return v3
.end method

.method private serviceInstalled()Z
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_7
    const-string/jumbo v3, "com.xiaomi.xmsf"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_12

    move-result-object v2

    if-nez v2, :cond_14

    return v5

    :catch_12
    move-exception v0

    return v5

    :cond_14
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public batchSendMessage([Lmiui/push/Message;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v3

    if-nez v3, :cond_8

    return v4

    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v1

    array-length v3, p1

    new-array v2, v3, [Landroid/os/Bundle;

    const/4 v0, 0x0

    :goto_10
    array-length v3, p1

    if-ge v0, v3, :cond_1e

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lmiui/push/Message;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    array-length v3, v2

    if-lez v3, :cond_33

    sget-object v3, Lmiui/push/PushConstants;->ACTION_BATCH_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "ext_packets"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v3, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v3, 0x1

    return v3

    :cond_33
    return v4
.end method

.method public closeChannel()Z
    .registers 3

    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    return v1
.end method

.method public closeChannel(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    return v1
.end method

.method public closeChannel(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lmiui/push/PushConstants;->ACTION_CLOSE_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lmiui/push/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    return v1
.end method

.method public forceReconnection()Z
    .registers 3

    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_10

    :cond_e
    const/4 v1, 0x0

    return v1

    :cond_10
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lmiui/push/PushConstants;->ACTION_FORCE_RECONNECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v1, 0x1

    return v1
.end method

.method public openChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    return v5

    :cond_8
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v5, Lmiui/push/PushConstants;->ACTION_OPEN_CHANNEL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lmiui/push/PushConstants;->EXTRA_USER_ID:Ljava/lang/String;

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lmiui/push/PushConstants;->EXTRA_CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lmiui/push/PushConstants;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lmiui/push/PushConstants;->EXTRA_SECURITY:Ljava/lang/String;

    invoke-virtual {v2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lmiui/push/PushConstants;->EXTRA_AUTH_METHOD:Ljava/lang/String;

    invoke-virtual {v2, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lmiui/push/PushConstants;->EXTRA_KICK:Ljava/lang/String;

    invoke-virtual {v2, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p7, :cond_7b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_69

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_6c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7b

    sget-object v5, Lmiui/push/PushConstants;->EXTRA_CLIENT_ATTR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_7b
    if-eqz p8, :cond_c7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_87
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_b5

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    :cond_b8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c7

    sget-object v5, Lmiui/push/PushConstants;->EXTRA_CLOUD_ATTR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_c7
    iget-object v5, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v5, 0x0

    return v5
.end method

.method public resetConnection()V
    .registers 3

    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lmiui/push/PushConstants;->ACTION_RESET_CONNECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public sendIQ(Lmiui/push/IQ;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    :cond_f
    return v3

    :cond_10
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/push/IQ;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2c

    sget-object v2, Lmiui/push/PushConstants;->ACTION_SEND_IQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "ext_packet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v2, 0x1

    return v2

    :cond_2c
    return v3
.end method

.method public sendMessage(Lmiui/push/Message;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    :cond_f
    return v3

    :cond_10
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/push/Message;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2c

    sget-object v2, Lmiui/push/PushConstants;->ACTION_SEND_MESSAGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "ext_packet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v2, 0x1

    return v2

    :cond_2c
    return v3
.end method

.method public sendPresence(Lmiui/push/Presence;)Z
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lmiui/push/ServiceClient;->serviceInstalled()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lmiui/push/ServiceClient;->hasNetwork()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    :cond_f
    return v3

    :cond_10
    invoke-direct {p0}, Lmiui/push/ServiceClient;->createServiceIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/push/Presence;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2c

    sget-object v2, Lmiui/push/PushConstants;->ACTION_SEND_PRESENCE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "ext_packet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/push/ServiceClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v2, 0x1

    return v2

    :cond_2c
    return v3
.end method
