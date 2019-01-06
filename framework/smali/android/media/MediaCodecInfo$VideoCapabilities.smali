.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapabilities"


# instance fields
.field private mAllowMbOverride:Z

.field private mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightAlignment:I

.field private mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mSmallerDimensionUpperLimit:I

.field private mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthAlignment:I

.field private mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyAlignment(II)V
    .registers 9

    const-string/jumbo v0, "widthAlignment must be a power of two"

    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    const-string/jumbo v0, "heightAlignment must be a power of two"

    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_14

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v0, :cond_30

    :cond_14
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    move-result-object v4

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    :cond_30
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-void
.end method

.method private applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const-string/jumbo v3, "blockWidth must be a power of two"

    invoke-static {p1, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    const-string/jumbo v3, "blockHeight must be a power of two"

    invoke-static {p2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v3, v2, v1

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v3, v4

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v0, v3, v4

    if-eq v0, v6, :cond_5d

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v2, v5

    invoke-static {v3, v4, v5}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v2, v4

    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    :cond_5d
    mul-int v3, v2, v1

    div-int/2addr v3, p1

    div-int v0, v3, p2

    if-eq v0, v6, :cond_75

    invoke-static {p3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    int-to-long v4, v0

    invoke-static {p4, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    div-int v3, v1, p2

    div-int v4, v2, p1

    invoke-static {p5, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    :cond_75
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v3, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v3, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v3, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iput v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    return-void
.end method

.method private applyLevelLimits()V
    .registers 60

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v47, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v52

    const-string/jumbo v2, "video/avc"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20c

    const/16 v5, 0x63

    const-wide/16 v6, 0x5cd

    const v48, 0xfa00

    const/16 v49, 0x18c

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_31
    if-ge v2, v4, :cond_1d8

    aget-object v55, v56, v2

    const/16 v42, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v58, 0x1

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_c18

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_73
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_c5e

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v34, v0

    :goto_ad
    if-eqz v58, :cond_b1

    and-int/lit8 v47, v47, -0x5

    :cond_b1
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    move/from16 v1, v48

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v48

    move/from16 v0, v49

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_31

    :sswitch_d6
    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x40

    const/16 v36, 0x18c

    goto :goto_73

    :sswitch_df
    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x80

    const/16 v36, 0x18c

    goto :goto_73

    :sswitch_e8
    const/16 v42, 0xbb8

    const/16 v40, 0x18c

    const/16 v34, 0xc0

    const/16 v36, 0x384

    goto :goto_73

    :sswitch_f1
    const/16 v42, 0x1770

    const/16 v40, 0x18c

    const/16 v34, 0x180

    const/16 v36, 0x948

    goto/16 :goto_73

    :sswitch_fb
    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x300

    const/16 v36, 0x948

    goto/16 :goto_73

    :sswitch_105
    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x7d0

    const/16 v36, 0x948

    goto/16 :goto_73

    :sswitch_10f
    const/16 v42, 0x4d58

    const/16 v40, 0x318

    const/16 v34, 0xfa0

    const/16 v36, 0x1290

    goto/16 :goto_73

    :sswitch_119
    const/16 v42, 0x4f1a

    const/16 v40, 0x654

    const/16 v34, 0xfa0

    const/16 v36, 0x1fa4

    goto/16 :goto_73

    :sswitch_123
    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x2710

    const/16 v36, 0x1fa4

    goto/16 :goto_73

    :sswitch_12e
    const v42, 0x1a5e0

    const/16 v40, 0xe10

    const/16 v34, 0x36b0

    const/16 v36, 0x4650

    goto/16 :goto_73

    :sswitch_139
    const v42, 0x34bc0

    const/16 v40, 0x1400

    const/16 v34, 0x4e20

    const/16 v36, 0x5000

    goto/16 :goto_73

    :sswitch_144
    const v42, 0x3c000

    const/16 v40, 0x2000

    const/16 v34, 0x4e20

    const v36, 0x8000

    goto/16 :goto_73

    :sswitch_150
    const v42, 0x3c000

    const/16 v40, 0x2000

    const v34, 0xc350

    const v36, 0x8000

    goto/16 :goto_73

    :sswitch_15d
    const v42, 0x7f800

    const/16 v40, 0x2200

    const v34, 0xc350

    const v36, 0x8800

    goto/16 :goto_73

    :sswitch_16a
    const/high16 v42, 0x90000

    const/16 v40, 0x5640

    const v34, 0x20f58

    const v36, 0x1af40

    goto/16 :goto_73

    :sswitch_176
    const/high16 v42, 0xf0000

    const v40, 0x9000

    const v34, 0x3a980

    const v36, 0x2d000

    goto/16 :goto_73

    :sswitch_183
    const v42, 0x1fa400

    const v40, 0x9000

    const v34, 0x3a980

    const v36, 0x2d000

    goto/16 :goto_73

    :sswitch_191
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x4e2

    move/from16 v34, v0

    goto/16 :goto_ad

    :sswitch_199
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0xbb8

    move/from16 v34, v0

    goto/16 :goto_ad

    :sswitch_1a1
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x2

    const/16 v58, 0x0

    :sswitch_1d0
    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v34, v0

    goto/16 :goto_ad

    :cond_1d8
    mul-int/lit8 v2, v5, 0x8

    int-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v3, v0

    const/16 v8, 0x10

    const/16 v9, 0x10

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move v4, v3

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    :goto_1f0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v4, v4, v47

    iput v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    return-void

    :cond_20c
    const-string/jumbo v2, "video/mpeg2"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e1

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v51, 0xf

    const/16 v5, 0x63

    const-wide/16 v6, 0x5cd

    const v48, 0xfa00

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_228
    if-ge v2, v4, :cond_3ba

    aget-object v55, v56, v2

    const/16 v42, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v43, 0x0

    const/16 v41, 0x0

    const/16 v58, 0x1

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v8, :pswitch_data_c84

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_26e
    if-eqz v58, :cond_272

    and-int/lit8 v47, v47, -0x5

    :cond_272
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    move/from16 v0, v43

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, v41

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v0, v37

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v51

    add-int/lit8 v2, v2, 0x1

    goto :goto_228

    :pswitch_2a4
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v8, :pswitch_data_c94

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    goto :goto_26e

    :pswitch_2e8
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x3a98

    goto/16 :goto_26e

    :pswitch_2f7
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v8, :pswitch_data_c9a

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    goto/16 :goto_26e

    :pswitch_33c
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0xfa0

    goto/16 :goto_26e

    :pswitch_34a
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x3a98

    goto/16 :goto_26e

    :pswitch_359
    const/16 v37, 0x3c

    const/16 v43, 0x5a

    const/16 v41, 0x44

    const v42, 0x2cd30

    const/16 v40, 0x17e8

    const v34, 0xea60

    goto/16 :goto_26e

    :pswitch_369
    const/16 v37, 0x3c

    const/16 v43, 0x78

    const/16 v41, 0x44

    const v42, 0x3bc40

    const/16 v40, 0x1fe0

    const v34, 0x13880

    goto/16 :goto_26e

    :pswitch_379
    const/16 v37, 0x3c

    const/16 v43, 0x78

    const/16 v41, 0x44

    const v42, 0x77880

    const/16 v40, 0x1fe0

    const v34, 0x13880

    goto/16 :goto_26e

    :pswitch_389
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x2

    const/16 v58, 0x0

    goto/16 :goto_26e

    :cond_3ba
    const/16 v14, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move v11, v5

    move-wide v12, v6

    invoke-direct/range {v8 .. v17}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_1f0

    :cond_3e1
    const-string/jumbo v2, "video/mp4v-es"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_654

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v51, 0xf

    const/16 v5, 0x63

    const-wide/16 v6, 0x5cd

    const v48, 0xfa00

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_3fd
    if-ge v2, v4, :cond_62d

    aget-object v55, v56, v2

    const/16 v42, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v43, 0x0

    const/16 v41, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x1

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_ca8

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_445
    if-eqz v58, :cond_449

    and-int/lit8 v47, v47, -0x5

    :cond_449
    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    if-eqz v57, :cond_603

    move/from16 v0, v43

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, v41

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v0, v37

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v51

    :goto_47a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3fd

    :sswitch_47d
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_cea

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    goto :goto_445

    :sswitch_4c1
    const/16 v57, 0x1

    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x40

    goto/16 :goto_445

    :sswitch_4d1
    const/16 v37, 0x1e

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x40

    goto/16 :goto_445

    :sswitch_4df
    const/16 v57, 0x1

    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0x5cd

    const/16 v40, 0x63

    const/16 v34, 0x80

    goto/16 :goto_445

    :sswitch_4ef
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x1734

    const/16 v40, 0x18c

    const/16 v34, 0x80

    goto/16 :goto_445

    :sswitch_4fd
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x180

    goto/16 :goto_445

    :sswitch_50b
    const/16 v37, 0x1e

    const/16 v43, 0x28

    const/16 v41, 0x1e

    const v42, 0x8ca0

    const/16 v40, 0x4b0

    const/16 v34, 0xfa0

    goto/16 :goto_445

    :sswitch_51a
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0x9e34

    const/16 v40, 0x654

    const/16 v34, 0x1f40

    goto/16 :goto_445

    :sswitch_529
    const/16 v37, 0x1e

    const/16 v43, 0x50

    const/16 v41, 0x2d

    const v42, 0x1a5e0

    const/16 v40, 0xe10

    const/16 v34, 0x2ee0

    goto/16 :goto_445

    :sswitch_538
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_d0c

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    goto/16 :goto_445

    :sswitch_57d
    const/16 v37, 0x1e

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v42, 0xb9a

    const/16 v40, 0x63

    const/16 v34, 0x80

    goto/16 :goto_445

    :sswitch_58b
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x1734

    const/16 v40, 0x18c

    const/16 v34, 0x180

    goto/16 :goto_445

    :sswitch_599
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x300

    goto/16 :goto_445

    :sswitch_5a7
    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v42, 0x2e68

    const/16 v40, 0x18c

    const/16 v34, 0x5dc

    goto/16 :goto_445

    :sswitch_5b5
    const/16 v37, 0x1e

    const/16 v43, 0x2c

    const/16 v41, 0x24

    const/16 v42, 0x5cd0

    const/16 v40, 0x318

    const/16 v34, 0xbb8

    goto/16 :goto_445

    :sswitch_5c3
    const/16 v37, 0x1e

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const v42, 0xbdd8

    const/16 v40, 0x654

    const/16 v34, 0x1f40

    goto/16 :goto_445

    :sswitch_5d2
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x2

    const/16 v58, 0x0

    goto/16 :goto_445

    :cond_603
    mul-int/lit8 v8, v40, 0x2

    int-to-double v0, v8

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v50, v0

    move/from16 v0, v50

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, v50

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/16 v8, 0x3c

    move/from16 v0, v37

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v0, v51

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v51

    goto/16 :goto_47a

    :cond_62d
    const/16 v14, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v8, p0

    move v11, v5

    move-wide v12, v6

    invoke-direct/range {v8 .. v17}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_1f0

    :cond_654
    const-string/jumbo v2, "video/3gpp"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83d

    const/16 v9, 0xb

    const/16 v10, 0x9

    const/16 v51, 0xf

    const/16 v13, 0xb

    const/16 v14, 0x9

    const/16 v22, 0x10

    const/16 v5, 0x63

    const-wide/16 v6, 0x5cd

    const v48, 0xfa00

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_676
    if-ge v2, v4, :cond_7f8

    aget-object v55, v56, v2

    const/16 v42, 0x0

    const/16 v34, 0x0

    const/16 v37, 0x0

    const/16 v43, 0x0

    const/16 v41, 0x0

    move/from16 v54, v13

    move/from16 v53, v14

    const/16 v57, 0x0

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_d2a

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile/level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_6cd
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_d4c

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :sswitch_701
    if-eqz v57, :cond_7f1

    const/16 v54, 0xb

    const/16 v53, 0x9

    :goto_707
    and-int/lit8 v47, v47, -0x5

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    mul-int v8, v43, v41

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const v8, 0xfa00

    mul-int v8, v8, v34

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    move/from16 v0, v43

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v0, v41

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v0, v37

    move/from16 v1, v51

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v51

    move/from16 v0, v54

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    move/from16 v0, v53

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_676

    :sswitch_749
    const/16 v57, 0x1

    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v34, 0x1

    const/16 v8, 0x63

    mul-int/lit8 v42, v8, 0xf

    goto/16 :goto_6cd

    :sswitch_759
    const/16 v57, 0x1

    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x2

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0xf

    goto/16 :goto_6cd

    :sswitch_769
    const/16 v57, 0x1

    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x6

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0x1e

    goto/16 :goto_6cd

    :sswitch_779
    const/16 v57, 0x1

    const/16 v37, 0x1e

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x20

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0x1e

    goto/16 :goto_6cd

    :sswitch_789
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v11, 0x1

    if-eq v8, v11, :cond_7af

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v11, 0x4

    if-ne v8, v11, :cond_7b2

    const/16 v57, 0x1

    :goto_799
    if-nez v57, :cond_7a1

    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    :cond_7a1
    const/16 v37, 0xf

    const/16 v43, 0xb

    const/16 v41, 0x9

    const/16 v34, 0x2

    const/16 v8, 0x63

    mul-int/lit8 v42, v8, 0xf

    goto/16 :goto_6cd

    :cond_7af
    const/16 v57, 0x1

    goto :goto_799

    :cond_7b2
    const/16 v57, 0x0

    goto :goto_799

    :sswitch_7b5
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    const/16 v37, 0x3c

    const/16 v43, 0x16

    const/16 v41, 0x12

    const/16 v34, 0x40

    const/16 v8, 0x18c

    mul-int/lit8 v42, v8, 0x32

    goto/16 :goto_6cd

    :sswitch_7c9
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    const/16 v37, 0x3c

    const/16 v43, 0x2d

    const/16 v41, 0x12

    const/16 v34, 0x80

    const/16 v8, 0x32a

    mul-int/lit8 v42, v8, 0x32

    goto/16 :goto_6cd

    :sswitch_7dd
    const/16 v54, 0x1

    const/16 v53, 0x1

    const/16 v22, 0x4

    const/16 v37, 0x3c

    const/16 v43, 0x2d

    const/16 v41, 0x24

    const/16 v34, 0x100

    const/16 v8, 0x654

    mul-int/lit8 v42, v8, 0x32

    goto/16 :goto_6cd

    :cond_7f1
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    goto/16 :goto_707

    :cond_7f8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-nez v2, :cond_818

    new-instance v2, Landroid/util/Rational;

    const/16 v4, 0xb

    const/16 v8, 0x9

    invoke-direct {v2, v4, v8}, Landroid/util/Rational;-><init>(II)V

    new-instance v4, Landroid/util/Rational;

    const/16 v8, 0xb

    const/16 v11, 0x9

    invoke-direct {v4, v8, v11}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_818
    const/16 v20, 0x10

    const/16 v21, 0x10

    move-object/from16 v12, p0

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move/from16 v23, v22

    invoke-direct/range {v12 .. v23}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_1f0

    :cond_83d
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8df

    const v5, 0x7fffffff

    const-wide/32 v6, 0x7fffffff

    const v48, 0x5f5e100

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_855
    if-ge v2, v4, :cond_8c6

    aget-object v55, v56, v2

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v8, :pswitch_data_d72

    :pswitch_860
    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :pswitch_88d
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v8, :pswitch_data_d86

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :pswitch_8c1
    and-int/lit8 v47, v47, -0x5

    add-int/lit8 v2, v2, 0x1

    goto :goto_855

    :cond_8c6
    const/16 v46, 0x10

    const/16 v25, 0x7fff

    const/16 v26, 0x7fff

    const/16 v30, 0x10

    const/16 v31, 0x10

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, p0

    move/from16 v27, v5

    move-wide/from16 v28, v6

    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_1f0

    :cond_8df
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a66

    const-wide/32 v6, 0xca800

    const v5, 0x9000

    const v48, 0x30d40

    const/16 v50, 0x200

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_8f9
    if-ge v2, v4, :cond_a37

    aget-object v55, v56, v2

    const-wide/16 v44, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_d8c

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_939
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_dc6

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :sswitch_96d
    and-int/lit8 v47, v47, -0x5

    move-wide/from16 v0, v44

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    move/from16 v0, v35

    move/from16 v1, v50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v50

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8f9

    :sswitch_991
    const-wide/32 v44, 0xca800

    const v40, 0x9000

    const/16 v34, 0xc8

    const/16 v35, 0x200

    goto :goto_939

    :sswitch_99c
    const-wide/32 v44, 0x2a3000

    const v40, 0x12000

    const/16 v34, 0x320

    const/16 v35, 0x300

    goto :goto_939

    :sswitch_9a7
    const-wide/32 v44, 0x465000

    const v40, 0x1e000

    const/16 v34, 0x708

    const/16 v35, 0x3c0

    goto :goto_939

    :sswitch_9b2
    const-wide/32 v44, 0x8ca000

    const v40, 0x3c000

    const/16 v34, 0xe10

    const/16 v35, 0x540

    goto/16 :goto_939

    :sswitch_9be
    const-wide/32 v44, 0x13c6800

    const v40, 0x87000

    const/16 v34, 0x1c20

    const/16 v35, 0x800

    goto/16 :goto_939

    :sswitch_9ca
    const-wide/32 v44, 0x2328000

    const/high16 v40, 0xf0000

    const/16 v34, 0x2ee0

    const/16 v35, 0xac0

    goto/16 :goto_939

    :sswitch_9d5
    const-wide/32 v44, 0x4fb0000

    const/high16 v40, 0x220000

    const/16 v34, 0x4650

    const/16 v35, 0x1040

    goto/16 :goto_939

    :sswitch_9e0
    const-wide/32 v44, 0x9900000

    const/high16 v40, 0x220000

    const/16 v34, 0x7530

    const/16 v35, 0x1040

    goto/16 :goto_939

    :sswitch_9eb
    const-wide/32 v44, 0x12980000

    const/high16 v40, 0x880000

    const v34, 0xea60

    const/16 v35, 0x20c0

    goto/16 :goto_939

    :sswitch_9f7
    const-wide/32 v44, 0x23100000

    const/high16 v40, 0x880000

    const v34, 0x1d4c0

    const/16 v35, 0x20c0

    goto/16 :goto_939

    :sswitch_a03
    const-wide/32 v44, 0x46200000

    const/high16 v40, 0x880000

    const v34, 0x2bf20

    const/16 v35, 0x20c0

    goto/16 :goto_939

    :sswitch_a0f
    const-wide/32 v44, 0x46200000

    const/high16 v40, 0x2200000

    const v34, 0x2bf20

    const/16 v35, 0x41c0

    goto/16 :goto_939

    :sswitch_a1b
    const-wide v44, 0x8c400000L

    const/high16 v40, 0x2200000

    const v34, 0x3a980

    const/16 v35, 0x41c0

    goto/16 :goto_939

    :sswitch_a29
    const-wide v44, 0x118800000L

    const/high16 v40, 0x2200000

    const v34, 0x75300

    const/16 v35, 0x41c0

    goto/16 :goto_939

    :cond_a37
    const/16 v46, 0x8

    const/16 v2, 0x8

    move/from16 v0, v50

    invoke-static {v0, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    const/16 v2, 0x40

    invoke-static {v5, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    const-wide/16 v16, 0x40

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    move-result-wide v6

    const/16 v30, 0x8

    const/16 v31, 0x8

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, p0

    move/from16 v25, v3

    move/from16 v26, v3

    move/from16 v27, v5

    move-wide/from16 v28, v6

    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_1f0

    :cond_a66
    const-string/jumbo v2, "video/hevc"

    move-object/from16 v0, v52

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bf4

    const/16 v5, 0x240

    const/16 v2, 0x21c0

    int-to-long v6, v2

    const v48, 0x1f400

    const/4 v2, 0x0

    move-object/from16 v0, v56

    array-length v4, v0

    :goto_a7d
    if-ge v2, v4, :cond_bd1

    aget-object v55, v56, v2

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v8, :sswitch_data_de0

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :goto_abb
    move-object/from16 v0, v55

    iget v8, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v8, :sswitch_data_e4a

    const-string/jumbo v8, "VideoCapabilities"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unrecognized profile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v55

    iget v12, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v47, v47, 0x1

    :sswitch_aef
    shr-int/lit8 v40, v40, 0x6

    and-int/lit8 v47, v47, -0x5

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v38

    move-wide/from16 v0, v16

    double-to-int v8, v0

    int-to-long v0, v8

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v0, v40

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move/from16 v0, v34

    mul-int/lit16 v8, v0, 0x3e8

    move/from16 v0, v48

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v48

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a7d

    :sswitch_b1a
    const-wide/high16 v38, 0x402e000000000000L    # 15.0

    const v40, 0x9000

    const/16 v34, 0x80

    goto :goto_abb

    :sswitch_b22
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const v40, 0x1e000

    const/16 v34, 0x5dc

    goto :goto_abb

    :sswitch_b2a
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const v40, 0x3c000

    const/16 v34, 0xbb8

    goto :goto_abb

    :sswitch_b32
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const v40, 0x87000

    const/16 v34, 0x1770

    goto :goto_abb

    :sswitch_b3a
    const-wide v38, 0x4040e00000000000L    # 33.75

    const/high16 v40, 0xf0000

    const/16 v34, 0x2710

    goto/16 :goto_abb

    :sswitch_b45
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x220000

    const/16 v34, 0x2ee0

    goto/16 :goto_abb

    :sswitch_b4d
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x220000

    const/16 v34, 0x7530

    goto/16 :goto_abb

    :sswitch_b55
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x220000

    const/16 v34, 0x4e20

    goto/16 :goto_abb

    :sswitch_b5d
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x220000

    const v34, 0xc350

    goto/16 :goto_abb

    :sswitch_b66
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x880000

    const/16 v34, 0x61a8

    goto/16 :goto_abb

    :sswitch_b6e
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x880000

    const v34, 0x186a0

    goto/16 :goto_abb

    :sswitch_b77
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x880000

    const v34, 0x9c40

    goto/16 :goto_abb

    :sswitch_b80
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x880000

    const v34, 0x27100

    goto/16 :goto_abb

    :sswitch_b89
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x880000

    const v34, 0xea60

    goto/16 :goto_abb

    :sswitch_b92
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x880000

    const v34, 0x3a980

    goto/16 :goto_abb

    :sswitch_b9b
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x2200000

    const v34, 0xea60

    goto/16 :goto_abb

    :sswitch_ba4
    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    const/high16 v40, 0x2200000

    const v34, 0x3a980

    goto/16 :goto_abb

    :sswitch_bad
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x2200000

    const v34, 0x1d4c0

    goto/16 :goto_abb

    :sswitch_bb6
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const/high16 v40, 0x2200000

    const v34, 0x75300

    goto/16 :goto_abb

    :sswitch_bbf
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x2200000

    const v34, 0x3a980

    goto/16 :goto_abb

    :sswitch_bc8
    const-wide/high16 v38, 0x405e000000000000L    # 120.0

    const/high16 v40, 0x2200000

    const v34, 0xc3500

    goto/16 :goto_abb

    :cond_bd1
    mul-int/lit8 v2, v5, 0x8

    int-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v3, v0

    const/16 v30, 0x8

    const/16 v31, 0x8

    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v24, p0

    move/from16 v25, v3

    move/from16 v26, v3

    move/from16 v27, v5

    move-wide/from16 v28, v6

    invoke-direct/range {v24 .. v33}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_1f0

    :cond_bf4
    const-string/jumbo v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unsupported mime "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v48, 0xfa00

    const/16 v47, 0x6

    goto/16 :goto_1f0

    nop

    :sswitch_data_c18
    .sparse-switch
        0x1 -> :sswitch_d6
        0x2 -> :sswitch_df
        0x4 -> :sswitch_e8
        0x8 -> :sswitch_f1
        0x10 -> :sswitch_fb
        0x20 -> :sswitch_105
        0x40 -> :sswitch_10f
        0x80 -> :sswitch_119
        0x100 -> :sswitch_123
        0x200 -> :sswitch_12e
        0x400 -> :sswitch_139
        0x800 -> :sswitch_144
        0x1000 -> :sswitch_150
        0x2000 -> :sswitch_15d
        0x4000 -> :sswitch_16a
        0x8000 -> :sswitch_176
        0x10000 -> :sswitch_183
    .end sparse-switch

    :sswitch_data_c5e
    .sparse-switch
        0x1 -> :sswitch_1d0
        0x2 -> :sswitch_1d0
        0x4 -> :sswitch_1a1
        0x8 -> :sswitch_191
        0x10 -> :sswitch_199
        0x20 -> :sswitch_1a1
        0x40 -> :sswitch_1a1
        0x10000 -> :sswitch_1d0
        0x80000 -> :sswitch_191
    .end sparse-switch

    :pswitch_data_c84
    .packed-switch 0x0
        :pswitch_2a4
        :pswitch_2f7
        :pswitch_389
        :pswitch_389
        :pswitch_389
        :pswitch_389
    .end packed-switch

    :pswitch_data_c94
    .packed-switch 0x1
        :pswitch_2e8
    .end packed-switch

    :pswitch_data_c9a
    .packed-switch 0x0
        :pswitch_33c
        :pswitch_34a
        :pswitch_359
        :pswitch_369
        :pswitch_379
    .end packed-switch

    :sswitch_data_ca8
    .sparse-switch
        0x1 -> :sswitch_47d
        0x2 -> :sswitch_5d2
        0x4 -> :sswitch_5d2
        0x8 -> :sswitch_5d2
        0x10 -> :sswitch_5d2
        0x20 -> :sswitch_5d2
        0x40 -> :sswitch_5d2
        0x80 -> :sswitch_5d2
        0x100 -> :sswitch_5d2
        0x200 -> :sswitch_5d2
        0x400 -> :sswitch_5d2
        0x800 -> :sswitch_5d2
        0x1000 -> :sswitch_5d2
        0x2000 -> :sswitch_5d2
        0x4000 -> :sswitch_5d2
        0x8000 -> :sswitch_538
    .end sparse-switch

    :sswitch_data_cea
    .sparse-switch
        0x1 -> :sswitch_4c1
        0x2 -> :sswitch_4df
        0x4 -> :sswitch_4d1
        0x8 -> :sswitch_4ef
        0x10 -> :sswitch_4fd
        0x40 -> :sswitch_50b
        0x80 -> :sswitch_51a
        0x100 -> :sswitch_529
    .end sparse-switch

    :sswitch_data_d0c
    .sparse-switch
        0x1 -> :sswitch_57d
        0x4 -> :sswitch_57d
        0x8 -> :sswitch_58b
        0x10 -> :sswitch_599
        0x18 -> :sswitch_5a7
        0x20 -> :sswitch_5b5
        0x80 -> :sswitch_5c3
    .end sparse-switch

    :sswitch_data_d2a
    .sparse-switch
        0x1 -> :sswitch_749
        0x2 -> :sswitch_759
        0x4 -> :sswitch_769
        0x8 -> :sswitch_779
        0x10 -> :sswitch_789
        0x20 -> :sswitch_7b5
        0x40 -> :sswitch_7c9
        0x80 -> :sswitch_7dd
    .end sparse-switch

    :sswitch_data_d4c
    .sparse-switch
        0x1 -> :sswitch_701
        0x2 -> :sswitch_701
        0x4 -> :sswitch_701
        0x8 -> :sswitch_701
        0x10 -> :sswitch_701
        0x20 -> :sswitch_701
        0x40 -> :sswitch_701
        0x80 -> :sswitch_701
        0x100 -> :sswitch_701
    .end sparse-switch

    :pswitch_data_d72
    .packed-switch 0x1
        :pswitch_88d
        :pswitch_88d
        :pswitch_860
        :pswitch_88d
        :pswitch_860
        :pswitch_860
        :pswitch_860
        :pswitch_88d
    .end packed-switch

    :pswitch_data_d86
    .packed-switch 0x1
        :pswitch_8c1
    .end packed-switch

    :sswitch_data_d8c
    .sparse-switch
        0x1 -> :sswitch_991
        0x2 -> :sswitch_99c
        0x4 -> :sswitch_9a7
        0x8 -> :sswitch_9b2
        0x10 -> :sswitch_9be
        0x20 -> :sswitch_9ca
        0x40 -> :sswitch_9d5
        0x80 -> :sswitch_9e0
        0x100 -> :sswitch_9eb
        0x200 -> :sswitch_9f7
        0x400 -> :sswitch_a03
        0x800 -> :sswitch_a0f
        0x1000 -> :sswitch_a1b
        0x2000 -> :sswitch_a29
    .end sparse-switch

    :sswitch_data_dc6
    .sparse-switch
        0x1 -> :sswitch_96d
        0x2 -> :sswitch_96d
        0x4 -> :sswitch_96d
        0x8 -> :sswitch_96d
        0x1000 -> :sswitch_96d
        0x2000 -> :sswitch_96d
    .end sparse-switch

    :sswitch_data_de0
    .sparse-switch
        0x1 -> :sswitch_b1a
        0x2 -> :sswitch_b1a
        0x4 -> :sswitch_b22
        0x8 -> :sswitch_b22
        0x10 -> :sswitch_b2a
        0x20 -> :sswitch_b2a
        0x40 -> :sswitch_b32
        0x80 -> :sswitch_b32
        0x100 -> :sswitch_b3a
        0x200 -> :sswitch_b3a
        0x400 -> :sswitch_b45
        0x800 -> :sswitch_b4d
        0x1000 -> :sswitch_b55
        0x2000 -> :sswitch_b5d
        0x4000 -> :sswitch_b66
        0x8000 -> :sswitch_b6e
        0x10000 -> :sswitch_b77
        0x20000 -> :sswitch_b80
        0x40000 -> :sswitch_b89
        0x80000 -> :sswitch_b92
        0x100000 -> :sswitch_b9b
        0x200000 -> :sswitch_ba4
        0x400000 -> :sswitch_bad
        0x800000 -> :sswitch_bb6
        0x1000000 -> :sswitch_bbf
        0x2000000 -> :sswitch_bc8
    .end sparse-switch

    :sswitch_data_e4a
    .sparse-switch
        0x1 -> :sswitch_aef
        0x2 -> :sswitch_aef
        0x1000 -> :sswitch_aef
    .end sparse-switch
.end method

.method private applyMacroBlockLimits(IIIIIJIIII)V
    .registers 20

    move/from16 v0, p10

    move/from16 v1, p11

    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v6

    new-instance v2, Landroid/util/Rational;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p4}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    const/4 v4, 0x1

    invoke-direct {v3, p3, v4}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v7

    move-object v2, p0

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v3, v3, p8

    invoke-static {p1, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v4, p8

    div-int v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v3, v3, p9

    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v4, p9

    div-int v4, p4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    return-void
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .registers 22

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .registers 3

    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    return-object v0
.end method

.method public static equivalentVP9Level(Landroid/media/MediaFormat;)I
    .registers 17

    invoke-virtual/range {p0 .. p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v11

    const-string/jumbo v12, "block-size"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-instance v13, Landroid/util/Size;

    const/16 v14, 0x8

    const/16 v15, 0x8

    invoke-direct {v13, v14, v15}, Landroid/util/Size;-><init>(II)V

    invoke-static {v12, v13}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v13

    mul-int v1, v12, v13

    const-string/jumbo v12, "block-count-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v9

    if-nez v9, :cond_74

    const/4 v3, 0x0

    :goto_31
    const-string/jumbo v12, "blocks-per-second-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v7

    if-nez v7, :cond_81

    const-wide/16 v4, 0x0

    :goto_41
    const-string/jumbo v12, "size-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    if-nez v10, :cond_8f

    const/4 v2, 0x0

    :goto_4f
    const-string/jumbo v12, "bitrate-range"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v6

    if-nez v6, :cond_b0

    const/4 v0, 0x0

    :goto_5e
    const-wide/32 v12, 0xca800

    cmp-long v12, v4, v12

    if-gtz v12, :cond_c1

    const v12, 0x9000

    if-gt v3, v12, :cond_c1

    const/16 v12, 0xc8

    if-gt v0, v12, :cond_c1

    const/16 v12, 0x200

    if-gt v2, v12, :cond_c1

    const/4 v12, 0x1

    return v12

    :cond_74
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    mul-int v3, v1, v12

    goto :goto_31

    :cond_81
    int-to-long v14, v1

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    mul-long v4, v14, v12

    goto :goto_41

    :cond_8f
    iget-object v12, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/util/Range;

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/Range;

    invoke-virtual {v12}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4f

    :cond_b0
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/16 v13, 0x3e8

    invoke-static {v12, v13}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    goto :goto_5e

    :cond_c1
    const-wide/32 v12, 0x2a3000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_d7

    const v12, 0x12000

    if-gt v3, v12, :cond_d7

    const/16 v12, 0x320

    if-gt v0, v12, :cond_d7

    const/16 v12, 0x300

    if-gt v2, v12, :cond_d7

    const/4 v12, 0x2

    return v12

    :cond_d7
    const-wide/32 v12, 0x465000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_ed

    const v12, 0x1e000

    if-gt v3, v12, :cond_ed

    const/16 v12, 0x708

    if-gt v0, v12, :cond_ed

    const/16 v12, 0x3c0

    if-gt v2, v12, :cond_ed

    const/4 v12, 0x4

    return v12

    :cond_ed
    const-wide/32 v12, 0x8ca000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_104

    const v12, 0x3c000

    if-gt v3, v12, :cond_104

    const/16 v12, 0xe10

    if-gt v0, v12, :cond_104

    const/16 v12, 0x540

    if-gt v2, v12, :cond_104

    const/16 v12, 0x8

    return v12

    :cond_104
    const-wide/32 v12, 0x13c6800

    cmp-long v12, v4, v12

    if-gtz v12, :cond_11b

    const v12, 0x87000

    if-gt v3, v12, :cond_11b

    const/16 v12, 0x1c20

    if-gt v0, v12, :cond_11b

    const/16 v12, 0x800

    if-gt v2, v12, :cond_11b

    const/16 v12, 0x10

    return v12

    :cond_11b
    const-wide/32 v12, 0x2328000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_131

    const/high16 v12, 0xf0000

    if-gt v3, v12, :cond_131

    const/16 v12, 0x2ee0

    if-gt v0, v12, :cond_131

    const/16 v12, 0xac0

    if-gt v2, v12, :cond_131

    const/16 v12, 0x20

    return v12

    :cond_131
    const-wide/32 v12, 0x4fb0000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_147

    const/high16 v12, 0x220000

    if-gt v3, v12, :cond_147

    const/16 v12, 0x4650

    if-gt v0, v12, :cond_147

    const/16 v12, 0x1040

    if-gt v2, v12, :cond_147

    const/16 v12, 0x40

    return v12

    :cond_147
    const-wide/32 v12, 0x9900000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_15d

    const/high16 v12, 0x220000

    if-gt v3, v12, :cond_15d

    const/16 v12, 0x7530

    if-gt v0, v12, :cond_15d

    const/16 v12, 0x1040

    if-gt v2, v12, :cond_15d

    const/16 v12, 0x80

    return v12

    :cond_15d
    const-wide/32 v12, 0x12980000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_174

    const/high16 v12, 0x880000

    if-gt v3, v12, :cond_174

    const v12, 0xea60

    if-gt v0, v12, :cond_174

    const/16 v12, 0x20c0

    if-gt v2, v12, :cond_174

    const/16 v12, 0x100

    return v12

    :cond_174
    const-wide/32 v12, 0x23100000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_18b

    const/high16 v12, 0x880000

    if-gt v3, v12, :cond_18b

    const v12, 0x1d4c0

    if-gt v0, v12, :cond_18b

    const/16 v12, 0x20c0

    if-gt v2, v12, :cond_18b

    const/16 v12, 0x200

    return v12

    :cond_18b
    const-wide/32 v12, 0x46200000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_1a2

    const/high16 v12, 0x880000

    if-gt v3, v12, :cond_1a2

    const v12, 0x2bf20

    if-gt v0, v12, :cond_1a2

    const/16 v12, 0x20c0

    if-gt v2, v12, :cond_1a2

    const/16 v12, 0x400

    return v12

    :cond_1a2
    const-wide/32 v12, 0x46200000

    cmp-long v12, v4, v12

    if-gtz v12, :cond_1b9

    const/high16 v12, 0x2200000

    if-gt v3, v12, :cond_1b9

    const v12, 0x2bf20

    if-gt v0, v12, :cond_1b9

    const/16 v12, 0x41c0

    if-gt v2, v12, :cond_1b9

    const/16 v12, 0x800

    return v12

    :cond_1b9
    const-wide v12, 0x8c400000L

    cmp-long v12, v4, v12

    if-gtz v12, :cond_1d2

    const/high16 v12, 0x2200000

    if-gt v3, v12, :cond_1d2

    const v12, 0x3a980

    if-gt v0, v12, :cond_1d2

    const/16 v12, 0x41c0

    if-gt v2, v12, :cond_1d2

    const/16 v12, 0x1000

    return v12

    :cond_1d2
    const-wide v12, 0x118800000L

    cmp-long v12, v4, v12

    if-gtz v12, :cond_1eb

    const/high16 v12, 0x2200000

    if-gt v3, v12, :cond_1eb

    const v12, 0x75300

    if-gt v0, v12, :cond_1eb

    const/16 v12, 0x41c0

    if-gt v2, v12, :cond_1eb

    const/16 v12, 0x2000

    return v12

    :cond_1eb
    const/16 v12, 0x2000

    return v12
.end method

.method private estimateFrameRatesFor(II)Landroid/util/Range;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    move-result-object v2

    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v3

    int-to-double v4, v3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v3

    const/4 v6, 0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    return-object v3
.end method

.method private findClosestSize(II)Landroid/util/Size;
    .registers 11

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v5

    const/4 v0, 0x0

    const v2, 0x7fffffff

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v6

    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_12

    move v2, v1

    move-object v0, v3

    goto :goto_12

    :cond_35
    return-object v0
.end method

.method private getBlockCount(II)I
    .registers 5

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "measured-frame-rate-"

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v10, "measured-frame-rate-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string/jumbo v10, "measured-frame-rate-"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x5

    if-ne v10, v11, :cond_10

    const/4 v10, 0x3

    aget-object v7, v9, v10

    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-lez v10, :cond_10

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_10

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_10

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_7f
    return-object v5
.end method

.method private initWithPlatformLimits()V
    .registers 3

    const/4 v1, 0x2

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .registers 27

    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v21

    new-instance v16, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v12, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v12, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/16 v17, 0x0

    const/16 v24, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v22, 0x0

    const/4 v15, 0x0

    const-string/jumbo v2, "block-size"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v16

    const-string/jumbo v2, "alignment"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    const-string/jumbo v2, "block-count-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v17

    const-string/jumbo v2, "blocks-per-second-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    const-string/jumbo v2, "size-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v23

    if-eqz v23, :cond_90

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/util/Range;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/util/Range;

    :cond_90
    const-string/jumbo v2, "feature-can-swap-width-height"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    if-eqz v24, :cond_239

    invoke-virtual/range {v24 .. v24}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v20

    move-object/from16 v24, v20

    :cond_c3
    :goto_c3
    const-string/jumbo v2, "block-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v22

    const-string/jumbo v2, "pixel-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    const-string/jumbo v2, "frame-rate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v19

    if-eqz v19, :cond_f9

    :try_start_ef
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_f8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ef .. :try_end_f8} :catch_27c

    move-result-object v19

    :cond_f9
    :goto_f9
    const-string/jumbo v2, "bitrate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v13

    if-eqz v13, :cond_111

    :try_start_109
    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_110
    .catch Ljava/lang/IllegalArgumentException; {:try_start_109 .. :try_end_110} :catch_2ac

    move-result-object v13

    :cond_111
    :goto_111
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string/jumbo v3, "block-size width must be power of two"

    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string/jumbo v3, "block-size height must be power of two"

    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string/jumbo v3, "alignment width must be power of two"

    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string/jumbo v3, "alignment height must be power of two"

    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->-wrap0(ILjava/lang/String;)I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v11

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const-wide v6, 0x7fffffffffffffffL

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_16c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    if-eqz v2, :cond_2e7

    :cond_16c
    if-eqz v24, :cond_17c

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_17c
    if-eqz v20, :cond_18c

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get5()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    :cond_18c
    if-eqz v17, :cond_1b3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get2()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    :cond_1b3
    if-eqz v14, :cond_1d9

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get3()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    :cond_1d9
    if-eqz v15, :cond_1fd

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_1fd
    if-eqz v22, :cond_20d

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get4()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :cond_20d
    if-eqz v19, :cond_21d

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    :cond_21d
    if-eqz v13, :cond_235

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2d9

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    :cond_235
    :goto_235
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    return-void

    :cond_239
    const-string/jumbo v2, "VideoCapabilities"

    const-string/jumbo v3, "feature can-swap-width-height is best used with size-range"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    goto/16 :goto_c3

    :catch_27c
    move-exception v18

    const-string/jumbo v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "frame rate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is out of limits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get1()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_f9

    :catch_2ac
    move-exception v18

    const-string/jumbo v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bitrate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") is out of limits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/media/MediaCodecInfo;->-get0()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto/16 :goto_111

    :cond_2d9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_235

    :cond_2e7
    if-eqz v24, :cond_2f7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    :cond_2f7
    if-eqz v20, :cond_307

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    :cond_307
    if-eqz v17, :cond_32e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    :cond_32e
    if-eqz v14, :cond_354

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    :cond_354
    if-eqz v15, :cond_378

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :cond_378
    if-eqz v22, :cond_388

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :cond_388
    if-eqz v19, :cond_398

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    :cond_398
    if-eqz v13, :cond_235

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_235
.end method

.method private static parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_66

    :try_start_7
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_42} :catch_44

    move-result-object v2

    return-object v2

    :catch_44
    move-exception v0

    const-string/jumbo v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "could not parse size range \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return-object v5
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .registers 14

    const/4 v4, 0x1

    if-eqz v4, :cond_17

    if-eqz p1, :cond_17

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v6, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_b3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v6, v7

    if-nez v6, :cond_b0

    const/4 v4, 0x1

    :cond_17
    :goto_17
    if-eqz v4, :cond_2d

    if-eqz p2, :cond_2d

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v6, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_b9

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v6, v7

    if-nez v6, :cond_b6

    const/4 v4, 0x1

    :cond_2d
    :goto_2d
    if-eqz v4, :cond_3f

    if-eqz p3, :cond_3f

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    :cond_3f
    if-eqz v4, :cond_af

    if-eqz p2, :cond_af

    if-eqz p1, :cond_af

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v6, v7, :cond_bc

    const/4 v4, 0x1

    :goto_56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v6, v7}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v6, v7}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    mul-int v0, v5, v1

    if-eqz v4, :cond_be

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_be

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-direct {v7, v5, v1}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_be

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v7, Landroid/util/Rational;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v4

    :goto_9a
    if-eqz v4, :cond_af

    if-eqz p3, :cond_af

    int-to-double v6, v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    mul-double v2, v6, v8

    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-static {v2, v3}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    :cond_af
    return v4

    :cond_b0
    const/4 v4, 0x0

    goto/16 :goto_17

    :cond_b3
    const/4 v4, 0x0

    goto/16 :goto_17

    :cond_b6
    const/4 v4, 0x0

    goto/16 :goto_2d

    :cond_b9
    const/4 v4, 0x0

    goto/16 :goto_2d

    :cond_bc
    const/4 v4, 0x0

    goto :goto_56

    :cond_be
    const/4 v4, 0x0

    goto :goto_9a
.end method

.method private updateLimits()V
    .registers 9

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v2, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v2, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-void
.end method


# virtual methods
.method public areSizeAndRateSupported(IID)Z
    .registers 8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public getAchievableFrameRatesFor(II)Landroid/util/Range;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2e

    :cond_24
    const-string/jumbo v0, "VideoCapabilities"

    const-string/jumbo v1, "Codec did not publish any measurement data."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2e
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getAspectRatioRange(Z)Landroid/util/Range;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    goto :goto_4
.end method

.method public getBitrateRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockCountRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .registers 4

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getBlocksPerSecondRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public getHeightAlignment()I
    .registers 2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .registers 2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public getSupportedFrameRates()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedFrameRatesFor(II)Landroid/util/Range;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unsupported size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    mul-int v0, v2, v3

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v0

    div-double v4, v2, v4

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_41

    :cond_14
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v0

    const-string/jumbo v5, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "could not get supported heights for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_41
    :try_start_41
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    int-to-double v8, v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v4

    int-to-double v8, v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v5, v2, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_b9

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    :cond_b9
    int-to-double v6, p1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-double v8, p1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_e6} :catch_1d

    move-result-object v3

    return-object v3
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_41

    :cond_14
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v0

    const-string/jumbo v5, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "could not get supported widths for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_41
    :try_start_41
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_b9

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    :cond_b9
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, p1

    mul-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_e6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_e6} :catch_1d

    move-result-object v4

    return-object v4
.end method

.method public getWidthAlignment()I
    .registers 2

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .registers 3

    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    return-void
.end method

.method public isSizeSupported(II)Z
    .registers 6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v4, "width"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string/jumbo v4, "height"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string/jumbo v4, "frame-rate"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-direct {p0, v3, v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v4

    if-nez v4, :cond_27

    return v5

    :cond_27
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-static {v4, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->-wrap0(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    move-result v4

    if-nez v4, :cond_30

    return v5

    :cond_30
    const/4 v4, 0x1

    return v4
.end method
