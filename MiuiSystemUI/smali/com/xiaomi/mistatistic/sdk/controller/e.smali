.class public Lcom/xiaomi/mistatistic/sdk/controller/e;
.super Ljava/lang/Object;
.source "DeviceIdHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->b:Ljava/lang/Object;

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    sput-object v1, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v2, "imei_md5"

    const-string/jumbo v3, ""

    invoke-static {p0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "imei_md5"

    invoke-static {p0, v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    const/4 v3, 0x0

    const-class v8, Lcom/xiaomi/mistatistic/sdk/controller/e;

    monitor-enter v8

    :try_start_0
    sget-object v9, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v9, "anonymous_id"

    const-string/jumbo v10, ""

    invoke-static {p0, v9, v10}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "aigt"

    const-wide/16 v10, 0x0

    invoke-static {p0, v9, v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v9, "anonymous_ei"

    const-wide v10, 0x1cf7c5800L

    invoke-static {p0, v9, v10, v11}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;

    const-string/jumbo v9, "anonymous_id"

    invoke-static {p0, v9, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v3, "aigt"

    invoke-static {p0, v3, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v3

    :cond_1
    :try_start_1
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-object v3

    :cond_2
    sub-long v10, v0, v4

    cmp-long v9, v10, v6

    if-gez v9, :cond_3

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_0

    :try_start_2
    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v8

    throw v3
.end method

.method static synthetic d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object v6

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v6, "device_id"

    const-string/jumbo v7, ""

    invoke-static {v1, v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v6, "DIH"

    const-string/jumbo v7, "getDeviceId exception"

    invoke-static {v6, v7, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    :goto_2
    sget-object v6, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    const-string/jumbo v7, "device_id"

    invoke-static {v1, v7, v6}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sput-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    return-object v3

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "DIH"

    const-string/jumbo v4, "cannot get READ_PHONE_STATE permission"

    invoke-static {v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v3, "DIH"

    const-string/jumbo v4, "getImei exception:"

    invoke-static {v3, v4, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_2
    :try_start_3
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/mistatistic/sdk/controller/e;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_3
    const-string/jumbo v3, "DIH"

    const-string/jumbo v4, "Imei is empty"

    invoke-static {v3, v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/e$a;

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/e$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V

    return-object v3

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/e;->c:Ljava/lang/String;

    return-object v0
.end method
