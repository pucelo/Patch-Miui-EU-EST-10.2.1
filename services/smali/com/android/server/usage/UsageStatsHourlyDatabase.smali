.class Lcom/android/server/usage/UsageStatsHourlyDatabase;
.super Ljava/lang/Object;
.source "UsageStatsHourlyDatabase.java"


# static fields
.field private static final BAK_SUFFIX:Ljava/lang/String; = ".bak"

.field private static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsageStatsHourlyDatabase"


# instance fields
.field private final mCal:Lcom/android/server/usage/UnixCalendar;

.field private final mHourlyDirs:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "hourly"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mHourlyDirs:Ljava/io/File;

    return-void
.end method

.method private indexFilesLocked()V
    .registers 11

    new-instance v1, Lcom/android/server/usage/UsageStatsHourlyDatabase$1;

    invoke-direct {v1, p0}, Lcom/android/server/usage/UsageStatsHourlyDatabase$1;-><init>(Lcom/android/server/usage/UsageStatsHourlyDatabase;)V

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    if-nez v5, :cond_2f

    new-instance v5, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v5}, Landroid/app/usage/TimeSparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    :goto_10
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mHourlyDirs:Ljava/io/File;

    invoke-virtual {v5, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_51

    const/4 v5, 0x0

    array-length v6, v4

    :goto_1a
    if-ge v5, v6, :cond_51

    aget-object v3, v4, v5

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_23
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Landroid/util/AtomicFile;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_35

    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_2f
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->clear()V

    goto :goto_10

    :catch_35
    move-exception v2

    const-string/jumbo v7, "UsageStatsHourlyDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to index hourly file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :cond_51
    return-void
.end method

.method private pruneFilesOlderThan(Ljava/io/File;J)V
    .registers 16

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_46

    array-length v8, v4

    move v6, v7

    :goto_9
    if-ge v6, v8, :cond_46

    aget-object v3, v4, v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, ".bak"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2f

    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const-string/jumbo v10, ".bak"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2f
    :try_start_2f
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsXml;->parseBeginTime(Ljava/io/File;)J
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_42

    move-result-wide v0

    :goto_33
    cmp-long v9, v0, p2

    if-gez v9, :cond_3f

    new-instance v9, Landroid/util/AtomicFile;

    invoke-direct {v9, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v9}, Landroid/util/AtomicFile;->delete()V

    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :catch_42
    move-exception v2

    const-wide/16 v0, 0x0

    goto :goto_33

    :cond_46
    return-void
.end method


# virtual methods
.method public getLatestHourlyUsageStats()Lcom/android/server/usage/IntervalStats;
    .registers 9

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v4}, Landroid/app/usage/TimeSparseArray;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2f

    move-result v2

    if-nez v2, :cond_e

    monitor-exit v5

    return-object v7

    :cond_e
    :try_start_e
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4, v6}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/AtomicFile;

    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    const/4 v4, 0x7

    invoke-static {v1, v3, v4}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_23
    .catchall {:try_start_e .. :try_end_21} :catchall_2f

    monitor-exit v5

    return-object v3

    :catch_23
    move-exception v0

    :try_start_24
    const-string/jumbo v4, "UsageStatsHourlyDatabase"

    const-string/jumbo v6, "Failed to read usage stats file"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2f

    monitor-exit v5

    return-object v7

    :catchall_2f
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public init(J)V
    .registers 10

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mHourlyDirs:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mHourlyDirs:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2d

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to create directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mHourlyDirs:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2d
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->indexFilesLocked()V

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v2

    if-gez v2, :cond_39

    return-void

    :cond_39
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v0

    move v1, v2

    :goto_40
    if-ge v1, v0, :cond_50

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v3, v1}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_50
    move v1, v2

    :goto_51
    if-ge v1, v0, :cond_5b

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v3, v1}, Landroid/app/usage/TimeSparseArray;->removeAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_5b
    return-void
.end method

