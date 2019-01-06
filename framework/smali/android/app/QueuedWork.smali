.class public Landroid/app/QueuedWork;
.super Ljava/lang/Object;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/QueuedWork$QueuedWorkHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAY:J = 0x64L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_WAIT_TIME_MILLIS:J = 0x200L

.field private static final QUEUEDWORK_WAIT_TIMEOUT:I = 0x2710

.field private static mNumWaits:I

.field private static final mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sCanDelay:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sFinishers:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sProcessingWork:Ljava/lang/Object;

.field private static final sWork:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Z)Z
    .registers 2

    invoke-static {p0}, Landroid/app/QueuedWork;->processPendingWork(Z)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/app/QueuedWork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput-object v0, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/QueuedWork;->sCanDelay:Z

    new-instance v0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;-><init>(I)V

    sput-object v0, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    const/4 v0, 0x0

    sput v0, Landroid/app/QueuedWork;->mNumWaits:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFinisher(Ljava/lang/Runnable;)V
    .registers 3

    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getHandler()Landroid/os/Handler;
    .registers 4

    sget-object v2, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1e

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "queued-work-looper"

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/app/QueuedWork$QueuedWorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/QueuedWork$QueuedWorkHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;

    :cond_1e
    sget-object v1, Landroid/app/QueuedWork;->sHandler:Landroid/os/Handler;
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    monitor-exit v2

    return-object v1

    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static hasPendingWork()Z
    .registers 2

    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit v1

    return v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static processPendingWork(Z)Z
    .registers 15

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v9, Landroid/app/QueuedWork;->sProcessingWork:Ljava/lang/Object;

    monitor-enter v9

    :try_start_c
    sget-object v10, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_8d

    :try_start_f
    sget-object v8, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    sget-object v8, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_8a

    :try_start_24
    monitor-exit v10

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_90

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    if-nez p0, :cond_2f

    add-int/lit8 v7, v7, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v2

    const-wide/16 v10, 0x2710

    cmp-long v8, v0, v10

    if-lez v8, :cond_2f

    sget-object v8, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "wait to finish, totalCount= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", workNdx="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", took too long "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_24 .. :try_end_88} :catchall_8d

    monitor-exit v9

    return v13

    :catchall_8a
    move-exception v8

    :try_start_8b
    monitor-exit v10

    throw v8
    :try_end_8d
    .catchall {:try_start_8b .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_90
    monitor-exit v9

    return v12
.end method

.method public static queue(Ljava/lang/Runnable;Z)V
    .registers 8

    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v2, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    sget-object v1, Landroid/app/QueuedWork;->sWork:Ljava/util/LinkedList;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1a

    sget-boolean v1, Landroid/app/QueuedWork;->sCanDelay:Z

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1f

    :goto_18
    monitor-exit v2

    return-void

    :cond_1a
    const/4 v1, 0x1

    :try_start_1b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_18

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static removeFinisher(Ljava/lang/Runnable;)V
    .registers 3

    sget-object v1, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static waitToFinish()V
    .registers 14

    const/4 v11, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/QueuedWork;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v10, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v5, 0x1

    :try_start_f
    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_19
    const/4 v5, 0x0

    sput-boolean v5, Landroid/app/QueuedWork;->sCanDelay:Z
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_47

    monitor-exit v10

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_22
    invoke-static {v5}, Landroid/app/QueuedWork;->processPendingWork(Z)Z
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_4a

    move-result v3

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_29
    if-eqz v3, :cond_56

    :try_start_2b
    sget-object v10, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_52

    :try_start_2e
    sget-object v5, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_4f

    :try_start_33
    monitor-exit v10
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_52

    :cond_34
    sput-boolean v11, Landroid/app/QueuedWork;->sCanDelay:Z

    sget-object v10, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_8f

    move-result-wide v12

    sub-long v8, v12, v6

    const-wide/16 v12, 0x0

    cmp-long v5, v8, v12

    if-gtz v5, :cond_6b

    :cond_45
    :goto_45
    monitor-exit v10

    return-void

    :catchall_47
    move-exception v5

    monitor-exit v10

    throw v5

    :catchall_4a
    move-exception v5

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5

    :catchall_4f
    move-exception v5

    :try_start_50
    monitor-exit v10

    throw v5
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v5

    sput-boolean v11, Landroid/app/QueuedWork;->sCanDelay:Z

    throw v5

    :cond_56
    :try_start_56
    sget-object v10, Landroid/app/QueuedWork;->sLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_52

    :try_start_59
    sget-object v5, Landroid/app/QueuedWork;->sFinishers:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_61
    .catchall {:try_start_59 .. :try_end_61} :catchall_68

    :try_start_61
    monitor-exit v10

    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_29

    :catchall_68
    move-exception v5

    monitor-exit v10

    throw v5
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_52

    :cond_6b
    :try_start_6b
    sget-object v5, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->intValue()I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->add(I)V

    sget v5, Landroid/app/QueuedWork;->mNumWaits:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Landroid/app/QueuedWork;->mNumWaits:I

    sget v5, Landroid/app/QueuedWork;->mNumWaits:I

    rem-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_92

    :goto_84
    sget-object v5, Landroid/app/QueuedWork;->mWaitTimes:Lcom/android/internal/util/ExponentiallyBucketedHistogram;

    sget-object v11, Landroid/app/QueuedWork;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "waited: "

    invoke-virtual {v5, v11, v12}, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_8e
    .catchall {:try_start_6b .. :try_end_8e} :catchall_8f

    goto :goto_45

    :catchall_8f
    move-exception v5

    monitor-exit v10

    throw v5

    :cond_92
    const-wide/16 v12, 0x200

    cmp-long v5, v8, v12

    if-lez v5, :cond_45

    goto :goto_84
.end method
