.class public abstract Landroid/util/TimedRemoteCaller;
.super Ljava/lang/Object;
.source "TimedRemoteCaller.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_CALL_TIMEOUT_MILLIS:J = 0x1388L


# instance fields
.field private final mAwaitedCalls:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCallTimeoutMillis:J

.field private final mLock:Ljava/lang/Object;

.field private final mReceivedCalls:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSequenceCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    iput-wide p1, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    return-void
.end method


# virtual methods
.method protected final getResultTimed(I)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    :goto_4
    :try_start_4
    iget-object v8, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_49

    :try_start_7
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_17

    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_46

    move-result-object v3

    :try_start_15
    monitor-exit v8
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_16} :catch_49

    return-object v3

    :cond_17
    :try_start_17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v4

    iget-wide v10, p0, Landroid/util/TimedRemoteCaller;->mCallTimeoutMillis:J

    sub-long v6, v10, v0

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-gtz v3, :cond_4b

    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    new-instance v3, Ljava/util/concurrent/TimeoutException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No response for sequence: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_46
    .catchall {:try_start_17 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v3

    :try_start_47
    monitor-exit v8

    throw v3
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_49} :catch_49

    :catch_49
    move-exception v2

    goto :goto_4

    :cond_4b
    :try_start_4b
    iget-object v3, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_46

    :try_start_50
    monitor-exit v8
    :try_end_51
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_51} :catch_49

    goto :goto_4
.end method

.method protected final onBeforeRemoteCall()I
    .registers 5

    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :cond_3
    :try_start_3
    iget v0, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/util/TimedRemoteCaller;->mSequenceCounter:I

    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v2

    return v0

    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected final onRemoteMethodResult(Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v2, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_1d

    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mAwaitedCalls:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mReceivedCalls:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/util/TimedRemoteCaller;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    :cond_1d
    monitor-exit v2

    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_c

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method
