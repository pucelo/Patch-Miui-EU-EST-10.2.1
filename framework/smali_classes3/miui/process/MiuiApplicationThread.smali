.class public Lmiui/process/MiuiApplicationThread;
.super Lmiui/process/IMiuiApplicationThread$Stub;
.source "MiuiApplicationThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiApplicationThread"


# instance fields
.field private mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/process/IMiuiApplicationThread$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpMessage()Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    const-string/jumbo v4, ""

    :try_start_4
    const-class v5, Landroid/os/BaseLooper;

    const-string/jumbo v6, "dumpAll"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2a} :catch_2b

    :goto_2a
    return-object v4

    :catch_2b
    move-exception v2

    const-string/jumbo v5, "MiuiApplicationThread"

    const-string/jumbo v6, "error in dumpMessage."

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method public longScreenshot(II)Z
    .registers 4

    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    if-nez v0, :cond_b

    new-instance v0, Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-direct {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;-><init>()V

    iput-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    :cond_b
    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-virtual {v0, p1, p2}, Lmiui/util/LongScreenshotUtils$ContentPort;->longScreenshot(II)Z

    move-result v0

    return v0
.end method