.method public onTimeChanged(J)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Time changed by "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, p1

    invoke-static {v0, v1, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v11, "."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v11}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v4, :cond_94

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v11, v7}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/AtomicFile;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v11, v7}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v16

    add-long v12, v16, p1

    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-gez v11, :cond_4a

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_91

    :goto_47
    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_4a
    :try_start_4a
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_51} :catch_be
    .catchall {:try_start_4a .. :try_end_51} :catchall_91

    :goto_51
    :try_start_51
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v15, "-c"

    invoke-virtual {v11, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v15, "-c"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_7a
    new-instance v9, Ljava/io/File;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    invoke-direct {v9, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_90
    .catchall {:try_start_51 .. :try_end_90} :catchall_91

    goto :goto_47

    :catchall_91
    move-exception v11

    monitor-exit v14

    throw v11

    :cond_94
    :try_start_94
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v11}, Landroid/app/usage/TimeSparseArray;->clear()V

    const-string/jumbo v11, "hourly files deleted: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hourly files moved: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "UsageStatsHourlyDatabase"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->indexFilesLocked()V
    :try_end_bc
    .catchall {:try_start_94 .. :try_end_bc} :catchall_91

    monitor-exit v14

    return-void

    :catch_be
    move-exception v2

    goto :goto_51
.end method

.method public pruneHours(J)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    const/16 v2, -0x18

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UnixCalendar;->addHours(I)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mHourlyDirs:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->indexFilesLocked()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putUsageHourlyStats(Lcom/android/server/usage/IntervalStats;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5}, Landroid/app/usage/TimeSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/AtomicFile;

    if-nez v0, :cond_2b

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mHourlyDirs:Ljava/io/File;

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v1, v4, v5, v0}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    :cond_2b
    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsXml;->write(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_36

    monitor-exit v2

    return-void

    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public queryUsageStats(JJILcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JJI",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v10, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v10

    cmp-long v9, p3, p1

    if-gtz v9, :cond_a

    const/4 v9, 0x0

    monitor-exit v10

    return-object v9

    :cond_a
    :try_start_a
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    move-wide/from16 v0, p1

    invoke-virtual {v9, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I

    move-result v7

    if-gez v7, :cond_15

    const/4 v7, 0x0

    :cond_15
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    move-wide/from16 v0, p3

    invoke-virtual {v9, v0, v1}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrBefore(J)I
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_67

    move-result v3

    if-gez v3, :cond_22

    const/4 v9, 0x0

    monitor-exit v10

    return-object v9

    :cond_22
    :try_start_22
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v9, v3}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_67

    move-result-wide v12

    cmp-long v9, v12, p3

    if-nez v9, :cond_33

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_33

    const/4 v9, 0x0

    monitor-exit v10

    return-object v9

    :cond_33
    :try_start_33
    new-instance v8, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v8}, Lcom/android/server/usage/IntervalStats;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v5, v7

    :goto_3e
    if-gt v5, v3, :cond_6a

    iget-object v9, p0, Lcom/android/server/usage/UsageStatsHourlyDatabase;->mSortedHoursFiles:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v9, v5}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/AtomicFile;
    :try_end_48
    .catchall {:try_start_33 .. :try_end_48} :catchall_67

    :try_start_48
    move/from16 v0, p5

    invoke-static {v4, v8, v0}, Lcom/android/server/usage/UsageStatsXml;->read(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;I)V

    iget-wide v12, v8, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v9, p1, v12

    if-gez v9, :cond_59

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v8, v9, v6}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_59} :catch_5c
    .catchall {:try_start_48 .. :try_end_59} :catchall_67

    :cond_59
    :goto_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    :catch_5c
    move-exception v2

    :try_start_5d
    const-string/jumbo v9, "UsageStatsHourlyDatabase"

    const-string/jumbo v11, "Failed to read hourly stats file"

    invoke-static {v9, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_67

    goto :goto_59

    :catchall_67
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_6a
    monitor-exit v10

    return-object v6
.end method
