.class public Lcom/android/server/usage/UsageStatsHourlyHelper;
.super Ljava/lang/Object;
.source "UsageStatsHourlyHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsageStatsHourlyHelper"

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHourlyDatabase:Lcom/android/server/usage/UsageStatsHourlyDatabase;

.field private final mHourlyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private mHourlyStats:Lcom/android/server/usage/IntervalStats;

.field private final mLogPrefix:Ljava/lang/String;

.field private mStatsChanged:Z

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mStatsChanged:Z

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/usage/UsageStatsHourlyDatabase;

    invoke-direct {v0, p2}, Lcom/android/server/usage/UsageStatsHourlyDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyDatabase:Lcom/android/server/usage/UsageStatsHourlyDatabase;

    iput p3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mUserId:I

    new-instance v0, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mLogPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public init(J)V
    .registers 12

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyDatabase:Lcom/android/server/usage/UsageStatsHourlyDatabase;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->init(J)V

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyDatabase:Lcom/android/server/usage/UsageStatsHourlyDatabase;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->getLatestHourlyUsageStats()Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    if-nez v3, :cond_45

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsHourlyHelper;->loadActiveHourlyStats(J)V

    :goto_15
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v1, :cond_49

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    iget v3, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_35

    iget v3, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_42

    :cond_35
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v4, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-wide v6, v5, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v6, v7, v5}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_45
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsHourlyHelper;->updateRolloverHourlyDeadline()V

    goto :goto_15

    :cond_49
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-wide v4, v4, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    return-void
.end method

.method public loadActiveHourlyStats(J)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyDatabase:Lcom/android/server/usage/UsageStatsHourlyDatabase;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->getLatestHourlyUsageStats()Lcom/android/server/usage/IntervalStats;

    move-result-object v0

    if-eqz v0, :cond_25

    const-wide/16 v2, 0x1f4

    sub-long v2, p1, v2

    iget-wide v4, v0, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_25

    iget-wide v2, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    cmp-long v1, p1, v2

    if-gez v1, :cond_25

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    :goto_1e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mStatsChanged:Z

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsHourlyHelper;->updateRolloverHourlyDeadline()V

    return-void

    :cond_25
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iput-wide p1, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    goto :goto_1e
.end method

.method public notifyHourlyStatsChanged()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mStatsChanged:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mStatsChanged:Z

    :cond_7
    return-void
.end method

.method public onTimeChanged(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyDatabase:Lcom/android/server/usage/UsageStatsHourlyDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->onTimeChanged(J)V

    return-void
.end method

.method public persistActiveHourlyStats()V
    .registers 5

    iget-boolean v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mStatsChanged:Z

    if-eqz v1, :cond_2a

    const-string/jumbo v1, "UsageStatsHourlyHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Flushing usage hourly stats to disk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_20
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyDatabase:Lcom/android/server/usage/UsageStatsHourlyDatabase;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->putUsageHourlyStats(Lcom/android/server/usage/IntervalStats;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mStatsChanged:Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const-string/jumbo v1, "UsageStatsHourlyHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Failed to persist hourly stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a
.end method

.method public queryStats(JJILcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 16
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

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_a

    return-object v6

    :cond_a
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyDatabase:Lcom/android/server/usage/UsageStatsHourlyDatabase;

    move-wide v2, p1

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->queryUsageStats(JJILcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_38

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v1, p3, v2

    if-lez v1, :cond_38

    if-nez v0, :cond_32

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_32
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x1

    invoke-interface {p6, v1, v2, v0}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)V

    :cond_38
    return-object v0
.end method

.method public reportHourlyEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 9

    const/4 v6, 0x5

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v4}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_12

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usage/UsageStatsHourlyHelper;->rolloverHourlyStats(J)V

    :cond_12
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v2, v6, :cond_26

    iget-object v2, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_26

    iget-object v2, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v1}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_26
    iget-object v2, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-nez v2, :cond_31

    new-instance v2, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v2}, Landroid/app/usage/TimeSparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    :cond_31
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3d

    iget-object v2, v0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v2, v4, v5, p1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    :cond_3d
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v2, v6, :cond_47

    iget-wide v2, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    :cond_46
    :goto_46
    return-void

    :cond_47
    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_46

    iget v2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v3, 0x67

    if-eq v2, v3, :cond_46

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v3, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    goto :goto_46
.end method

.method public rolloverHourlyStats(J)V
    .registers 28

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-string/jumbo v13, "UsageStatsHourlyHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mLogPrefix:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "Rolling over hourly usage stats"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v12, v13, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v13, v13, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v8, 0x0

    :goto_3c
    if-ge v8, v10, :cond_86

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v13, v13, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageStats;

    iget v13, v11, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_5a

    iget v13, v11, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/16 v18, 0x65

    move/from16 v0, v18

    if-ne v13, v0, :cond_83

    :cond_5a
    iget-object v13, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-object v0, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x1

    sub-long v20, v20, v22

    const/16 v19, 0x64

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsHourlyHelper;->notifyHourlyStatsChanged()V

    :cond_83
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    :cond_86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v13, v0, v1, v2}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsHourlyHelper;->persistActiveHourlyStats()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyDatabase:Lcom/android/server/usage/UsageStatsHourlyDatabase;

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Lcom/android/server/usage/UsageStatsHourlyDatabase;->pruneHours(J)V

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/UsageStatsHourlyHelper;->loadActiveHourlyStats(J)V

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_b5
    if-ge v8, v6, :cond_db

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-wide v4, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    const/16 v18, 0x65

    move/from16 v0, v18

    invoke-virtual {v13, v9, v4, v5, v0}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;JI)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    invoke-virtual {v13, v12, v4, v5}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsHourlyHelper;->notifyHourlyStatsChanged()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_b5

    :cond_db
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsHourlyHelper;->persistActiveHourlyStats()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v16, v18, v14

    const-string/jumbo v13, "UsageStatsHourlyHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mLogPrefix:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "Rolling over usage hourly stats complete. Took "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " milliseconds"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setStatsChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mStatsChanged:Z

    return-void
.end method

.method public updateRolloverHourlyDeadline()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyStats:Lcom/android/server/usage/IntervalStats;

    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addHours(I)V

    const-string/jumbo v0, "UsageStatsHourlyHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Rollover hours scheduled @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/usage/UsageStatsHourlyHelper;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsHourlyHelper;->mHourlyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
