.class Lcom/android/server/NetworkTimeUpdateServiceInjector;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateServiceInjector.java"


# static fields
.field private static final CHINA_NTP_SERERS_LIST:[Ljava/lang/String;

.field private static final DBG:Z = true

.field private static final NTP_SERVERS_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetworkTimeUpdateServiceInjector"

.field private static final hasServerField:Z = true

.field private static sConnManager:Landroid/net/ConnectivityManager;

.field private static sDefaultNtpServer:Ljava/lang/String;

.field private static sNtpServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sServerField:Ljava/lang/reflect/Field;

.field private static sTime:Landroid/util/TrustedTime;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "2.android.pool.ntp.org"

    aput-object v1, v0, v2

    const-string/jumbo v1, "time.nist.gov"

    aput-object v1, v0, v3

    const-string/jumbo v1, "2.centos.pool.ntp.org"

    aput-object v1, v0, v4

    const-string/jumbo v1, "asia.pool.ntp.org"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "hshh.org"

    aput-object v1, v0, v2

    const-string/jumbo v1, "t1.hshh.org"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cn.ntp.org.cn"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->CHINA_NTP_SERERS_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static handleNetworkChanged(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_f

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    :cond_f
    invoke-static {}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "NetworkTimeUpdateServiceInjector"

    const-string/jumbo v1, "network ok,send msg to sync time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sendHandlerMessage(Landroid/os/Handler;I)V

    :cond_21
    return-void
.end method

.method static initNtpServers(Landroid/content/Context;Landroid/util/TrustedTime;)V
    .registers 9

    const/4 v3, 0x0

    sput-object p1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v2, v2, Landroid/util/NtpTrustedTime;

    if-eqz v2, :cond_53

    :try_start_14
    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    const-string/jumbo v4, "mServer"

    invoke-static {v2, v4}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v2}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/server/NetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_2f
    if-ge v2, v5, :cond_3b

    aget-object v1, v4, v2

    sget-object v6, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_3b
    sget-boolean v2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v2, :cond_53

    sget-object v4, Lcom/android/server/NetworkTimeUpdateServiceInjector;->CHINA_NTP_SERERS_LIST:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_43
    if-ge v2, v5, :cond_53

    aget-object v1, v4, v2

    sget-object v3, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4c} :catch_4f

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_53
    return-void
.end method

.method static initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void
.end method

.method static isDataNetworkReady()Z
    .registers 1

    invoke-static {}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static isNetChangedEvent(II)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static isNetworkConnected()Z
    .registers 3

    sget-object v1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    return v1

    :cond_f
    sget-object v1, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_5

    :cond_16
    const-string/jumbo v1, "NetworkTimeUpdateServiceInjector"

    const-string/jumbo v2, "network isn\'t ok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method static refreshNtpServer(I)Z
    .registers 6

    :try_start_0
    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v1, p0, v2

    sget-object v3, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "NetworkTimeUpdateServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",ntpServers = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v4}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->forceRefresh()Z

    sget-object v2, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v3, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4e

    const/4 v2, 0x1

    return v2

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return v2
.end method

.method static sendHandlerMessage(Landroid/os/Handler;I)V
    .registers 4

    if-nez p0, :cond_c

    const-string/jumbo v0, "NetworkTimeUpdateServiceInjector"

    const-string/jumbo v1, "handler null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b
.end method

.method static setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static switchNtpServer(I)V
    .registers 2

    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v0, v0, Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/android/server/NetworkTimeUpdateServiceInjector;->refreshNtpServer(I)Z

    move-result v0

    :goto_e
    if-nez v0, :cond_15

    sget-object v0, Lcom/android/server/NetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    :cond_15
    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_e
.end method
