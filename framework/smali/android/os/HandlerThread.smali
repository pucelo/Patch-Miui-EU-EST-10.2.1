.class public Landroid/os/HandlerThread;
.super Ljava/lang/Thread;
.source "HandlerThread.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field mLooper:Landroid/os/Looper;

.field mPriority:I

.field mTid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/HandlerThread;->mPriority:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    iput p2, p0, Landroid/os/HandlerThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_8

    return-object v2

    :cond_8
    monitor-enter p0

    :goto_9
    :try_start_9
    invoke-virtual {p0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1d

    if-nez v1, :cond_19

    :try_start_13
    invoke-virtual {p0}, Landroid/os/HandlerThread;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d

    goto :goto_9

    :catch_17
    move-exception v0

    goto :goto_9

    :cond_19
    monitor-exit p0

    iget-object v1, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    return-object v1

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getThreadHandler()Landroid/os/Handler;
    .registers 3

    iget-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    :cond_f
    iget-object v0, p0, Landroid/os/HandlerThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getThreadId()I
    .registers 2

    iget v0, p0, Landroid/os/HandlerThread;->mTid:I

    return v0
.end method

.method protected onLooperPrepared()V
    .registers 1

    return-void
.end method

.method public quit()Z
    .registers 3

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v1, 0x1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public quitSafely()Z
    .registers 3

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v1, 0x1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public run()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0

    :try_start_a
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/os/HandlerThread;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->notifyAll()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_23

    monitor-exit p0

    iget v0, p0, Landroid/os/HandlerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/HandlerThread;->mTid:I

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method
