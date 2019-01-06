.class final Landroid/os/Handler$BlockingRunnable;
.super Ljava/lang/Object;
.source "Handler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingRunnable"
.end annotation


# instance fields
.field private mDone:Z

.field private final mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public postAndWait(Landroid/os/Handler;J)Z
    .registers 16

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_a

    return v8

    :cond_a
    monitor-enter p0

    cmp-long v3, p2, v10

    if-lez v3, :cond_2b

    :try_start_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long v4, v6, p2

    :goto_15
    iget-boolean v3, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    if-nez v3, :cond_35

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_38

    move-result-wide v6

    sub-long v0, v4, v6

    cmp-long v3, v0, v10

    if-gtz v3, :cond_25

    monitor-exit p0

    return v8

    :cond_25
    :try_start_25
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler$BlockingRunnable;->wait(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_29
    .catchall {:try_start_25 .. :try_end_28} :catchall_38

    goto :goto_15

    :catch_29
    move-exception v2

    goto :goto_15

    :cond_2b
    :goto_2b
    :try_start_2b
    iget-boolean v3, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_38

    if-nez v3, :cond_35

    :try_start_2f
    invoke-virtual {p0}, Landroid/os/Handler$BlockingRunnable;->wait()V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_38

    goto :goto_2b

    :catch_33
    move-exception v2

    goto :goto_2b

    :cond_35
    monitor-exit p0

    const/4 v3, 0x1

    return v3

    :catchall_38
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/os/Handler$BlockingRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_11

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    invoke-virtual {p0}, Landroid/os/Handler$BlockingRunnable;->notifyAll()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_11
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_14
    iput-boolean v1, p0, Landroid/os/Handler$BlockingRunnable;->mDone:Z

    invoke-virtual {p0}, Landroid/os/Handler$BlockingRunnable;->notifyAll()V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1b

    monitor-exit p0

    throw v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
