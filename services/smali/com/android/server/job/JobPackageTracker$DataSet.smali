.class final Lcom/android/server/job/JobPackageTracker$DataSet;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobPackageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DataSet"
.end annotation


# instance fields
.field final mEntries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/job/JobPackageTracker$PackageEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mMaxFgActive:I

.field mMaxTotalActive:I

.field final mStartClockTime:J

.field final mStartElapsedTime:J

.field final mStartUptimeTime:J

.field mSummedTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method

.method private getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .registers 6

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_14

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    if-nez v0, :cond_24

    new-instance v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$PackageEntry;-><init>()V

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-object v0
.end method


# virtual methods
.method addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .registers 16

    iget-wide v8, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    invoke-virtual {p0, p2, p3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    iput-wide v8, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    iget-object v7, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_11
    if-ltz v0, :cond_c1

    iget-object v7, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_21
    if-ltz v1, :cond_bd

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    iget-object v7, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p1, v8, v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v3

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v10, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    iget v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v10, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    iget v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v10, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    iget v8, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/2addr v7, v8

    iput v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    iget v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v7, :cond_73

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v10, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v10, p2, v10

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    :cond_73
    iget v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v7, :cond_83

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v10, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v10, p2, v10

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    :cond_83
    iget v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v7, :cond_93

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v10, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v10, p2, v10

    add-long/2addr v8, v10

    iput-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    :cond_93
    iget-object v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_9b
    if-ltz v2, :cond_b9

    iget-object v7, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v7, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    iget-object v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v9, 0x0

    invoke-virtual {v8, v5, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    iget-object v9, v4, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_9b

    :cond_b9
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_21

    :cond_bd
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_11

    :cond_c1
    iget v7, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iget v8, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le v7, v8, :cond_cb

    iget v7, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    iput v7, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    :cond_cb
    iget v7, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iget v8, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le v7, v8, :cond_d5

    iget v7, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    iput v7, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    :cond_d5
    return-void
.end method

.method decActive(ILjava/lang/String;JI)V
    .registers 13

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v1

    iget v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    iget-wide v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v4, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v4, p3, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    :cond_12
    iget v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iget-object v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p5, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, p5, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method decActiveTop(ILjava/lang/String;JI)V
    .registers 13

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v1

    iget v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    iget-wide v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v4, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v4, p3, v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    :cond_12
    iget v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iget-object v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p5, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v2, v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, p5, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method decPending(ILjava/lang/String;J)V
    .registers 12

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v4, p3, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    :cond_12
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 29

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " at "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    invoke-static {v4, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    move-wide/from16 v0, p6

    move-object/from16 v2, p1

    invoke-static {v4, v5, v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string/jumbo v4, ") over "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_5f
    if-ge v14, v12, :cond_1ba

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    const/4 v4, -0x1

    move/from16 v0, p8

    if-eq v0, v4, :cond_79

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    move/from16 v0, p8

    if-eq v0, v4, :cond_79

    :cond_76
    add-int/lit8 v14, v14, 0x1

    goto :goto_5f

    :cond_79
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/ArrayMap;

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_88
    if-ge v15, v13, :cond_76

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string/jumbo v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "   "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v8

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    const-string/jumbo v11, "pending"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v8

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    const-string/jumbo v11, "active"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTopTime(J)J

    move-result-wide v8

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    const-string/jumbo v11, "active-top"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-gtz v4, :cond_122

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v4, :cond_12a

    :cond_122
    const-string/jumbo v4, " (pending)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_12a
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v4, :cond_136

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v4, :cond_13e

    :cond_136
    const-string/jumbo v4, " (active)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_13e
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v4, :cond_14a

    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v4, :cond_152

    :cond_14a
    const-string/jumbo v4, " (active-top)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_152
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_1b6

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v16, 0x0

    :goto_170
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_1b3

    if-lez v16, :cond_186

    const-string/jumbo v4, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_186
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, "x "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_170

    :cond_1b3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_1b6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_88

    :cond_1ba
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "  Max concurrency: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " total, "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " foreground"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .registers 16

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_9
    if-ltz v0, :cond_83

    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_19
    if-ltz v1, :cond_80

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v5, :cond_29

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v5, :cond_7b

    :cond_29
    :goto_29
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p1, v6, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v2

    iput-wide p2, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iput-wide p2, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iput-wide p2, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    iput v5, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-lez v5, :cond_5a

    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    iput v10, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    :cond_5a
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v5, :cond_69

    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    iput v10, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    :cond_69
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v5, :cond_78

    iget-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iget-wide v8, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    sub-long v8, p2, v8

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    iput v10, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    :cond_78
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    :cond_7b
    iget v5, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-lez v5, :cond_78

    goto :goto_29

    :cond_80
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_83
    return-void
.end method

.method public getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_c

    return-object v2

    :cond_c
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    return-object v1
.end method

.method getTotalTime(J)J
    .registers 8

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    sub-long v0, p1, v0

    return-wide v0
.end method

.method incActive(ILjava/lang/String;J)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-nez v1, :cond_10

    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    :cond_10
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    return-void
.end method

.method incActiveTop(ILjava/lang/String;J)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-nez v1, :cond_10

    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    :cond_10
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    return-void
.end method

.method incPending(ILjava/lang/String;J)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-nez v1, :cond_10

    iput-wide p3, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    :cond_10
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    return-void
.end method

.method printDuration(Ljava/io/PrintWriter;JJILjava/lang/String;)V
    .registers 12

    long-to-float v2, p4

    long-to-float v3, p2

    div-float v0, v2, v3

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v1, v2

    if-lez v1, :cond_29

    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    if-lez p6, :cond_28

    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_28
.end method
