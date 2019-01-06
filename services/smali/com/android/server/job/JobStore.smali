.class public final Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStore$1;,
        Lcom/android/server/job/JobStore$JobSet;,
        Lcom/android/server/job/JobStore$JobStatusFunctor;,
        Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final JOBS_FILE_VERSION:I = 0x0

.field private static final MAX_OPS_BEFORE_WRITE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobStore"

.field private static final XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final XML_TAG_ONEOFF:Ljava/lang/String; = "one-off"

.field private static final XML_TAG_PARAMS_CONSTRAINTS:Ljava/lang/String; = "constraints"

.field private static final XML_TAG_PERIODIC:Ljava/lang/String; = "periodic"

.field private static sSingleton:Lcom/android/server/job/JobStore;

.field private static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDirtyOperations:I

.field private final mIoHandler:Landroid/os/Handler;

.field final mJobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final mJobsFile:Landroid/util/AtomicFile;

.field final mLock:Ljava/lang/Object;

.field private mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

.field private mRtcGood:Z

.field private final mWriteRunnable:Ljava/lang/Runnable;

.field private final mXmlTimestamp:J


# direct methods
.method static synthetic -get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;
    .registers 2

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/job/JobStore;)Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 2

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/job/JobStore;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/util/Pair;J)Landroid/util/Pair;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/job/JobStore;->isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V
    .registers 12

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    invoke-direct {v3}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;-><init>()V

    iput-object v3, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    new-instance v3, Lcom/android/server/job/JobStore$1;

    invoke-direct {v3, p0}, Lcom/android/server/job/JobStore$1;-><init>(Lcom/android/server/job/JobStore;)V

    iput-object v3, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/job/JobStore;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v1, p3, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "job"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "jobs.xml"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    new-instance v3, Lcom/android/server/job/JobStore$JobSet;

    invoke-direct {v3}, Lcom/android/server/job/JobStore$JobSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-object v3, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_5a

    const/4 v2, 0x1

    :cond_5a
    iput-boolean v2, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-boolean v3, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V

    return-void
.end method

.method private static convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-lez v6, :cond_4e

    iget-object v6, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long v0, p1, v6

    :goto_21
    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v6, v6, v8

    if-gez v6, :cond_51

    iget-object v6, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long v2, p1, v6

    :goto_41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    :cond_4e
    const-wide/16 v0, 0x0

    goto :goto_21

    :cond_51
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_41
.end method

.method static initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;
    .registers 6

    sget-object v1, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    sput-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    :cond_1a
    sget-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-object v0

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .registers 4

    new-instance v0, Lcom/android/server/job/JobStore;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->clear()V

    return-object v0
.end method

.method private static isSyncJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    const-class v0, Lcom/android/server/content/SyncJobService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_job_JobStore_6419(JLjava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 21

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getPersistedUtcTimes()Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_34

    move-wide/from16 v0, p0

    invoke-static {v14, v0, v1}, Lcom/android/server/job/JobStore;->convertRtcBoundsToElapsed(Landroid/util/Pair;J)Landroid/util/Pair;

    move-result-object v13

    new-instance v2, Lcom/android/server/job/controllers/JobStatus;

    iget-object v3, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getLastSuccessfulRunTime()J

    move-result-wide v9

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/job/controllers/JobStatus;->getLastFailedRunTime()J

    move-result-wide v11

    const/4 v8, 0x0

    move-object/from16 v3, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIJJ)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p3 .. p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    return-void
.end method

.method private maybeWriteStatusToDiskAsync()V
    .registers 3

    iget v0, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    iget v0, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/JobStore;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_19
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    :cond_14
    return v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    return-void
.end method

.method public clockNowValidToInflate(J)Z
    .registers 6

    iget-wide v0, p0, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method public countJobsForUid(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->countJobsForUid(I)I

    move-result v0

    return v0
.end method

.method public forEachJob(ILcom/android/server/job/JobStore$JobStatusFunctor;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(ILcom/android/server/job/JobStore$JobStatusFunctor;)V

    return-void
.end method

.method public forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    return-void
.end method

.method public getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    .registers 4

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->get(II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    return-object v0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    .registers 2

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    return-object v0
.end method

.method public getRtcCorrectedJobsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;

    invoke-direct {v2, v0, v1, p1, p2}, Lcom/android/server/job/-$Lambda$uHhK2abi5qBUVZxkpfjqb2-WntE;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    return-void
.end method

.method public jobTimesInflatedValid()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    return v0
.end method

.method public readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;Z)V
    .registers 4

    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;Z)V

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    if-eqz p2, :cond_15

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    :cond_15
    return v0
.end method

.method public removeJobsOfNonUsers([I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->removeJobsOfNonUsers([I)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v0

    return v0
.end method
