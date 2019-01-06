.class public final Lcom/android/server/job/JobPackageTracker;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobPackageTracker$DataSet;,
        Lcom/android/server/job/JobPackageTracker$PackageEntry;
    }
.end annotation


# static fields
.field static final BATCHING_TIME:J = 0x1b7740L

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field public static final EVENT_CMD_MASK:I = 0xff

.field public static final EVENT_NULL:I = 0x0

.field public static final EVENT_START_JOB:I = 0x1

.field public static final EVENT_START_PERIODIC_JOB:I = 0x3

.field public static final EVENT_STOP_JOB:I = 0x2

.field public static final EVENT_STOP_PERIODIC_JOB:I = 0x4

.field public static final EVENT_STOP_REASON_MASK:I = 0xff00

.field public static final EVENT_STOP_REASON_SHIFT:I = 0x8

.field static final NUM_HISTORY:I = 0x5


# instance fields
.field mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

.field private final mEventCmds:[I

.field private final mEventIndices:Lcom/android/internal/util/RingBufferIndices;

.field private final mEventJobIds:[I

.field private final mEventTags:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private final mEventUids:[I

.field mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v1, 0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/RingBufferIndices;

    invoke-direct {v0, v1}, Lcom/android/internal/util/RingBufferIndices;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/job/JobPackageTracker$DataSet;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    return-void
.end method


# virtual methods
.method public addEvent(IILjava/lang/String;II)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBufferIndices;->add()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    shl-int/lit8 v2, p5, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, p1

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aput p2, v1, v0

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aput-object p3, v1, v0

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aput p4, v1, v0

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 15

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v1

    if-eqz v0, :cond_43

    new-instance v10, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v1

    invoke-direct {v10, v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v1

    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    :goto_1f
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    const/4 v9, 0x1

    :goto_25
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v0, v0

    if-ge v9, v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v9

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v9

    const-string/jumbo v2, "Historical stats"

    move-object v1, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_40
    add-int/lit8 v9, v9, 0x1

    goto :goto_25

    :cond_43
    new-instance v10, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v10, v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    goto :goto_1f

    :cond_4b
    const-string/jumbo v2, "Current stats"

    move-object v0, v10

    move-object v1, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    return-void
.end method

.method public dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z
    .registers 15

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBufferIndices;->size()I

    move-result v6

    if-gtz v6, :cond_a

    return v9

    :cond_a
    const-string/jumbo v8, "  Job history:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v6, :cond_a5

    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v8, v1}, Lcom/android/internal/util/RingBufferIndices;->indexOf(I)I

    move-result v2

    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v7, v8, v2

    const/4 v8, -0x1

    if-eq p3, v8, :cond_2d

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-eq p3, v8, :cond_2d

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2d
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v8, v8, v2

    and-int/lit16 v0, v8, 0xff

    if-eqz v0, :cond_2a

    packed-switch v0, :pswitch_data_a8

    const-string/jumbo v3, "     ??"

    :goto_3b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v8, v8, v2

    sub-long/2addr v8, v4

    const/16 v10, 0x13

    invoke-static {v8, v9, p1, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    const-string/jumbo v8, " "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, ": #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v8, "/"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v8, " "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v8, 0x2

    if-eq v0, v8, :cond_7a

    const/4 v8, 0x4

    if-ne v0, v8, :cond_91

    :cond_7a
    const-string/jumbo v8, " "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v8, v8, v2

    const v9, 0xff00

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x8

    invoke-static {v8}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_91
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2a

    :pswitch_95
    const-string/jumbo v3, "  START"

    goto :goto_3b

    :pswitch_99
    const-string/jumbo v3, "   STOP"

    goto :goto_3b

    :pswitch_9d
    const-string/jumbo v3, "START-P"

    goto :goto_3b

    :pswitch_a1
    const-string/jumbo v3, " STOP-P"

    goto :goto_3b

    :cond_a5
    const/4 v8, 0x1

    return v8

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_95
        :pswitch_99
        :pswitch_9d
        :pswitch_a1
    .end packed-switch
.end method

.method public getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F
    .registers 16

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v10, v7, v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_24

    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10, v7, v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v1

    :goto_1e
    if-nez v0, :cond_26

    if-nez v1, :cond_26

    const/4 v10, 0x0

    return v10

    :cond_24
    const/4 v1, 0x0

    goto :goto_1e

    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_3b

    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v10

    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    const-wide/16 v12, 0x0

    add-long v8, v12, v10

    :cond_3b
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v10, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v4

    if-eqz v1, :cond_57

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v10

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v10

    add-long/2addr v4, v10

    :cond_57
    long-to-float v10, v8

    long-to-float v11, v4

    div-float/2addr v10, v11

    return v10
.end method

.method public noteActive(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    invoke-virtual {p0, v6, v7}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_39

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActiveTop(ILjava/lang/String;J)V

    :goto_1c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v1, 0x3

    :goto_27
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;II)V

    return-void

    :cond_39
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActive(ILjava/lang/String;J)V

    goto :goto_1c

    :cond_47
    const/4 v1, 0x1

    goto :goto_27
.end method

.method public noteConcurrency(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le p1, v0, :cond_a

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput p1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    :cond_a
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le p2, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput p2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    :cond_14
    return-void
.end method

.method public noteInactive(Lcom/android/server/job/controllers/JobStatus;I)V
    .registers 15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_38

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActiveTop(ILjava/lang/String;JI)V

    :goto_18
    invoke-virtual {p0, v4, v5}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v7, 0x2

    :goto_26
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v10

    move-object v6, p0

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;II)V

    return-void

    :cond_38
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActive(ILjava/lang/String;JI)V

    goto :goto_18

    :cond_47
    const/4 v7, 0x4

    goto :goto_26
.end method

.method public noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->decPending(ILjava/lang/String;J)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    return-void
.end method

.method public notePending(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incPending(ILjava/lang/String;J)V

    return-void
.end method

.method rebatchIfNeeded(J)V
    .registers 12

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    cmp-long v1, v2, v4

    if-lez v1, :cond_2f

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    new-instance v1, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v1}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    invoke-static {v1, v7, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aput-object v0, v1, v7

    :cond_2f
    return-void
.end method
