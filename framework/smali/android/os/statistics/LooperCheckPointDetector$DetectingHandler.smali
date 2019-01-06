.class Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;
.super Landroid/os/Handler;
.source "LooperCheckPointDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperCheckPointDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetectingHandler"
.end annotation


# instance fields
.field private final detectingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final lockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    return-void
.end method

.method private decodeDetectingBeginUptimeMs(Landroid/os/Message;)J
    .registers 6

    iget v0, p1, Landroid/os/Message;->arg2:I

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private decodeDetectingThread(Landroid/os/Message;)Ljava/lang/Thread;
    .registers 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Thread;

    return-object v0
.end method

.method private decodeDetectingTid(Landroid/os/Message;)I
    .registers 3

    iget v0, p1, Landroid/os/Message;->arg2:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;
    .registers 10

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide v2, 0xffffffffL

    and-long/2addr v2, p3

    long-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x20

    shr-long v2, p3, v1

    long-to-int v1, v2

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget v1, v0, Landroid/os/Message;->arg2:I

    shl-int/lit8 v2, p2, 0x8

    or-int/2addr v1, v2

    iput v1, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method


# virtual methods
.method public beginLoopOnce(IJ)V
    .registers 10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v3, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_1b

    monitor-exit v3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-get0()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public endLooperOnce()V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-get0()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    monitor-exit v2

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_58

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v9

    const/16 v10, -0xa

    invoke-static {v9, v10}, Landroid/os/statistics/OsUtils;->setThreadPriorityUnconditonally(II)V

    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingThread(Landroid/os/Message;)Ljava/lang/Thread;

    move-result-object v7

    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-get0()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v10, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->lockObject:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1e
    iget-object v9, p0, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->detectingThreads:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_55

    move-result v3

    monitor-exit v10

    if-eqz v3, :cond_5

    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingTid(Landroid/os/Message;)I

    move-result v8

    invoke-direct {p0, p1}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->decodeDetectingBeginUptimeMs(Landroid/os/Message;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v4

    new-instance v2, Landroid/os/statistics/LooperCheckPoint;

    invoke-direct {v2}, Landroid/os/statistics/LooperCheckPoint;-><init>()V

    iput v8, v2, Landroid/os/statistics/LooperCheckPoint;->threadId:I

    iput-wide v0, v2, Landroid/os/statistics/LooperCheckPoint;->beginUptimeMillis:J

    iput-wide v4, v2, Landroid/os/statistics/LooperCheckPoint;->endUptimeMillis:J

    invoke-static {v2}, Landroid/os/statistics/PerfEventReporter;->report(Landroid/os/statistics/PerfEvent;)V

    invoke-direct {p0, v7, v8, v4, v5}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->obtainDetectMessage(Ljava/lang/Thread;IJ)Landroid/os/Message;

    move-result-object v6

    invoke-static {}, Landroid/os/statistics/LooperCheckPointDetector;->-get0()Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;

    move-result-object v9

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v6, v10, v11}, Landroid/os/statistics/LooperCheckPointDetector$DetectingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :catchall_55
    move-exception v9

    monitor-exit v10

    throw v9

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
