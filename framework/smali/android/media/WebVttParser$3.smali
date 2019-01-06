.class Landroid/media/WebVttParser$3;
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

    const-class v0, Landroid/media/WebVttParser$3;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/media/WebVttParser$3;->-assertionsDisabled:Z

    return-void
.end method

.method constructor <init>(Landroid/media/WebVttParser;)V
    .registers 2

    iput-object p1, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_13

    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v5}, Landroid/media/WebVttParser;->-get3(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    :cond_12
    :goto_12
    return-void

    :cond_13
    const-string/jumbo v4, "-->"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    iget-object v5, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v5}, Landroid/media/WebVttParser;->-get5(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/WebVttParser;->-set1(Landroid/media/WebVttParser;Landroid/media/WebVttParser$Phase;)Landroid/media/WebVttParser$Phase;

    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->-get7(Landroid/media/WebVttParser;)Landroid/media/WebVttParser$Phase;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/media/WebVttParser$Phase;->parse(Ljava/lang/String;)V

    goto :goto_12

    :cond_31
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_41

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_49

    :cond_41
    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v5, "meta data header has invalid format"

    invoke-static {v4, v5, p1}, Landroid/media/WebVttParser;->-wrap0(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Region"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0, v3}, Landroid/media/WebVttParser$3;->parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;

    move-result-object v2

    iget-object v4, p0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    invoke-static {v4}, Landroid/media/WebVttParser;->-get2(Landroid/media/WebVttParser;)Landroid/media/WebVttCueListener;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/media/WebVttCueListener;->onRegionParsed(Landroid/media/TextTrackRegion;)V

    goto :goto_12
.end method

.method parseRegion(Ljava/lang/String;)Landroid/media/TextTrackRegion;
    .registers 32

    new-instance v23, Landroid/media/TextTrackRegion;

    invoke-direct/range {v23 .. v23}, Landroid/media/TextTrackRegion;-><init>()V

    const-string/jumbo v2, " +"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/4 v2, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v27, v2

    :goto_16
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_17b

    aget-object v24, v28, v27

    const/16 v2, 0x3d

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    if-lez v22, :cond_32

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_37

    :cond_32
    :goto_32
    add-int/lit8 v2, v27, 0x1

    move/from16 v27, v2

    goto :goto_16

    :cond_37
    const/4 v2, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v2, "id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move-object/from16 v0, v23

    iput-object v7, v0, Landroid/media/TextTrackRegion;->mId:Ljava/lang/String;

    goto :goto_32

    :cond_56
    const-string/jumbo v2, "width"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    :try_start_5f
    invoke-static {v7}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/TextTrackRegion;->mWidth:F
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_67} :catch_68

    goto :goto_32

    :catch_68
    move-exception v21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string/jumbo v5, "has invalid value"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v2 .. v7}, Landroid/media/WebVttParser;->-wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_7b
    const-string/jumbo v2, "lines"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    const-string/jumbo v2, ".*[^0-9].*"

    invoke-virtual {v7, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "lines"

    const-string/jumbo v5, "contains an invalid character"

    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_9b
    :try_start_9b
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/TextTrackRegion;->mLines:I

    sget-boolean v2, Landroid/media/WebVttParser$3;->-assertionsDisabled:Z

    if-nez v2, :cond_32

    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/TextTrackRegion;->mLines:I

    if-gez v2, :cond_32

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_b3
    .catch Ljava/lang/NumberFormatException; {:try_start_9b .. :try_end_b3} :catch_b3

    :catch_b3
    move-exception v21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string/jumbo v5, "is not numeric"

    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_c3
    const-string/jumbo v2, "regionanchor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    const-string/jumbo v2, "viewportanchor"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    :cond_d5
    const-string/jumbo v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_ed

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string/jumbo v5, "contains no comma"

    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_ed
    const/4 v2, 0x0

    move/from16 v0, v20

    invoke-virtual {v7, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v2, v20, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    :try_start_fa
    invoke-static {v13}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_fd
    .catch Ljava/lang/NumberFormatException; {:try_start_fa .. :try_end_fd} :catch_119

    move-result v25

    :try_start_fe
    invoke-static/range {v19 .. v19}, Landroid/media/WebVttParser;->parseFloatPercentage(Ljava/lang/String;)F
    :try_end_101
    .catch Ljava/lang/NumberFormatException; {:try_start_fe .. :try_end_101} :catch_12e

    move-result v26

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x72

    if-ne v2, v3, :cond_144

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointX:F

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/media/TextTrackRegion;->mAnchorPointY:F

    goto/16 :goto_32

    :catch_119
    move-exception v21

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v9, "region setting"

    const-string/jumbo v11, "has invalid x component"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    move-object v10, v4

    invoke-static/range {v8 .. v13}, Landroid/media/WebVttParser;->-wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    :catch_12e
    move-exception v21

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v15, "region setting"

    const-string/jumbo v17, "has invalid y component"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v4

    invoke-static/range {v14 .. v19}, Landroid/media/WebVttParser;->-wrap1(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_144
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    move/from16 v0, v26

    move-object/from16 v1, v23

    iput v0, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    goto/16 :goto_32

    :cond_152
    const-string/jumbo v2, "scroll"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const-string/jumbo v2, "up"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16c

    const/16 v2, 0x12d

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/TextTrackRegion;->mScrollValue:I

    goto/16 :goto_32

    :cond_16c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WebVttParser$3;->this$0:Landroid/media/WebVttParser;

    const-string/jumbo v3, "region setting"

    const-string/jumbo v5, "has invalid value"

    invoke-static {v2, v3, v4, v5, v7}, Landroid/media/WebVttParser;->-wrap2(Landroid/media/WebVttParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_17b
    return-object v23
.end method
