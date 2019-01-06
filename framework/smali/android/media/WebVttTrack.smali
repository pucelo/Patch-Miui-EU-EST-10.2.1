.class Landroid/media/WebVttTrack;
.super Landroid/media/SubtitleTrack;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttCueListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebVttTrack"


# instance fields
.field private mCurrentRunID:Ljava/lang/Long;

.field private final mExtractor:Landroid/media/UnstyledTextExtractor;

.field private final mParser:Landroid/media/WebVttParser;

.field private final mRegions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/TextTrackRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderingWidget:Landroid/media/WebVttRenderingWidget;

.field private final mTimestamps:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenizer:Landroid/media/Tokenizer;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;Landroid/media/MediaFormat;)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/media/SubtitleTrack;-><init>(Landroid/media/MediaFormat;)V

    new-instance v0, Landroid/media/WebVttParser;

    invoke-direct {v0, p0}, Landroid/media/WebVttParser;-><init>(Landroid/media/WebVttCueListener;)V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    new-instance v0, Landroid/media/UnstyledTextExtractor;

    invoke-direct {v0}, Landroid/media/UnstyledTextExtractor;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    new-instance v0, Landroid/media/Tokenizer;

    iget-object v1, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-direct {v0, v1}, Landroid/media/Tokenizer;-><init>(Landroid/media/Tokenizer$OnTokenListener;)V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    iput-object p1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    return-void
.end method


# virtual methods
.method public bridge synthetic getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .registers 2

    invoke-virtual {p0}, Landroid/media/WebVttTrack;->getRenderingWidget()Landroid/media/WebVttRenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingWidget()Landroid/media/WebVttRenderingWidget;
    .registers 2

    iget-object v0, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    return-object v0
.end method

.method public onCueParsed(Landroid/media/TextTrackCue;)V
    .registers 16

    iget-object v6, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v6

    :try_start_3
    iget-object v4, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    iget-object v5, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/TextTrackRegion;

    iput-object v4, p1, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    :cond_17
    iget-boolean v4, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v4, :cond_35

    const-string/jumbo v4, "WebVttTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adding cue "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v4}, Landroid/media/Tokenizer;->reset()V

    iget-object v5, p1, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v4, 0x0

    array-length v7, v5

    :goto_3e
    if-ge v4, v7, :cond_4a

    aget-object v2, v5, v4

    iget-object v8, p0, Landroid/media/WebVttTrack;->mTokenizer:Landroid/media/Tokenizer;

    invoke-virtual {v8, v2}, Landroid/media/Tokenizer;->tokenize(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_4a
    iget-object v4, p0, Landroid/media/WebVttTrack;->mExtractor:Landroid/media/UnstyledTextExtractor;

    invoke-virtual {v4}, Landroid/media/UnstyledTextExtractor;->getText()[[Landroid/media/TextTrackCueSpan;

    move-result-object v4

    iput-object v4, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    iget-boolean v4, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v4, :cond_74

    const-string/jumbo v4, "WebVttTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " simplified to: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/media/TextTrackCue;->appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    iget-object v7, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    const/4 v4, 0x0

    array-length v8, v7

    move v5, v4

    :goto_79
    if-ge v5, v8, :cond_b5

    aget-object v1, v7, v5

    const/4 v4, 0x0

    array-length v9, v1

    :goto_7f
    if-ge v4, v9, :cond_b1

    aget-object v3, v1, v4

    iget-wide v10, v3, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v12, p1, Landroid/media/TextTrackCue;->mStartTimeMs:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_ae

    iget-wide v10, v3, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v12, p1, Landroid/media/TextTrackCue;->mEndTimeMs:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_ae

    iget-object v10, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v12, v3, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_ae

    iget-object v10, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    iget-wide v12, v3, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_ae
    add-int/lit8 v4, v4, 0x1

    goto :goto_7f

    :cond_b1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_79

    :cond_b5
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_f5

    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, p1, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    const/4 v0, 0x0

    :goto_c8
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_e3

    iget-object v5, p1, Landroid/media/TextTrackCue;->mInnerTimesMs:[J

    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c8

    :cond_e3
    iget-object v4, p0, Landroid/media/WebVttTrack;->mTimestamps:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    :goto_e8
    iget-object v4, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/media/TextTrackCue;->mRunID:J
    :try_end_f0
    .catchall {:try_start_3 .. :try_end_f0} :catchall_f9

    monitor-exit v6

    invoke-virtual {p0, p1}, Landroid/media/WebVttTrack;->addCue(Landroid/media/SubtitleTrack$Cue;)Z

    return-void

    :cond_f5
    const/4 v4, 0x0

    :try_start_f6
    iput-object v4, p1, Landroid/media/TextTrackCue;->mInnerTimesMs:[J
    :try_end_f8
    .catchall {:try_start_f6 .. :try_end_f8} :catchall_f9

    goto :goto_e8

    :catchall_f9
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method public onData([BZJ)V
    .registers 12

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v3, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v3
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_43

    :try_start_b
    iget-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    if-eqz v2, :cond_5f

    iget-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, p3, v4

    if-eqz v2, :cond_5f

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Run #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in progress.  Cannot process run #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v2

    :try_start_41
    monitor-exit v3

    throw v2
    :try_end_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_43} :catch_43

    :catch_43
    move-exception v0

    const-string/jumbo v2, "WebVttTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subtitle data is not UTF-8 encoded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-void

    :cond_5f
    :try_start_5f
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;

    iget-object v2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {v2, v1}, Landroid/media/WebVttParser;->parse(Ljava/lang/String;)V

    if-eqz p2, :cond_7c

    invoke-virtual {p0, p3, p4}, Landroid/media/WebVttTrack;->finishedRun(J)V

    iget-object v2, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    invoke-virtual {v2}, Landroid/media/WebVttParser;->eos()V

    iget-object v2, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/WebVttTrack;->mCurrentRunID:Ljava/lang/Long;
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_40

    :cond_7c
    :try_start_7c
    monitor-exit v3
    :try_end_7d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7c .. :try_end_7d} :catch_43

    goto :goto_5e
.end method

.method public onRegionParsed(Landroid/media/TextTrackRegion;)V
    .registers 5

    iget-object v1, p0, Landroid/media/WebVttTrack;->mParser:Landroid/media/WebVttParser;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/WebVttTrack;->mRegions:Ljava/util/Map;

    iget-object v2, p1, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateView(Ljava/util/Vector;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    iget-boolean v1, p0, Landroid/media/WebVttTrack;->mVisible:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Landroid/media/WebVttTrack;->DEBUG:Z

    if-eqz v1, :cond_39

    iget-object v1, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_39

    :try_start_d
    const-string/jumbo v1, "WebVttTrack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/WebVttTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms the active cues are:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_39} :catch_43

    :cond_39
    :goto_39
    iget-object v1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    if-eqz v1, :cond_42

    iget-object v1, p0, Landroid/media/WebVttTrack;->mRenderingWidget:Landroid/media/WebVttRenderingWidget;

    invoke-virtual {v1, p1}, Landroid/media/WebVttRenderingWidget;->setActiveCues(Ljava/util/Vector;)V

    :cond_42
    return-void

    :catch_43
    move-exception v0

    const-string/jumbo v1, "WebVttTrack"

    const-string/jumbo v2, "at (illegal state) the active cues are:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method
