.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;
.super Ljava/lang/Object;
.source "BasicInfoRecordJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "get"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    const-string/jumbo v4, ""

    invoke-static {v4, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    invoke-direct {v0, v1, p0, p1}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "getVolumeState"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v7

    :cond_0
    return v8

    :catch_0
    move-exception v0

    const-string/jumbo v3, ""

    invoke-static {v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x0

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v10, 0x6

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-string/jumbo v10, "last_day"

    invoke-static {p1, v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    if-eq v3, v10, :cond_1

    const-string/jumbo v10, "last_day"

    invoke-static {p1, v10, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string/jumbo v10, "mistat_basic"

    const-string/jumbo v11, "mistat_dau"

    invoke-direct {v4, v10, v11}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->d(Landroid/content/Context;)V

    const-string/jumbo v10, "ro.miui.ui.version.name"

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "ui_version"

    invoke-static {v10, v5}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string/jumbo v10, "version"

    invoke-static {v10, v6}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "sd"

    invoke-static {v10, v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "network"

    invoke-static {v10, v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "ro.carrier.name"

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "carrier_name"

    invoke-static {v10, v9}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "ro.miui.region"

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "region"

    invoke-static {v10, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "mcc"

    invoke-static {v11, v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "imei_md5"

    invoke-static {v11, v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "miui_imei_md5"

    invoke-static {v11, v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "android_id_md5"

    invoke-static {v11, v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "serial_num_md5"

    invoke-static {v11, v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static c()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "dau_time"

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(J)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string/jumbo v2, "mistat_basic"

    const-string/jumbo v3, "mistat_dau_dummy"

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "dau_time"

    invoke-static {v0, v4, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "addDauEventWhenForeground exception: "

    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v1, "uep_property"

    invoke-static {p1, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "UEP"

    const-string/jumbo v3, "not_miui"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "uep_property"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isUserExperienceProgramEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "UEP"

    const-string/jumbo v3, "no"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v1, "mistat_basic"

    const-string/jumbo v2, "UEP"

    const-string/jumbo v3, "yes"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->isUploadInstalledPackageEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, ","

    invoke-static {v5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v5, "mistat_basic"

    const-string/jumbo v6, "installed_package"

    invoke-direct {v4, v5, v6, v3}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, ""

    invoke-static {v5, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v3, "unknown"

    return-object v3

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    const-string/jumbo v3, "unknown"

    return-object v3

    :cond_2
    :try_start_1
    const-string/jumbo v3, "WIFI"

    return-object v3

    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v3, "unknown"

    return-object v3

    :pswitch_0
    const-string/jumbo v3, "2G"

    return-object v3

    :pswitch_1
    const-string/jumbo v3, "3G"

    return-object v3

    :pswitch_2
    const-string/jumbo v3, "4G"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, ""

    invoke-static {v3, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "0"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "2"

    const-string/jumbo v3, "0"

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "SECONDARY_STORAGE"

    invoke-static {v6}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {p0, v5}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    const-string/jumbo v3, "2"

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v3, "1"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v6, ""

    invoke-static {v6, v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->b(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->c(Landroid/content/Context;)V

    const-string/jumbo v4, "basic_info_reported"

    invoke-static {v0, v4}, Lcom/xiaomi/mistatistic/sdk/controller/k;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "basic_info_version"

    const-string/jumbo v5, ""

    invoke-static {v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    const-string/jumbo v4, "basic_info_version"

    invoke-static {v0, v4, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    if-nez v4, :cond_3

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Landroid/content/Context;)V

    const-string/jumbo v4, "basic_info_reported"

    invoke-static {v0, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iput-boolean v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a:Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    new-instance v3, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string/jumbo v4, "mistat_basic"

    const-string/jumbo v5, "upgrade"

    invoke-direct {v3, v4, v5}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v4}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v4}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    goto :goto_2
.end method

.method public a(Landroid/content/Context;)V
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v9, Lcom/xiaomi/mistatistic/sdk/data/e;

    const-string/jumbo v19, "mistat_basic"

    const-string/jumbo v20, "new"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v9, v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    new-instance v10, Lcom/xiaomi/mistatistic/sdk/data/h;

    sget-object v19, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v20, "mistat_basic"

    const-string/jumbo v21, "model"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    new-instance v10, Lcom/xiaomi/mistatistic/sdk/data/h;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "android"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "mistat_basic"

    const-string/jumbo v21, "OS"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    const-string/jumbo v19, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v19

    if-eqz v19, :cond_2

    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    if-nez v13, :cond_3

    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v19, "locale"

    move-object/from16 v0, v19

    invoke-static {v0, v15}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "ro.sys.miui_rom_channel_id"

    invoke-static/range {v19 .. v19}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v19, "channel"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "ro.product.mod_device"

    invoke-static/range {v19 .. v19}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "device_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "ro.product.model.real"

    invoke-static/range {v19 .. v19}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v19, "real_model"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/xiaomi/mistatistic/sdk/controller/q;->d(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_5

    :goto_3
    return-void

    :cond_1
    new-instance v10, Lcom/xiaomi/mistatistic/sdk/data/h;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "mistat_basic"

    const-string/jumbo v21, "operator"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v10, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v19

    if-nez v19, :cond_0

    new-instance v19, Lcom/xiaomi/mistatistic/sdk/controller/e;

    invoke-direct/range {v19 .. v19}, Lcom/xiaomi/mistatistic/sdk/controller/e;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v19, "device_id"

    move-object/from16 v0, v19

    invoke-static {v0, v13}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "imei_md5"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "android_id_md5"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "serial_num_md5"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "mac_md5"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    iget v14, v13, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v14, v0, :cond_4

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_4
    new-instance v10, Lcom/xiaomi/mistatistic/sdk/data/h;

    const-string/jumbo v19, "mistat_basic"

    const-string/jumbo v20, "resolution"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v10, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    goto/16 :goto_2

    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_4

    :cond_5
    :try_start_0
    const-string/jumbo v19, "miui.os.Build"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v19, "IS_INTERNATIONAL_BUILD"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    const-string/jumbo v7, "0"

    :goto_5
    const-string/jumbo v19, "mi"

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_6
    :try_start_1
    const-string/jumbo v19, "miui.os.Build"

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v19, "IS_ALPHA_BUILD"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const-string/jumbo v19, "IS_DEVELOPMENT_VERSION"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string/jumbo v8, "S"

    :goto_7
    const-string/jumbo v19, "bc"

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v5

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_6
    :try_start_2
    const-string/jumbo v7, "1"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v4

    const-string/jumbo v19, ""

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    :try_start_3
    const-string/jumbo v8, "A"

    goto :goto_7

    :cond_8
    const-string/jumbo v8, "D"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7
.end method

.method public b()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x3

    const-string/jumbo v4, "ril.limit_service_mnc"

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "ril.limit_service_mcc"

    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_0
    const-string/jumbo v4, ""

    return-object v4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v4

    goto :goto_0
.end method
