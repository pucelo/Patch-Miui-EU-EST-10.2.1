.class Lcom/android/server/am/MiuiBroadcastQueue;
.super Lcom/android/server/am/BroadcastQueue;
.source "MiuiBroadcastQueue.java"


# static fields
.field public static final DELADY_QUEUE_NAME:Ljava/lang/String; = "longtime"

.field public static final DELAY_TIME:J

.field private static final MAX_COUNT_ONCE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MiuiBroadcastQueue"


# instance fields
.field private fEnqueueClockTime:Ljava/lang/reflect/Field;

.field private mLastProcessBroadcastTime:J

.field private mSlowQueue:Z

.field private mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "persist.sys.m_b_delay"

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/MiuiBroadcastQueue;->DELAY_TIME:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZLcom/android/server/am/BaseMiuiBroadcastManager;)V
    .registers 12

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;JZ)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mLastProcessBroadcastTime:J

    iput-object p7, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mQueueName:Ljava/lang/String;

    const-string/jumbo v2, "longtime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    sget-boolean v1, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v1, :cond_32

    const-string/jumbo v1, "MiuiBroadcastQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :try_start_32
    const-class v1, Lcom/android/server/am/BroadcastRecord;

    const-string/jumbo v2, "enqueueClockTime"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->fEnqueueClockTime:Ljava/lang/reflect/Field;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d
.end method

.method private isDelay()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    return v0
.end method

.method private setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->fEnqueueClockTime:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastQueue;->fEnqueueClockTime:Ljava/lang/reflect/Field;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method


# virtual methods
.method public enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 7

    iget-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    if-eqz v2, :cond_44

    iget-boolean v2, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/BaseMiuiBroadcastManager;->updateLongTimeBroadcastRecord(Lcom/android/server/am/BroadcastRecord;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p0, v3, v1, p1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v0

    const-string/jumbo v2, "MiuiBroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Enqueueing order broadcast on slow queue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/server/am/MiuiBroadcastQueue;->setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_43
.end method

.method public enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 9

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mSlowQueue:Z

    if-eqz v4, :cond_9c

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/am/BaseMiuiBroadcastManager;->updateLongTimeBroadcastRecord(Lcom/android/server/am/BroadcastRecord;Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_69

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_69

    const/4 v0, 0x0

    :goto_15
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    if-ge v0, v4, :cond_9b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5e

    mul-int/lit8 v4, v0, 0x5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :goto_31
    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p0, v5, v1, p1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    const-string/jumbo v4, "MiuiBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Enqueueing parallel broadcast on slow queue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/server/am/MiuiBroadcastQueue;->setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_5e
    mul-int/lit8 v4, v0, 0x5

    mul-int/lit8 v5, v0, 0x5

    add-int/lit8 v5, v5, 0x5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_31

    :cond_69
    if-eqz v3, :cond_9b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9b

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mbm:Lcom/android/server/am/BaseMiuiBroadcastManager;

    iget-object v5, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p0, v5, v3, p1}, Lcom/android/server/am/BaseMiuiBroadcastManager;->createBroadcastRecord(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Ljava/util/List;Lcom/android/server/am/BroadcastRecord;)Lcom/android/server/am/BroadcastRecord;

    move-result-object v2

    const-string/jumbo v4, "MiuiBroadcastQueue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Enqueueing parallel broadcast on slow queue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/server/am/MiuiBroadcastQueue;->setEnqueueClockTime(Lcom/android/server/am/BroadcastRecord;)V

    :cond_9b
    :goto_9b
    return-void

    :cond_9c
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_9b
.end method

.method processNextBroadcast(Z)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastQueue;->isDelay()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mLastProcessBroadcastTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/am/MiuiBroadcastQueue;->DELAY_TIME:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_18

    xor-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_56

    :cond_18
    sget-boolean v2, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_25

    const-string/jumbo v2, "MiuiBroadcastQueue"

    const-string/jumbo v3, "process delay broadcast"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iput-wide v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mLastProcessBroadcastTime:J

    const/4 v2, 0x1

    invoke-super {p0, p1, v2}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(ZZ)V

    sget-boolean v2, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v2, :cond_55

    const-string/jumbo v2, "MiuiBroadcastQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "process delay broadcast cost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void

    :cond_56
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    invoke-virtual {p0}, Lcom/android/server/am/MiuiBroadcastQueue;->scheduleBroadcastsLocked()V

    goto :goto_55

    :cond_5d
    invoke-super {p0, p1}, Lcom/android/server/am/BroadcastQueue;->processNextBroadcast(Z)V

    goto :goto_55
.end method

.method public scheduleBroadcastsLocked()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    sget-boolean v0, Lcom/android/server/am/BaseMiuiBroadcastManager;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_32

    const-string/jumbo v0, "MiuiBroadcastQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Schedule broadcasts ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]: current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastQueue;->isDelay()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-wide v0, Lcom/android/server/am/MiuiBroadcastQueue;->DELAY_TIME:J

    :goto_44
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastQueue;->mBroadcastsScheduled:Z

    return-void

    :cond_4b
    const-wide/16 v0, 0x0

    goto :goto_44
.end method
