.class Landroid/hardware/camera2/legacy/PerfMeasurement;
.super Ljava/lang/Object;
.source "PerfMeasurement.java"


# static fields
.field public static final DEFAULT_MAX_QUERIES:I = 0x3

.field private static final FAILED_TIMING:J = -0x2L

.field private static final NO_DURATION_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "PerfMeasurement"


# instance fields
.field private mCollectedCpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedGpuDurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCollectedTimestamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCompletedQueryCount:I

.field private mCpuDurationsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeContext:J

.field private mStartTimeNs:J

.field private mTimestampQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    const/4 v0, 0x1

    if-ge p1, v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxQueries is less than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-static {p1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeCreateContext(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    return-void
.end method

.method private getNextGlDuration()J
    .registers 5

    iget-wide v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v2, v3}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeGetNextGlDuration(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_12

    iget v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    :cond_12
    return-wide v0
.end method

.method public static isGlTimingSupported()Z
    .registers 1

    invoke-static {}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeQuerySupport()Z

    move-result v0

    return v0
.end method

.method private static native nativeCreateContext(I)J
.end method

.method private static native nativeDeleteContext(J)V
.end method

.method protected static native nativeGetNextGlDuration(J)J
.end method

.method private static native nativeQuerySupport()Z
.end method

.method protected static native nativeStartGlTimer(J)V
.end method

.method protected static native nativeStopGlTimer(J)V
.end method


# virtual methods
.method public addTimestamp(J)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dumpPerformanceData(Ljava/lang/String;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_89
    .catchall {:try_start_2 .. :try_end_c} :catchall_a5

    :try_start_c
    const-string/jumbo v4, "timestamp gpu_duration cpu_duration\n"

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_13
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_46

    const-string/jumbo v4, "%d %d %d\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_46
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_55} :catch_aa
    .catchall {:try_start_c .. :try_end_55} :catchall_a7

    if-eqz v1, :cond_5a

    :try_start_57
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_85
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5d

    :cond_5a
    :goto_5a
    if-eqz v5, :cond_87

    :try_start_5c
    throw v5
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception v2

    move-object v0, v1

    :goto_5f
    const-string/jumbo v4, "PerfMeasurement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing data dump to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_84
    return-void

    :catch_85
    move-exception v5

    goto :goto_5a

    :cond_87
    move-object v0, v1

    goto :goto_84

    :catch_89
    move-exception v4

    :goto_8a
    :try_start_8a
    throw v4
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_8f
    if-eqz v0, :cond_94

    :try_start_91
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_99
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_97

    :cond_94
    :goto_94
    if-eqz v5, :cond_a4

    :try_start_96
    throw v5

    :catch_97
    move-exception v2

    goto :goto_5f

    :catch_99
    move-exception v6

    if-nez v5, :cond_9e

    move-object v5, v6

    goto :goto_94

    :cond_9e
    if-eq v5, v6, :cond_94

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_94

    :cond_a4
    throw v4
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_a5} :catch_97

    :catchall_a5
    move-exception v4

    goto :goto_8f

    :catchall_a7
    move-exception v4

    move-object v0, v1

    goto :goto_8f

    :catch_aa
    move-exception v4

    move-object v0, v1

    goto :goto_8a
.end method

.method protected finalize()V
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeDeleteContext(J)V

    return-void
.end method

.method public getCompletedQueryCount()I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCompletedQueryCount:I

    return v0
.end method

.method public startTimer()V
    .registers 3

    iget-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v0, v1}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStartGlTimer(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    return-void
.end method

.method public stopTimer()V
    .registers 11

    const-wide/16 v6, -0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    iget-wide v8, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mStartTimeNs:J

    sub-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mNativeContext:J

    invoke-static {v4, v5}, Landroid/hardware/camera2/legacy/PerfMeasurement;->nativeStopGlTimer(J)V

    invoke-direct {p0}, Landroid/hardware/camera2/legacy/PerfMeasurement;->getNextGlDuration()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_4e

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedGpuDurations:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedTimestamps:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6f

    move-wide v4, v6

    :goto_36
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCollectedCpuDurations:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7c

    :goto_47
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    const-wide/16 v4, -0x2

    cmp-long v4, v0, v4

    if-nez v4, :cond_6e

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_61

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_61
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6e

    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_6e
    return-void

    :cond_6f
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mTimestampQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_36

    :cond_7c
    iget-object v4, p0, Landroid/hardware/camera2/legacy/PerfMeasurement;->mCpuDurationsQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_47
.end method