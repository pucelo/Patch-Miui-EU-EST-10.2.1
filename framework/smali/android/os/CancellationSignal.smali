.class public final Landroid/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignal$OnCancelListener;,
        Landroid/os/CancellationSignal$Transport;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

.field private mRemote:Landroid/os/ICancellationSignal;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTransport()Landroid/os/ICancellationSignal;
    .registers 2

    new-instance v0, Landroid/os/CancellationSignal$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/CancellationSignal$Transport;-><init>(Landroid/os/CancellationSignal$Transport;)V

    return-object v0
.end method

.method public static fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;
    .registers 2

    instance-of v0, p0, Landroid/os/CancellationSignal$Transport;

    if-eqz v0, :cond_9

    check-cast p0, Landroid/os/CancellationSignal$Transport;

    iget-object v0, p0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private waitForCancelFinishedLocked()V
    .registers 3

    :goto_0
    iget-boolean v1, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v1, :cond_a

    :try_start_4
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    :catch_8
    move-exception v0

    goto :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-eqz v3, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v3, 0x1

    :try_start_8
    iput-boolean v3, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    iget-object v1, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    iget-object v2, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_25

    monitor-exit p0

    if-eqz v1, :cond_17

    :try_start_14
    invoke-interface {v1}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_2d

    :cond_17
    if-eqz v2, :cond_1c

    :try_start_19
    invoke-interface {v2}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_28
    .catchall {:try_start_19 .. :try_end_1c} :catchall_2d

    :cond_1c
    :goto_1c
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_1e
    iput-boolean v3, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->notifyAll()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_2a

    monitor-exit p0

    return-void

    :catchall_25
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_28
    move-exception v0

    goto :goto_1c

    :catchall_2a
    move-exception v3

    monitor-exit p0

    throw v3

    :catchall_2d
    move-exception v3

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_30
    iput-boolean v4, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->notifyAll()V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_37

    monitor-exit p0

    throw v3

    :catchall_37
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isCanceled()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    if-ne v0, p1, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iput-object p1, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_19

    if-eqz v0, :cond_12

    if-nez p1, :cond_14

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    monitor-exit p0

    invoke-interface {p1}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRemote(Landroid/os/ICancellationSignal;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    iget-object v1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    if-ne v1, p1, :cond_a

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iput-object p1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    iget-boolean v1, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_19

    if-eqz v1, :cond_12

    if-nez p1, :cond_14

    :cond_12
    monitor-exit p0

    return-void

    :cond_14
    monitor-exit p0

    :try_start_15
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_1c

    :goto_18
    return-void

    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_1c
    move-exception v0

    goto :goto_18
.end method

.method public throwIfCanceled()V
    .registers 2

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method
