.class Landroid/media/MediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final NOTIFY:I = 0x1

.field private static final NOTIFY_SEEK:I = 0x3

.field private static final NOTIFY_STOP:I = 0x2

.field private static final NOTIFY_TIME:I = 0x0

.field private static final NOTIFY_TRACK_DATA:I = 0x4

.field private static final REFRESH_AND_NOTIFY_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MTP"

.field private static final TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public DEBUG:Z

.field private mBuffering:Z

.field private mEventHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastNanoTime:J

.field private mLastReportedTime:J

.field private mLastTimeUs:J

.field private mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private mPaused:Z

.field private mPausing:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRefresh:Z

.field private mSeeking:Z

.field private mStopped:Z

.field private mTimeAdjustment:J

.field private mTimes:[J


# direct methods
.method static synthetic -get0(Landroid/media/MediaPlayer$TimeProvider;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/MediaPlayer$TimeProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/MediaPlayer$TimeProvider;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/media/MediaPlayer$TimeProvider;Landroid/util/Pair;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .registers 10

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_19
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_52

    :goto_1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_3e

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_3e

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "MediaPlayerMTPEventThread"

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    :cond_3e
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    new-array v2, v5, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    new-array v2, v5, [J

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    return-void

    :catch_52
    move-exception v0

    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    goto :goto_1c
.end method

.method private getEstimatedTime(JZ)J
    .registers 15

    const-wide/16 v8, 0x0

    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_10

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    :cond_d
    :goto_d
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    return-wide v4

    :cond_10
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_d

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    const-wide/16 v6, 0x2

    div-long v6, v2, v6

    sub-long v0, v4, v6

    cmp-long v4, v0, v8

    if-gtz v4, :cond_32

    iput-wide v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    goto :goto_d

    :cond_32
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    goto :goto_d
.end method

.method private declared-synchronized notifySeek()V
    .registers 9

    const/4 v4, 0x0

    monitor-enter p0

    const/4 v5, 0x0

    :try_start_3
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_50

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_7
    invoke-virtual {p0, v5, v6}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    iget-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v5, :cond_29

    const-string/jumbo v5, "MTP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSeekComplete at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v6, v5

    :goto_2c
    if-ge v4, v6, :cond_32

    aget-object v1, v5, v4
    :try_end_30
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_30} :catch_3a
    .catchall {:try_start_7 .. :try_end_30} :catchall_50

    if-nez v1, :cond_34

    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :cond_34
    :try_start_34
    invoke-interface {v1, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_37
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_37} :catch_3a
    .catchall {:try_start_34 .. :try_end_37} :catchall_50

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :catch_3a
    move-exception v0

    :try_start_3b
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v4, :cond_48

    const-string/jumbo v4, "MTP"

    const-string/jumbo v5, "onSeekComplete but no player"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_4f
    .catchall {:try_start_3b .. :try_end_4f} :catchall_50

    goto :goto_32

    :catchall_50
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized notifyStop()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_5
    if-ge v1, v3, :cond_b

    aget-object v0, v2, v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    if-nez v0, :cond_d

    :cond_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-interface {v0}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_13

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized notifyTimedEvent(Z)V
    .registers 24

    monitor-enter p0

    const/4 v15, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_9} :catch_13
    .catchall {:try_start_2 .. :try_end_9} :catchall_10a

    move-result-wide v12

    :goto_a
    move-wide v10, v12

    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_10a

    if-eqz v15, :cond_28

    monitor-exit p0

    return-void

    :catch_13
    move-exception v5

    const/4 v15, 0x1

    :try_start_15
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v12

    goto :goto_a

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v15, :cond_9a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "notifyTimedEvent("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, " -> "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v18, ") from {"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    move-object/from16 v18, v0

    const/4 v15, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    :goto_68
    move/from16 v0, v19

    if-ge v15, v0, :cond_88

    aget-wide v16, v18, v15

    const-wide/16 v20, -0x1

    cmp-long v20, v16, v20

    if-nez v20, :cond_77

    :goto_74
    add-int/lit8 v15, v15, 0x1

    goto :goto_68

    :cond_77
    if-nez v6, :cond_81

    const-string/jumbo v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_81
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_74

    :cond_88
    const-string/jumbo v15, "}"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v15, "MTP"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v7, 0x0

    :goto_a0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v15, v15

    if-ge v7, v15, :cond_af

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v15, v15, v7

    if-nez v15, :cond_10d

    :cond_af
    cmp-long v15, v10, v12

    if-lez v15, :cond_162

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_162

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v15, :cond_ec

    const-string/jumbo v15, "MTP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "scheduling for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " and "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    sub-long v18, v10, v12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v15, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    :goto_f6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_fa
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    invoke-interface {v8, v12, v13}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_109
    .catchall {:try_start_15 .. :try_end_109} :catchall_10a

    goto :goto_fa

    :catchall_10a
    move-exception v15

    monitor-exit p0

    throw v15

    :cond_10d
    :try_start_10d
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v18, v15, v7

    const-wide/16 v20, -0x1

    cmp-long v15, v18, v20

    if-gtz v15, :cond_11c

    :cond_119
    :goto_119
    add-int/lit8 v7, v7, 0x1

    goto :goto_a0

    :cond_11c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v18, v15, v7

    const-wide/16 v20, 0x3e8

    add-long v20, v20, v12

    cmp-long v15, v18, v20

    if-gtz v15, :cond_14d

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v15, v15, v7

    invoke-virtual {v4, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v15, :cond_144

    const-string/jumbo v15, "MTP"

    const-string/jumbo v18, "removed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v18, -0x1

    aput-wide v18, v15, v7

    goto :goto_119

    :cond_14d
    cmp-long v15, v10, v12

    if-eqz v15, :cond_15b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v18, v15, v7

    cmp-long v15, v18, v10

    if-gez v15, :cond_119

    :cond_15b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    aget-wide v10, v15, v7

    goto :goto_119

    :cond_162
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_16d
    .catchall {:try_start_10d .. :try_end_16d} :catchall_10a

    goto :goto_f6

    :cond_16e
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized notifyTrackData(Landroid/util/Pair;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/media/SubtitleTrack;",
            "[B>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/media/SubtitleTrack;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .registers 8

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    if-ge v0, v3, :cond_13

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-eq v3, p1, :cond_13

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-nez v3, :cond_45

    :cond_13
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    if-lt v0, v3, :cond_34

    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [J

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    iput-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    :cond_34
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-nez v3, :cond_44

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v3, v0

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v0

    :cond_44
    return v0

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private scheduleNotification(IJ)V
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    if-eqz v1, :cond_b

    if-eqz p1, :cond_a

    if-ne p1, v4, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_34

    const-string/jumbo v1, "MTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleNotification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-ge v0, v1, :cond_40

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_48

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v4, -0x1

    aput-wide v4, v1, v2

    :cond_40
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_51

    monitor-exit p0

    return-void

    :cond_48
    :try_start_48
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_51

    if-eqz v1, :cond_40

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catchall_51
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public close()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_12
    return-void
.end method

.method protected finalize()V
    .registers 2

    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_9
    return-void
.end method

.method public getCurrentTimeUs(ZZ)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_e

    xor-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_e

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_c8

    monitor-exit p0

    return-wide v4

    :cond_e
    :try_start_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    if-nez p1, :cond_20

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_c8

    const-wide v6, 0x12a05f200L

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-ltz v4, :cond_8b

    :cond_20
    :try_start_20
    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_36

    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    :cond_36
    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_63

    const-string/jumbo v4, "MTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v1, :cond_91

    const-string/jumbo v1, "paused"

    :goto_4b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_63} :catch_95
    .catchall {:try_start_20 .. :try_end_63} :catchall_c8

    :cond_63
    :try_start_63
    iput-wide v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    if-eqz p2, :cond_cb

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_cb

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    const-wide/32 v6, 0xf4240

    cmp-long v1, v4, v6

    if-lez v1, :cond_8b

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    const-wide/16 v4, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v4, v5}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    :cond_8b
    :goto_8b
    invoke-direct {p0, v2, v3, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J
    :try_end_8e
    .catchall {:try_start_63 .. :try_end_8e} :catchall_c8

    move-result-wide v4

    monitor-exit p0

    return-wide v4

    :cond_91
    :try_start_91
    const-string/jumbo v1, "playing"
    :try_end_94
    .catch Ljava/lang/IllegalStateException; {:try_start_91 .. :try_end_94} :catch_95
    .catchall {:try_start_91 .. :try_end_94} :catchall_c8

    goto :goto_4b

    :catch_95
    move-exception v0

    :try_start_96
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    if-eqz v1, :cond_c7

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    invoke-direct {p0, v2, v3, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_c3

    const-string/jumbo v1, "MTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "illegal state, but pausing: estimating at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c3
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J
    :try_end_c5
    .catchall {:try_start_96 .. :try_end_c5} :catchall_c8

    monitor-exit p0

    return-wide v4

    :cond_c7
    :try_start_c7
    throw v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c8

    :catchall_c8
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_cb
    const-wide/16 v4, 0x0

    :try_start_cd
    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J
    :try_end_cf
    .catchall {:try_start_cd .. :try_end_cf} :catchall_c8

    goto :goto_8b
.end method

.method public notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBuffering(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBuffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onNewPlayer()V
    .registers 4

    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_15

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_16

    monitor-exit p0

    :cond_15
    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPaused(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_3d

    :goto_2f
    monitor-exit p0

    return-void

    :cond_31
    :try_start_31
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3d

    goto :goto_2f

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStopped()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "MTP"

    const-string/jumbo v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mBuffering:Z

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_e

    const-string/jumbo v1, "MTP"

    const-string/jumbo v2, "scheduleUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method
