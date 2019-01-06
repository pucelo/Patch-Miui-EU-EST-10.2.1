.class public Landroid/hardware/camera2/legacy/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    }
.end annotation


# static fields
.field private static final INVALID_FRAME:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "RequestQueue"


# instance fields
.field private mCurrentFrameNumber:J

.field private mCurrentRepeatingFrameNumber:J

.field private mCurrentRequestId:I

.field private final mJpegSurfaceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

.field private final mRequestQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/hardware/camera2/legacy/BurstHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mJpegSurfaceIds:Ljava/util/List;

    return-void
.end method

.method private calculateLastFrame(I)J
    .registers 8

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    iget-object v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/BurstHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_8

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    return-wide v4

    :cond_25
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "At least one request must be in the queue to calculate frame number"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public declared-synchronized getNext()Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;
    .registers 10

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/legacy/BurstHolder;

    if-eqz v0, :cond_2b

    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-nez v3, :cond_2b

    const/4 v1, 0x1

    :goto_15
    if-nez v0, :cond_27

    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-eqz v3, :cond_27

    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_44

    :cond_27
    if-nez v0, :cond_2d

    monitor-exit p0

    return-object v8

    :cond_2b
    const/4 v1, 0x0

    goto :goto_15

    :cond_2d
    :try_start_2d
    new-instance v2, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;

    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3, v1}, Landroid/hardware/camera2/legacy/RequestQueue$RequestQueueEntry;-><init>(Landroid/hardware/camera2/legacy/RequestQueue;Landroid/hardware/camera2/legacy/BurstHolder;Ljava/lang/Long;Z)V

    iget-wide v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getNumberOfRequests()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentFrameNumber:J
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_44

    monitor-exit p0

    return-object v2

    :catchall_44
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized stopRepeating()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-nez v0, :cond_12

    const-string/jumbo v0, "RequestQueue"

    const-string/jumbo v1, "cancel failed: no repeating request exists."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/legacy/RequestQueue;->stopRepeating(I)J
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1e

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRepeating(I)J
    .registers 8

    const-wide/16 v4, -0x1

    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_5
    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    invoke-virtual {v2}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v2

    if-ne v2, p1, :cond_32

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2b

    const-wide/16 v0, -0x1

    :goto_1c
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    const-string/jumbo v2, "RequestQueue"

    const-string/jumbo v3, "Repeating capture request cancelled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_4d

    :goto_29
    monitor-exit p0

    return-wide v0

    :cond_2b
    :try_start_2b
    iget-wide v2, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    const-wide/16 v4, 0x1

    sub-long v0, v2, v4

    goto :goto_1c

    :cond_32
    const-string/jumbo v2, "RequestQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancel failed: no repeating request exists for request id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_4d

    goto :goto_29

    :catchall_4d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized submit([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;
    .registers 13

    const-wide/16 v8, -0x1

    monitor-enter p0

    :try_start_3
    iget v4, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRequestId:I

    new-instance v0, Landroid/hardware/camera2/legacy/BurstHolder;

    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mJpegSurfaceIds:Ljava/util/List;

    invoke-direct {v0, v4, p2, p1, v5}, Landroid/hardware/camera2/legacy/BurstHolder;-><init>(IZ[Landroid/hardware/camera2/CaptureRequest;Ljava/util/Collection;)V

    const-wide/16 v2, -0x1

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->isRepeating()Z

    move-result v5

    if-eqz v5, :cond_41

    const-string/jumbo v5, "RequestQueue"

    const-string/jumbo v6, "Repeating capture request set."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    if-eqz v5, :cond_2d

    iget-wide v6, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_3a

    const-wide/16 v2, -0x1

    :cond_2d
    :goto_2d
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    iput-object v0, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRepeatingRequest:Landroid/hardware/camera2/legacy/BurstHolder;

    :goto_33
    new-instance v1, Landroid/hardware/camera2/utils/SubmitInfo;

    invoke-direct {v1, v4, v2, v3}, Landroid/hardware/camera2/utils/SubmitInfo;-><init>(IJ)V
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_4f

    monitor-exit p0

    return-object v1

    :cond_3a
    :try_start_3a
    iget-wide v6, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mCurrentRepeatingFrameNumber:J

    const-wide/16 v8, 0x1

    sub-long v2, v6, v8

    goto :goto_2d

    :cond_41
    iget-object v5, p0, Landroid/hardware/camera2/legacy/RequestQueue;->mRequestQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/BurstHolder;->getRequestId()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/hardware/camera2/legacy/RequestQueue;->calculateLastFrame(I)J
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_4f

    move-result-wide v2

    goto :goto_33

    :catchall_4f
    move-exception v5

    monitor-exit p0

    throw v5
.end method
