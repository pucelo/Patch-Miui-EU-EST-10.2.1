.class public final Lcom/android/server/MiuiFgThread;
.super Lcom/android/server/ServiceThread;
.source "MiuiFgThread.java"


# static fields
.field private static final IS_STABLE_VERSION:Z

.field private static final WATCHDOG_TIMEOUT:J = 0x1d4c0L

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/MiuiFgThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/android/server/MiuiFgThread;->IS_STABLE_VERSION:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const-string/jumbo v0, "miui.fg"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static ensureThreadLocked()V
    .registers 4

    sget-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    if-nez v0, :cond_2d

    new-instance v0, Lcom/android/server/MiuiFgThread;

    invoke-direct {v0}, Lcom/android/server/MiuiFgThread;-><init>()V

    sput-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    sget-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    invoke-virtual {v0}, Lcom/android/server/MiuiFgThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;

    invoke-virtual {v1}, Lcom/android/server/MiuiFgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/MiuiFgThread;->sHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    sget-object v3, Lcom/android/server/MiuiFgThread;->sHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/server/MiuiFgThread;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_2e

    const-wide/32 v0, 0x927c0

    :goto_2a
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    :cond_2d
    return-void

    :cond_2e
    const-wide/32 v0, 0x1d4c0

    goto :goto_2a
.end method

.method public static get()Lcom/android/server/MiuiFgThread;
    .registers 2

    const-class v1, Lcom/android/server/MiuiFgThread;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/MiuiFgThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/server/MiuiFgThread;->sInstance:Lcom/android/server/MiuiFgThread;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    const-class v1, Lcom/android/server/MiuiFgThread;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/MiuiFgThread;->ensureThreadLocked()V

    sget-object v0, Lcom/android/server/MiuiFgThread;->sHandler:Landroid/os/Handler;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initialMiuiFgThread()V
    .registers 2

    const-class v0, Lcom/android/server/MiuiFgThread;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/MiuiFgThread;->ensureThreadLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method
