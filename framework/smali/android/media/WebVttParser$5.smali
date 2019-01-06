.class Landroid/media/WebVttParser$5;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/WebVttParser$Phase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Landroid/media/WebVttParser;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/media/WebVttParser$5;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/media/WebVttParser$5;->-assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .registers 2

    iput-object p1, p0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .registers 20

    const-string/jumbo v12, "-->"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set0(Landroid/media/WebVttParser;Landroid/media/TextTrackCue;)Landroid/media/TextTrackCue;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v13}, Landroid/media/WebVttParser;->-get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    return-void

    :cond_23
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v12, v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "^\\s+"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\\s+"

    const-string/jumbo v14, " "

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v12, 0x20

    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_9b

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_57
    if-lez v9, :cond_9d

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_5f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v10}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v12, Landroid/media/TextTrackCue;->mStartTimeMs:J

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    invoke-static {v5}, Landroid/media/WebVttParser;->parseTimestampMs(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v12, Landroid/media/TextTrackCue;->mEndTimeMs:J

    const-string/jumbo v12, " +"

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    array-length v14, v13

    :goto_84
    if-ge v12, v14, :cond_29e

    aget-object v8, v13, v12

    const/16 v15, 0x3a

    invoke-virtual {v8, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_98

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ne v3, v15, :cond_a1

    :cond_98
    :goto_98
    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    :cond_9b
    move-object v5, v7

    goto :goto_57

    :cond_9d
    const-string/jumbo v7, ""

    goto :goto_5f

    :cond_a1
    const/4 v15, 0x0

    invoke-virtual {v8, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v15, v3, 0x1

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v15, "region"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    iput-object v11, v15, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    goto :goto_98

    :cond_c0
    const-string/jumbo v15, "vertical"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10b

    const-string/jumbo v15, "rl"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x65

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_98

    :cond_e1
    const-string/jumbo v15, "lr"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x66

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mWritingDirection:I

    goto :goto_98

    :cond_f9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    const-string/jumbo v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    :cond_10b
    const-string/jumbo v15, "line"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1a7

    :try_start_114
    sget-boolean v15, Landroid/media/WebVttParser$5;->-assertionsDisabled:Z

    if-nez v15, :cond_13a

    const/16 v15, 0x20

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_13a

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15
    :try_end_126
    .catch Ljava/lang/NumberFormatException; {:try_start_114 .. :try_end_126} :catch_126

    :catch_126
    move-exception v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    const-string/jumbo v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_98

    :cond_13a
    :try_start_13a
    const-string/jumbo v15, "%"

    invoke-virtual {v11, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_167

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/media/TextTrackCue;->mSnapToLines:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto/16 :goto_98

    :cond_167
    const-string/jumbo v15, ".*[^0-9].*"

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_183

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    const-string/jumbo v17, "contains an invalid character"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_98

    :cond_183
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Landroid/media/TextTrackCue;->mSnapToLines:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;
    :try_end_1a5
    .catch Ljava/lang/NumberFormatException; {:try_start_13a .. :try_end_1a5} :catch_126

    goto/16 :goto_98

    :cond_1a7
    const-string/jumbo v15, "position"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d6

    :try_start_1b0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mTextPosition:I
    :try_end_1c0
    .catch Ljava/lang/NumberFormatException; {:try_start_1b0 .. :try_end_1c0} :catch_1c2

    goto/16 :goto_98

    :catch_1c2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    const-string/jumbo v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_98

    :cond_1d6
    const-string/jumbo v15, "size"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_205

    :try_start_1df
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    invoke-static {v11}, Landroid/media/WebVttParser;->parseIntPercentage(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mSize:I
    :try_end_1ef
    .catch Ljava/lang/NumberFormatException; {:try_start_1df .. :try_end_1ef} :catch_1f1

    goto/16 :goto_98

    :catch_1f1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    const-string/jumbo v17, "is not numeric or percentage"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_98

    :cond_205
    const-string/jumbo v15, "align"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_98

    const-string/jumbo v15, "start"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_227

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xc9

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_98

    :cond_227
    const-string/jumbo v15, "middle"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_240

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_98

    :cond_240
    const-string/jumbo v15, "end"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_259

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xca

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_98

    :cond_259
    const-string/jumbo v15, "left"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_272

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xcb

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_98

    :cond_272
    const-string/jumbo v15, "right"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_28b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v15}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v15

    const/16 v16, 0xcc

    move/from16 v0, v16

    iput v0, v15, Landroid/media/TextTrackCue;->mAlignment:I

    goto/16 :goto_98

    :cond_28b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v16, "cue setting"

    const-string/jumbo v17, "has invalid value"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v6, v1, v11}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_98

    :cond_29e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iget-object v12, v12, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-nez v12, :cond_2b8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iget v12, v12, Landroid/media/TextTrackCue;->mSize:I

    const/16 v13, 0x64

    if-eq v12, v13, :cond_2d5

    :cond_2b8
    :goto_2b8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    const-string/jumbo v13, ""

    iput-object v13, v12, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    :cond_2c5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v13}, Landroid/media/WebVttParser;->-get4(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    return-void

    :cond_2d5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/WebVttParser$5;->this$0:Landroid/media/WebVttParser;

    invoke-static {v12}, Landroid/media/WebVttParser;->-get0(Landroid/media/WebVttParser;)Landroid/media/TextTrackCue;

    move-result-object v12

    iget v12, v12, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v13, 0x64

    if-eq v12, v13, :cond_2c5

    goto :goto_2b8
.end method
