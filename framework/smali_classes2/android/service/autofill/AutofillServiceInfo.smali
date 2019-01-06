.class public final Landroid/service/autofill/AutofillServiceInfo;
.super Ljava/lang/Object;
.source "AutofillServiceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillServiceInfo"


# instance fields
.field private final mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mSettingsActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {p2, p3}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/service/autofill/AutofillServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {p1, p2}, Landroid/service/autofill/AutofillServiceInfo;->getMetaDataArray(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/autofill/AutofillServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_16
    return-void

    :cond_17
    iput-object v1, p0, Landroid/service/autofill/AutofillServiceInfo;->mSettingsActivity:Ljava/lang/String;

    goto :goto_16
.end method

.method private static getMetaDataArray(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/content/res/TypedArray;
    .registers 11

    const/4 v8, 0x0

    const-string/jumbo v6, "android.permission.BIND_AUTOFILL_SERVICE"

    iget-object v7, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    const-string/jumbo v6, "android.permission.BIND_AUTOFILL"

    iget-object v7, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4c

    const-string/jumbo v6, "AutofillServiceInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AutofillService from \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' does not require permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "android.permission.BIND_AUTOFILL_SERVICE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Service does not require permission android.permission.BIND_AUTOFILL_SERVICE"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4c
    const-string/jumbo v6, "android.autofill"

    invoke-virtual {p1, p0, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    if-nez v3, :cond_56

    return-object v8

    :cond_56
    :try_start_56
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_59
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_56 .. :try_end_59} :catch_7a
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_7a
    .catchall {:try_start_56 .. :try_end_59} :catchall_aa

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_60

    const/4 v6, 0x2

    if-ne v5, v6, :cond_56

    :cond_60
    :try_start_60
    const-string/jumbo v6, "autofill-service"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_88

    const-string/jumbo v6, "AutofillServiceInfo"

    const-string/jumbo v7, "Meta-data does not start with autofill-service tag"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_60 .. :try_end_76} :catchall_aa

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v8

    :catch_7a
    move-exception v2

    :try_start_7b
    const-string/jumbo v6, "AutofillServiceInfo"

    const-string/jumbo v7, "Error parsing auto fill service meta-data"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_aa

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v8

    :cond_88
    :try_start_88
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_aa

    move-result-object v0

    :try_start_8c
    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_91
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8c .. :try_end_91} :catch_9c
    .catchall {:try_start_8c .. :try_end_91} :catchall_aa

    move-result-object v4

    :try_start_92
    sget-object v6, Lcom/android/internal/R$styleable;->AutofillService:[I

    invoke-virtual {v4, v0, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_aa

    move-result-object v6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v6

    :catch_9c
    move-exception v1

    :try_start_9d
    const-string/jumbo v6, "AutofillServiceInfo"

    const-string/jumbo v7, "Error getting application resources"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_aa

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v8

    :catchall_aa
    move-exception v6

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    throw v6
.end method

.method private static getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-interface {v2, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    move-result-object v1

    if-eqz v1, :cond_e

    return-object v1

    :catch_d
    move-exception v0

    :cond_e
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_8

    const-string/jumbo v0, "null"

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method
