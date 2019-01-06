.class public abstract Landroid/media/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Landroid/media/MediaTimeProvider$OnMediaTimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$Cue;,
        Landroid/media/SubtitleTrack$CueList;,
        Landroid/media/SubtitleTrack$RenderingWidget;,
        Landroid/media/SubtitleTrack$Run;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleTrack"


# instance fields
.field public DEBUG:Z

.field protected final mActiveCues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field protected mCues:Landroid/media/SubtitleTrack$CueList;

.field private mFormat:Landroid/media/MediaFormat;

.field protected mHandler:Landroid/os/Handler;

.field private mLastTimeMs:J

.field private mLastUpdateTimeMs:J

.field private mNextScheduledTimeMs:J

.field private mRunnable:Ljava/lang/Runnable;

.field protected final mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeProvider:Landroid/media/MediaTimeProvider;

.field protected mVisible:Z


# direct methods
.method static synthetic -set0(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    iput-object p1, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .registers 6

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    iput-object p1, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    new-instance v0, Landroid/media/SubtitleTrack$CueList;

    invoke-direct {v0}, Landroid/media/SubtitleTrack$CueList;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    return-void
.end method

.method private removeRunsByEndTimeIndex(I)V
    .registers 10

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/SubtitleTrack$Run;

    :goto_9
    if-eqz v3, :cond_29

    iget-object v0, v3, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    :goto_d
    if-eqz v0, :cond_1a

    iget-object v4, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v4, v0}, Landroid/media/SubtitleTrack$CueList;->remove(Landroid/media/SubtitleTrack$Cue;)V

    iget-object v1, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    iput-object v5, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    move-object v0, v1

    goto :goto_d

    :cond_1a
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v6, v3, Landroid/media/SubtitleTrack$Run;->mRunID:J

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    iget-object v2, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    move-object v3, v2

    goto :goto_9

    :cond_29
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    return-void
.end method

.method private declared-synchronized takeTime(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized addCue(Landroid/media/SubtitleTrack$Cue;)Z
    .registers 14

    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v7, p1}, Landroid/media/SubtitleTrack$CueList;->add(Landroid/media/SubtitleTrack$Cue;)V

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_31

    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Run;

    if-nez v1, :cond_d7

    new-instance v1, Landroid/media/SubtitleTrack$Run;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Landroid/media/SubtitleTrack$Run;-><init>(Landroid/media/SubtitleTrack$Run;)V

    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v7, v8, v9, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    :cond_2b
    :goto_2b
    iget-object v7, v1, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    iput-object v7, p1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    iput-object p1, v1, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    :cond_31
    const-wide/16 v2, -0x1

    iget-object v7, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_e5

    if-eqz v7, :cond_43

    :try_start_37
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10
    :try_end_43
    .catch Ljava/lang/IllegalStateException; {:try_start_37 .. :try_end_43} :catch_118
    .catchall {:try_start_37 .. :try_end_43} :catchall_e5

    :cond_43
    :goto_43
    :try_start_43
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_95

    const-string/jumbo v7, "SubtitleTrack"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mVisible="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " >= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v7, :cond_f6

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    cmp-long v7, v8, v2

    if-gtz v7, :cond_f6

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_f6

    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_b2

    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b2
    move-object v6, p0

    move-wide v4, v2

    new-instance v7, Landroid/media/SubtitleTrack$1;

    invoke-direct {v7, p0, p0, v4, v5}, Landroid/media/SubtitleTrack$1;-><init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V

    iput-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xa

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    if-eqz v7, :cond_e8

    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_d4

    const-string/jumbo v7, "SubtitleTrack"

    const-string/jumbo v8, "scheduling update"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_43 .. :try_end_d4} :catchall_e5

    :cond_d4
    :goto_d4
    const/4 v7, 0x1

    monitor-exit p0

    return v7

    :cond_d7
    :try_start_d7
    iget-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_2b

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J
    :try_end_e3
    .catchall {:try_start_d7 .. :try_end_e3} :catchall_e5

    goto/16 :goto_2b

    :catchall_e5
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_e8
    :try_start_e8
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_d4

    const-string/jumbo v7, "SubtitleTrack"

    const-string/jumbo v8, "failed to schedule subtitle view update"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    :cond_f6
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v7, :cond_115

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_115

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_112

    iget-wide v8, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_115

    :cond_112
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V
    :try_end_115
    .catchall {:try_start_e8 .. :try_end_115} :catchall_e5

    :cond_115
    const/4 v7, 0x0

    monitor-exit p0

    return v7

    :catch_118
    move-exception v0

    goto/16 :goto_43
.end method

.method protected declared-synchronized clearActiveCues()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    if-ltz v0, :cond_10

    invoke-direct {p0, v0}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected finishedRun(J)V
    .registers 8

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1b

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    :cond_1b
    return-void
.end method

.method public final getFormat()Landroid/media/MediaFormat;
    .registers 2

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
.end method

.method public getTrackType()I
    .registers 2

    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x3

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x4

    goto :goto_7
.end method

.method public hide()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_f
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    :cond_18
    iput-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    return-void
.end method

.method protected onData(Landroid/media/SubtitleData;)V
    .registers 8

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    return-void
.end method

.method public abstract onData([BZJ)V
.end method

.method public onSeek(J)V
    .registers 8

    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "SubtitleTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSeek "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    monitor-enter p0

    const-wide/16 v2, 0x3e8

    :try_start_21
    div-long v0, p1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_34

    monitor-exit p0

    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    return-void

    :catchall_34
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onStop()V
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "SubtitleTrack"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_25

    monitor-exit p0

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, v2, v3, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTimedEvent(J)V
    .registers 8

    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "SubtitleTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTimedEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    monitor-enter p0

    const-wide/16 v2, 0x3e8

    :try_start_21
    div-long v0, p1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_34

    monitor-exit p0

    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    return-void

    :catchall_34
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected scheduleTimedEvents()V
    .registers 7

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v2, v3}, Landroid/media/SubtitleTrack$CueList;->nextTimeAfter(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_3b

    const-string/jumbo v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sched @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4e

    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    :goto_4a
    invoke-interface {v2, v0, v1, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_4d
    return-void

    :cond_4e
    const-wide/16 v0, -0x1

    goto :goto_4a
.end method

.method public setRunDiscardTimeMs(JJ)V
    .registers 10

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1d

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    if-eqz v0, :cond_1d

    iput-wide p3, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    :cond_1d
    return-void
.end method

.method public declared-synchronized setTimeProvider(Landroid/media/MediaTimeProvider;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-ne v0, p1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_10
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v1, :cond_6

    return-void

    :cond_6
    iput-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    :cond_11
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    :cond_1a
    return-void
.end method

.method protected declared-synchronized updateActiveCues(ZJ)V
    .registers 12

    monitor-enter p0

    if-nez p1, :cond_9

    :try_start_3
    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    cmp-long v3, v4, p2

    if-lez v3, :cond_c

    :cond_9
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    :cond_c
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_68

    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_54

    const-string/jumbo v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_65

    goto :goto_18

    :catchall_65
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_68
    :try_start_68
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_a2

    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_94

    const-string/jumbo v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_9b

    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    :cond_9b
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_a2
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_18

    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    goto/16 :goto_18

    :cond_ab
    :goto_ab
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_c3

    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-gtz v3, :cond_c3

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    goto :goto_ab

    :cond_c3
    iput-wide p2, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_c5
    .catchall {:try_start_68 .. :try_end_c5} :catchall_65

    monitor-exit p0

    return-void
.end method

.method public abstract updateView(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation
.end method
