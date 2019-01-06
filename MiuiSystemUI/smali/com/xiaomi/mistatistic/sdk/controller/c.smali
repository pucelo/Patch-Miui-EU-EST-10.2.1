.class public abstract Lcom/xiaomi/mistatistic/sdk/controller/c;
.super Ljava/lang/Object;
.source "ApplicationContextHolder.java"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sput-object p0, Lcom/xiaomi/mistatistic/sdk/controller/c;->a:Landroid/content/Context;

    sput-object p1, Lcom/xiaomi/mistatistic/sdk/controller/c;->b:Ljava/lang/String;

    sput-object p2, Lcom/xiaomi/mistatistic/sdk/controller/c;->c:Ljava/lang/String;

    sput-object p3, Lcom/xiaomi/mistatistic/sdk/controller/c;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->g:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 6

    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/c;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/c$1;

    invoke-direct {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/c$1;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/xiaomi/mistatistic/sdk/controller/c;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/c;->e:Ljava/lang/String;

    return-object v2

    :cond_0
    sget-object v2, Lcom/xiaomi/mistatistic/sdk/controller/c;->e:Ljava/lang/String;

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "getVersion exception: "

    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->f:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/controller/c;->a:Landroid/content/Context;

    return-object v0
.end method
