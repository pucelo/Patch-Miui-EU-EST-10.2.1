.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "WebVttRenderer.java"


# static fields
.field static final ALIGNMENT_END:I = 0xca

.field static final ALIGNMENT_LEFT:I = 0xcb

.field static final ALIGNMENT_MIDDLE:I = 0xc8

.field static final ALIGNMENT_RIGHT:I = 0xcc

.field static final ALIGNMENT_START:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TTCue"

.field static final WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field static final WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field static final WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field mAlignment:I

.field mAutoLinePosition:Z

.field mId:Ljava/lang/String;

.field mLinePosition:Ljava/lang/Integer;

.field mLines:[[Landroid/media/TextTrackCueSpan;

.field mPauseOnExit:Z

.field mRegion:Landroid/media/TextTrackRegion;

.field mRegionId:Ljava/lang/String;

.field mSize:I

.field mSnapToLines:Z

.field mStrings:[Ljava/lang/String;

.field mTextPosition:I

.field mWritingDirection:I


# direct methods
.method constructor <init>()V
    .registers 4

    const/16 v2, 0x64

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    iput v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iput-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    const/16 v0, 0x32

    iput v0, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iput v2, p0, Landroid/media/TextTrackCue;->mSize:I

    const/16 v0, 0xc8

    iput v0, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iput-object v1, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    iput-object v1, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    return-void
.end method


# virtual methods
.method public appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 16

    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    if-nez v6, :cond_b

    const-string/jumbo v6, "null"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    return-object p1

    :cond_b
    const-string/jumbo v6, "["

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v8, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    const/4 v6, 0x0

    array-length v9, v8

    move v7, v6

    :goto_17
    if-ge v7, v9, :cond_76

    aget-object v5, v8, v7

    if-nez v0, :cond_23

    const-string/jumbo v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    if-nez v5, :cond_30

    const-string/jumbo v6, "null"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b
    const/4 v0, 0x0

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_17

    :cond_30
    const-string/jumbo v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    array-length v10, v5

    :goto_3b
    if-ge v6, v10, :cond_6f

    aget-object v4, v5, v6

    if-nez v1, :cond_47

    const-string/jumbo v11, " "

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    iget-wide v12, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v11, v12, v2

    if-eqz v11, :cond_66

    const-string/jumbo v11, "<"

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v4, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    :cond_66
    iget-object v11, v4, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_6f
    const-string/jumbo v6, "\""

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_76
    const-string/jumbo v6, "]"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 8

    iget-object v2, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    if-nez v2, :cond_b

    const-string/jumbo v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    return-object p1

    :cond_b
    const-string/jumbo v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_16
    if-ge v2, v4, :cond_3e

    aget-object v1, v3, v2

    if-nez v0, :cond_22

    const-string/jumbo v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    if-nez v1, :cond_2e

    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2a
    const/4 v0, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2e
    const-string/jumbo v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_3e
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v7, 0x0

    instance-of v5, p1, Landroid/media/TextTrackCue;

    if-nez v5, :cond_6

    return v7

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v5, 0x1

    return v5

    :cond_a
    :try_start_a
    move-object v0, p1

    check-cast v0, Landroid/media/TextTrackCue;

    move-object v1, v0

    iget-object v5, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    if-ne v5, v6, :cond_88

    iget v5, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    iget v6, v1, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-ne v5, v6, :cond_88

    iget-object v5, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    if-ne v5, v6, :cond_88

    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    iget-boolean v6, v1, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-ne v5, v6, :cond_88

    iget-boolean v5, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-nez v5, :cond_54

    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-eqz v5, :cond_4c

    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    iget-object v6, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    :cond_4c
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v5, :cond_88

    iget-object v5, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v5, :cond_88

    :cond_54
    iget v5, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iget v6, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    if-ne v5, v6, :cond_88

    iget v5, p0, Landroid/media/TextTrackCue;->mSize:I

    iget v6, v1, Landroid/media/TextTrackCue;->mSize:I

    if-ne v5, v6, :cond_88

    iget v5, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iget v6, v1, Landroid/media/TextTrackCue;->mAlignment:I

    if-ne v5, v6, :cond_88

    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v5, v5

    iget-object v6, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v6, v6

    if-ne v5, v6, :cond_86

    const/4 v4, 0x1

    :goto_6f
    if-eqz v4, :cond_8d

    const/4 v3, 0x0

    :goto_72
    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v5, v5

    if-ge v3, v5, :cond_8d

    iget-object v5, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v5, v5, v3

    iget-object v6, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v6, v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_82
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_a .. :try_end_82} :catch_8e

    move-result v5

    if-nez v5, :cond_8a

    return v7

    :cond_86
    const/4 v4, 0x0

    goto :goto_6f

    :cond_88
    const/4 v4, 0x0

    goto :goto_6f

    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    :cond_8d
    return v4

    :catch_8e
    move-exception v2

    return v7
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Landroid/media/TextTrackCue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTime(J)V
    .registers 16

    const/4 v3, 0x0

    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v7, v6

    move v5, v3

    :goto_5
    if-ge v5, v7, :cond_22

    aget-object v0, v6, v5

    array-length v8, v0

    move v4, v3

    :goto_b
    if-ge v4, v8, :cond_1e

    aget-object v1, v0, v4

    iget-wide v10, v1, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v2, p1, v10

    if-ltz v2, :cond_1c

    const/4 v2, 0x1

    :goto_16
    iput-boolean v2, v1, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b

    :cond_1c
    move v2, v3

    goto :goto_16

    :cond_1e
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_5

    :cond_22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " {id:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", pauseOnExit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_bd

    const-string/jumbo v1, "horizontal"

    :goto_4a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", regionId:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\", snapToLines:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", linePosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-eqz v1, :cond_d7

    const-string/jumbo v1, "auto"

    :goto_76
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", textPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/TextTrackCue;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", alignment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xca

    if-ne v1, v3, :cond_da

    const-string/jumbo v1, "end"

    :goto_a4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_bd
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x66

    if-ne v1, v3, :cond_c7

    const-string/jumbo v1, "vertical_lr"

    goto :goto_4a

    :cond_c7
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x65

    if-ne v1, v3, :cond_d2

    const-string/jumbo v1, "vertical_rl"

    goto/16 :goto_4a

    :cond_d2
    const-string/jumbo v1, "INVALID"

    goto/16 :goto_4a

    :cond_d7
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto :goto_76

    :cond_da
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcb

    if-ne v1, v3, :cond_e4

    const-string/jumbo v1, "left"

    goto :goto_a4

    :cond_e4
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_ee

    const-string/jumbo v1, "middle"

    goto :goto_a4

    :cond_ee
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcc

    if-ne v1, v3, :cond_f8

    const-string/jumbo v1, "right"

    goto :goto_a4

    :cond_f8
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc9

    if-ne v1, v3, :cond_102

    const-string/jumbo v1, "start"

    goto :goto_a4

    :cond_102
    const-string/jumbo v1, "INVALID"

    goto :goto_a4
.end method
