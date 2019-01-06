.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field private static final synthetic -android-text-Layout$AlignmentSwitchesValues:[I = null

.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mJustificationMode:I

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid-text-Layout$AlignmentSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Landroid/text/Layout;IZZ)[F
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/text/Layout;IZ)F
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 15

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    if-gez p3, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    if-eqz p2, :cond_31

    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    :cond_31
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .registers 26

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    move/from16 v0, v16

    if-le v15, v0, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_20

    add-int/lit8 v15, v15, -0x1

    :cond_20
    const/4 v14, 0x0

    :goto_21
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_88

    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    move/from16 v0, v18

    if-le v0, v15, :cond_3e

    move/from16 v18, v15

    :cond_3e
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_85

    move/from16 v0, p3

    if-lt v0, v13, :cond_85

    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move/from16 v0, v17

    if-eq v0, v10, :cond_85

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v11

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :cond_85
    add-int/lit8 v14, v14, 0x2

    goto :goto_21

    :cond_88
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 14

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    move v4, v3

    :goto_10
    add-int v6, v3, v2

    if-ge v4, v6, :cond_2c

    if-ne v4, v3, :cond_28

    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v1

    :goto_1a
    add-int v0, v4, v5

    if-lt v0, p1, :cond_25

    if-ge v0, p2, :cond_25

    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_28
    const v1, 0xfeff

    goto :goto_1a

    :cond_2c
    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 5

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .registers 10

    const/4 v1, 0x0

    move v0, p1

    :goto_2
    if-gt v0, p2, :cond_1a

    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    if-gez v2, :cond_d

    move v2, p2

    :cond_d
    invoke-static {p3, p0, v0, v2, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v3

    cmpl-float v4, v3, v1

    if-lez v4, :cond_16

    move v1, v3

    :cond_16
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_2

    :cond_1a
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_a

    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    aget-char v0, v0, v1

    :goto_9
    return v0

    :cond_a
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    aget-char v0, v0, v1

    goto :goto_9
.end method

.method private getHorizontal(IZ)F
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    goto :goto_6
.end method

.method private getHorizontal(IZIZ)F
    .registers 19

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v8, :cond_3d

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    array-length v2, v12

    if-lez v2, :cond_3d

    new-instance v9, Landroid/text/Layout$TabStops;

    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_3d
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p4, :cond_60

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    cmpl-float v2, v13, v2

    if-lez v2, :cond_60

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v13, v2

    :cond_60
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getHorizontal(IZZ)F
    .registers 6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getJustifyWidth(I)F
    .registers 26

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/text/Layout;->mWidth:I

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    sget-object v16, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v14, Landroid/text/Spanned;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    if-eqz v17, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    add-int/lit8 v23, v17, -0x1

    invoke-interface/range {v22 .. v23}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v22

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d1

    :cond_3b
    const/4 v7, 0x1

    :goto_3c
    if-eqz v7, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v22

    const-class v23, Landroid/text/style/ParagraphStyle;

    move/from16 v0, v17

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v14, v0, v1, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v15

    const-class v22, Landroid/text/style/ParagraphStyle;

    move/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v14, v0, v15, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v11, v22, -0x1

    :goto_67
    if-ltz v11, :cond_7b

    aget-object v22, v16, v11

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/text/style/AlignmentSpan;

    move/from16 v22, v0

    if-eqz v22, :cond_d4

    aget-object v22, v16, v11

    check-cast v22, Landroid/text/style/AlignmentSpan;

    invoke-interface/range {v22 .. v22}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v12

    :cond_7b
    move-object/from16 v0, v16

    array-length v9, v0

    move/from16 v21, v7

    const/4 v11, 0x0

    :goto_81
    if-ge v11, v9, :cond_af

    aget-object v22, v16, v11

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move/from16 v22, v0

    if-eqz v22, :cond_d7

    aget-object v22, v16, v11

    check-cast v22, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface/range {v22 .. v22}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v4

    aget-object v22, v16, v11

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v18

    add-int v22, v18, v4

    move/from16 v0, p1

    move/from16 v1, v22

    if-ge v0, v1, :cond_d7

    const/16 v21, 0x1

    :cond_af
    const/4 v11, 0x0

    :goto_b0
    if-ge v11, v9, :cond_e3

    aget-object v22, v16, v11

    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    move/from16 v22, v0

    if-eqz v22, :cond_ce

    aget-object v10, v16, v11

    check-cast v10, Landroid/text/style/LeadingMarginSpan;

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_da

    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v22

    sub-int v13, v13, v22

    :cond_ce
    :goto_ce
    add-int/lit8 v11, v11, 0x1

    goto :goto_b0

    :cond_d1
    const/4 v7, 0x0

    goto/16 :goto_3c

    :cond_d4
    add-int/lit8 v11, v11, -0x1

    goto :goto_67

    :cond_d7
    add-int/lit8 v11, v11, 0x1

    goto :goto_81

    :cond_da
    move/from16 v0, v21

    invoke-interface {v10, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v22

    add-int v8, v8, v22

    goto :goto_ce

    :cond_e3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v22

    if-eqz v22, :cond_f6

    new-instance v19, Landroid/text/Layout$TabStops;

    const/16 v22, 0x14

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_f6
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v12, v0, :cond_129

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_126

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_104
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_14d

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_13d

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    :goto_11c
    sub-int v22, v13, v8

    sub-int v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    return v22

    :cond_126
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_104

    :cond_129
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v12, v0, :cond_13b

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_138

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_104

    :cond_138
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_104

    :cond_13b
    move-object v3, v12

    goto :goto_104

    :cond_13d
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v22

    move/from16 v0, v22

    neg-int v6, v0

    goto :goto_11c

    :cond_14d
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v22

    if-ne v3, v0, :cond_176

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_169

    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v22

    move/from16 v0, v22

    neg-int v6, v0

    goto :goto_11c

    :cond_169
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    goto :goto_11c

    :cond_176
    sget-object v22, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    goto :goto_11c
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .registers 14

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p3, :cond_47

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    :goto_a
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    :cond_38
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v9

    :cond_47
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_a
.end method

.method private getLineExtent(IZ)F
    .registers 16

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p2, :cond_37

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    :goto_c
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2f

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    array-length v1, v9

    if-lez v1, :cond_2f

    new-instance v8, Landroid/text/Layout$TabStops;

    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_2f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-nez v6, :cond_3c

    const/4 v1, 0x0

    return v1

    :cond_37
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_c

    :cond_3c
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    :cond_61
    invoke-virtual {v0, v12}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v11}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v10
.end method

.method private getLineHorizontals(IZZ)[F
    .registers 23

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v9, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_3b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v5, v6, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v16

    array-length v3, v0

    if-lez v3, :cond_3b

    new-instance v10, Landroid/text/Layout$TabStops;

    const/16 v3, 0x14

    move-object/from16 v0, v16

    invoke-direct {v10, v3, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_3b
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v17

    if-nez p3, :cond_5f

    const/4 v14, 0x0

    :goto_51
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v14, v3, :cond_5f

    aget-boolean v3, v17, v14

    xor-int/lit8 v3, v3, 0x1

    aput-boolean v3, v17, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_51

    :cond_5f
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v18

    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p2, :cond_86

    const/4 v14, 0x0

    :goto_6c
    move-object/from16 v0, v18

    array-length v3, v0

    if-gt v14, v3, :cond_86

    aget v3, v18, v14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_83

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    aput v3, v18, v14

    :cond_83
    add-int/lit8 v14, v14, 0x1

    goto :goto_6c

    :cond_86
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12, v15}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v13

    sub-int v3, v6, v5

    add-int/lit8 v3, v3, 0x1

    new-array v11, v3, [F

    const/4 v14, 0x0

    :goto_9d
    array-length v3, v11

    if-ge v14, v3, :cond_a9

    int-to-float v3, v13

    aget v4, v18, v14

    add-float/2addr v3, v4

    aput v3, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_9d

    :cond_a9
    return-object v11
.end method

.method private getLineStartPos(III)I
    .registers 15

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_24

    const/4 v9, 0x1

    if-ne v1, v9, :cond_21

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :cond_11
    :goto_11
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_3a

    const/4 v9, 0x1

    if-ne v1, v9, :cond_31

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p2, v9

    :goto_20
    return v8

    :cond_21
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_11

    :cond_24
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_11

    const/4 v9, 0x1

    if-ne v1, v9, :cond_2e

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_11

    :cond_2e
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_11

    :cond_31
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p3, v9

    goto :goto_20

    :cond_3a
    const/4 v7, 0x0

    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_69

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_69

    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    array-length v9, v6

    if-lez v9, :cond_69

    new-instance v7, Landroid/text/Layout$TabStops;

    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_69
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_8c

    const/4 v9, 0x1

    if-ne v1, v9, :cond_81

    sub-int v9, p3, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    goto :goto_20

    :cond_81
    sub-int v9, p2, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    goto :goto_20

    :cond_8c
    and-int/lit8 v2, v2, -0x2

    add-int v9, p2, p3

    sub-int/2addr v9, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    shr-int v8, v9, v10

    goto :goto_20
.end method

.method private getLineVisibleEnd(III)I
    .registers 7

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_d

    return p3

    :cond_b
    add-int/lit8 p3, p3, -0x1

    :cond_d
    if-le p3, p2, :cond_22

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1c

    add-int/lit8 v2, p3, -0x1

    return v2

    :cond_1c
    invoke-static {v0}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_22
    return p3
.end method

.method private getOffsetAtStartOf(I)I
    .registers 11

    const/4 v7, 0x0

    if-nez p1, :cond_4

    return v7

    :cond_4
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v7, 0xdc00

    if-lt v0, v7, :cond_26

    const v7, 0xdfff

    if-gt v0, v7, :cond_26

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v7, 0xd800

    if-lt v1, v7, :cond_26

    const v7, 0xdbff

    if-gt v1, v7, :cond_26

    add-int/lit8 p1, p1, -0x1

    :cond_26
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_53

    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_36
    array-length v7, v4

    if-ge v3, v7, :cond_53

    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge v5, p1, :cond_50

    if-le v2, p1, :cond_50

    move p1, v5

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_53
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .registers 16

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    const/4 v11, 0x0

    const/4 v1, -0x1

    if-ne v5, v1, :cond_58

    const/4 v1, 0x1

    :goto_16
    if-ne p2, v1, :cond_5a

    const/4 v9, 0x1

    :goto_19
    if-eqz v9, :cond_5d

    if-ne p1, v4, :cond_28

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_5c

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    :cond_28
    :goto_28
    if-eqz v11, :cond_3b

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v12

    if-eq v12, v5, :cond_3b

    xor-int/lit8 p2, p2, 0x1

    move v5, v12

    :cond_3b
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v1, p1, v3

    invoke-virtual {v0, v1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int p1, v3, v1

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v0

    return p1

    :cond_58
    move v1, v7

    goto :goto_16

    :cond_5a
    const/4 v9, 0x0

    goto :goto_19

    :cond_5c
    return p1

    :cond_5d
    if-ne p1, v3, :cond_28

    if-lez v10, :cond_65

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_28

    :cond_65
    return p1
.end method

.method private getParagraphLeadingMargin(I)I
    .registers 18

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_8

    const/4 v14, 0x0

    return v14

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    array-length v14, v12

    if-nez v14, :cond_29

    const/4 v14, 0x0

    return v14

    :cond_29
    const/4 v6, 0x0

    if-eqz v5, :cond_61

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_63

    const/4 v3, 0x1

    :goto_37
    move v13, v3

    const/4 v2, 0x0

    :goto_39
    array-length v14, v12

    if-ge v2, v14, :cond_67

    aget-object v14, v12, v2

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_5e

    aget-object v14, v12, v2

    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    aget-object v14, v12, v2

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_65

    const/4 v14, 0x1

    :goto_5d
    or-int/2addr v13, v14

    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_61
    const/4 v3, 0x1

    goto :goto_37

    :cond_63
    const/4 v3, 0x0

    goto :goto_37

    :cond_65
    const/4 v14, 0x0

    goto :goto_5d

    :cond_67
    const/4 v2, 0x0

    :goto_68
    array-length v14, v12

    if-ge v2, v14, :cond_75

    aget-object v8, v12, v2

    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    :cond_75
    return v6
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const/4 v1, 0x0

    if-ne p1, p2, :cond_a

    if-lez p1, :cond_a

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_a
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_15

    check-cast p0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isJustificationRequired(I)Z
    .registers 6

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/Layout;->mJustificationMode:I

    if-nez v2, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .registers 28

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v22

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    :try_start_11
    invoke-virtual/range {v3 .. v8}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    iget-boolean v4, v3, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v4, :cond_51

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v9, 0x1

    :goto_1b
    iget-object v13, v3, Landroid/text/MeasuredText;->mChars:[C

    iget v15, v3, Landroid/text/MeasuredText;->mLen:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_62

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    const-class v4, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/LeadingMarginSpan;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    :goto_41
    if-ge v4, v5, :cond_62

    aget-object v16, v20, v4

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    add-int v17, v17, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_51
    iget v4, v3, Landroid/text/MeasuredText;->mDir:I

    iget-object v5, v3, Landroid/text/MeasuredText;->mLevels:[B

    iget-object v7, v3, Landroid/text/MeasuredText;->mChars:[C

    iget v9, v3, Landroid/text/MeasuredText;->mLen:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v10

    iget v9, v3, Landroid/text/MeasuredText;->mDir:I

    goto :goto_1b

    :cond_62
    const/4 v14, 0x0

    :goto_63
    if-ge v14, v15, :cond_a0

    aget-char v4, v13, v14

    const/16 v5, 0x9

    if-ne v4, v5, :cond_c3

    const/4 v11, 0x1

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_a0

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v18

    const-class v4, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v21

    array-length v4, v0

    if-lez v4, :cond_a0

    new-instance v12, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v21

    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_a0
    move-object/from16 v4, v22

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F
    :try_end_ba
    .catchall {:try_start_11 .. :try_end_ba} :catchall_c6

    move-result v5

    add-float/2addr v4, v5

    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return v4

    :cond_c3
    add-int/lit8 v14, v14, 0x1

    goto :goto_63

    :catchall_c6
    move-exception v4

    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v4
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 11

    const/high16 v5, 0x41a00000    # 20.0f

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v0, 0x0

    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_40

    if-nez p4, :cond_15

    check-cast p0, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x1

    :cond_15
    const/4 v1, 0x0

    :goto_16
    array-length v4, p4

    if-ge v1, v4, :cond_38

    if-nez v0, :cond_24

    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_24

    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_24
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_21

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_21

    int-to-float v2, v3

    goto :goto_21

    :cond_38
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_40

    return v2

    :cond_40
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    return v4
.end method

.method private primaryIsTrailingPrevious(I)Z
    .registers 15

    const v12, 0x3ffffff

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_19
    array-length v11, v7

    if-ge v0, v11, :cond_39

    aget v11, v7, v0

    add-int v8, v6, v11

    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    if-le v3, v5, :cond_2a

    move v3, v5

    :cond_2a
    if-lt p1, v8, :cond_50

    if-ge p1, v3, :cond_50

    if-le p1, v8, :cond_31

    return v10

    :cond_31
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    :cond_39
    const/4 v11, -0x1

    if-ne v1, v11, :cond_43

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_53

    const/4 v1, 0x0

    :cond_43
    :goto_43
    const/4 v2, -0x1

    if-ne p1, v6, :cond_57

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_55

    const/4 v2, 0x0

    :cond_4d
    :goto_4d
    if-ge v2, v1, :cond_7b

    :goto_4f
    return v9

    :cond_50
    add-int/lit8 v0, v0, 0x2

    goto :goto_19

    :cond_53
    const/4 v1, 0x1

    goto :goto_43

    :cond_55
    const/4 v2, 0x1

    goto :goto_4d

    :cond_57
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_5a
    array-length v11, v7

    if-ge v0, v11, :cond_4d

    aget v11, v7, v0

    add-int v8, v6, v11

    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    if-le v3, v5, :cond_6b

    move v3, v5

    :cond_6b
    if-lt p1, v8, :cond_78

    if-ge p1, v3, :cond_78

    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    goto :goto_4d

    :cond_78
    add-int/lit8 v0, v0, 0x2

    goto :goto_5a

    :cond_7b
    move v9, v10

    goto :goto_4f
.end method

.method private primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .registers 15

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    iget-object v6, v9, Landroid/text/Layout$Directions;->mDirections:[I

    sub-int v9, v4, v5

    add-int/lit8 v9, v9, 0x1

    new-array v8, v9, [Z

    sub-int v9, v4, v5

    add-int/lit8 v9, v9, 0x1

    new-array v2, v9, [B

    const/4 v1, 0x0

    :goto_1d
    array-length v9, v6

    if-ge v1, v9, :cond_43

    aget v9, v6, v1

    add-int v7, v5, v9

    add-int/lit8 v9, v1, 0x1

    aget v9, v6, v9

    const v12, 0x3ffffff

    and-int/2addr v9, v12

    add-int v3, v7, v9

    if-le v3, v4, :cond_31

    move v3, v4

    :cond_31
    sub-int v9, v3, v5

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v12, v1, 0x1

    aget v12, v6, v12

    ushr-int/lit8 v12, v12, 0x1a

    and-int/lit8 v12, v12, 0x3f

    int-to-byte v12, v12

    aput-byte v12, v2, v9

    add-int/lit8 v1, v1, 0x2

    goto :goto_1d

    :cond_43
    const/4 v1, 0x0

    :goto_44
    array-length v9, v6

    if-ge v1, v9, :cond_72

    aget v9, v6, v1

    add-int v7, v5, v9

    add-int/lit8 v9, v1, 0x1

    aget v9, v6, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    int-to-byte v0, v9

    sub-int v12, v7, v5

    if-ne v7, v5, :cond_69

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v9, v10, :cond_67

    move v9, v11

    :goto_5f
    if-le v0, v9, :cond_70

    move v9, v10

    :goto_62
    aput-boolean v9, v8, v12

    add-int/lit8 v1, v1, 0x2

    goto :goto_44

    :cond_67
    move v9, v10

    goto :goto_5f

    :cond_69
    sub-int v9, v7, v5

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v2, v9

    goto :goto_5f

    :cond_70
    move v9, v11

    goto :goto_62

    :cond_72
    return-object v8
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 15

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    if-gez v6, :cond_f

    return-void

    :cond_f
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    invoke-virtual {p0, p1, v5, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .registers 29

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v3, :cond_df

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v3, :cond_17

    new-instance v3, Landroid/text/SpanSet;

    const-class v5, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v3, v5}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    :cond_17
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v10, v5, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_d8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    sget-object v19, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v13, p5

    :goto_53
    move/from16 v0, p6

    if-gt v13, v0, :cond_d8

    move/from16 v11, v17

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    move/from16 v17, v12

    move/from16 v7, v16

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    move/from16 v16, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    move/from16 v0, v18

    if-lt v11, v0, :cond_c2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v0, v21

    invoke-virtual {v3, v11, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v18

    const/16 v20, 0x0

    if-ne v11, v12, :cond_8b

    if-nez v11, :cond_c2

    :cond_8b
    const/4 v14, 0x0

    :goto_8c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v14, v3, :cond_c2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v14

    if-ge v3, v12, :cond_a8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v14

    if-gt v3, v11, :cond_ab

    :cond_a8
    :goto_a8
    add-int/lit8 v14, v14, 0x1

    goto :goto_8c

    :cond_ab
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/LineBackgroundSpan;

    aget-object v3, v3, v14

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/ParagraphStyle;

    add-int/lit8 v20, v20, 0x1

    goto :goto_a8

    :cond_c2
    const/4 v15, 0x0

    :goto_c3
    move/from16 v0, v20

    if-ge v15, v0, :cond_d4

    aget-object v2, v19, v15

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_c3

    :cond_d4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_53

    :cond_d8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3}, Landroid/text/SpanSet;->recycle()V

    :cond_df
    if-eqz p2, :cond_fb

    if-eqz p4, :cond_ec

    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_ec
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p4, :cond_fb

    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_fb
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .registers 53

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v37

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v38

    sget-object v41, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v36, v0

    const/16 v27, 0x0

    const/16 v44, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v46

    move/from16 v33, p2

    move-object/from16 v43, v27

    :goto_2e
    move/from16 v0, v33

    move/from16 v1, p3

    if-gt v0, v1, :cond_28a

    move/from16 v12, v38

    add-int/lit8 v4, v33, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v38

    invoke-direct {v0, v1, v12, v2}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v13

    move/from16 v8, v37

    add-int/lit8 v4, v33, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    move/from16 v37, v10

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_153

    move-object/from16 v39, v11

    check-cast v39, Landroid/text/Spanned;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v45

    if-eqz v12, :cond_8e

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0xa

    if-ne v4, v15, :cond_127

    :cond_8e
    const/4 v14, 0x1

    :goto_8f
    move/from16 v0, v40

    if-lt v12, v0, :cond_ce

    move/from16 v0, v33

    move/from16 v1, p2

    if-eq v0, v1, :cond_9b

    if-eqz v14, :cond_ce

    :cond_9b
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v39

    move/from16 v1, v45

    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v40

    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v0, v12, v1, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v36, v0

    move-object/from16 v0, v41

    array-length v4, v0

    add-int/lit8 v35, v4, -0x1

    :goto_bc
    if-ltz v35, :cond_cc

    aget-object v4, v41, v35

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_12a

    aget-object v4, v41, v35

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v36

    :cond_cc
    const/16 v44, 0x0

    :cond_ce
    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v47, v14

    const/16 v35, 0x0

    :goto_d7
    move/from16 v0, v35

    move/from16 v1, v32

    if-ge v0, v1, :cond_101

    aget-object v4, v41, v35

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_12d

    aget-object v4, v41, v35

    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v29

    aget-object v4, v41, v35

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v42

    add-int v4, v42, v29

    move/from16 v0, v33

    if-ge v0, v4, :cond_12d

    const/16 v47, 0x1

    :cond_101
    const/16 v35, 0x0

    :goto_103
    move/from16 v0, v35

    move/from16 v1, v32

    if-ge v0, v1, :cond_153

    aget-object v4, v41, v35

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_124

    aget-object v3, v41, v35

    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    const/4 v4, -0x1

    if-ne v7, v4, :cond_130

    move-object/from16 v4, p1

    move-object/from16 v15, p0

    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int/2addr v6, v4

    :cond_124
    :goto_124
    add-int/lit8 v35, v35, 0x1

    goto :goto_103

    :cond_127
    const/4 v14, 0x0

    goto/16 :goto_8f

    :cond_12a
    add-int/lit8 v35, v35, -0x1

    goto :goto_bc

    :cond_12d
    add-int/lit8 v35, v35, 0x1

    goto :goto_d7

    :cond_130
    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, p0

    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v18, v18, v4

    goto :goto_124

    :cond_153
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v26

    if-eqz v26, :cond_1da

    xor-int/lit8 v4, v44, 0x1

    if-eqz v4, :cond_28e

    if-nez v43, :cond_1dd

    new-instance v27, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v41

    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :goto_16e
    const/16 v44, 0x1

    :goto_170
    move-object/from16 v28, v36

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_1ec

    const/4 v4, 0x1

    if-ne v7, v4, :cond_1e9

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :cond_17d
    :goto_17d
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_20b

    const/4 v4, 0x1

    if-ne v7, v4, :cond_1fb

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v30

    add-int v48, v18, v30

    :goto_192
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v25

    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_25b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_25b

    xor-int/lit8 v4, v26, 0x1

    if-eqz v4, :cond_25b

    xor-int/lit8 v4, v31, 0x1

    if-eqz v4, :cond_25b

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_1d0
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    add-int/lit8 v33, v33, 0x1

    move-object/from16 v43, v27

    goto/16 :goto_2e

    :cond_1da
    move-object/from16 v27, v43

    goto :goto_170

    :cond_1dd
    const/16 v4, 0x14

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v27, v43

    goto :goto_16e

    :cond_1e9
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_17d

    :cond_1ec
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_17d

    const/4 v4, 0x1

    if-ne v7, v4, :cond_1f8

    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_17d

    :cond_1f8
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_17d

    :cond_1fb
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    neg-int v0, v4

    move/from16 v30, v0

    sub-int v48, v6, v30

    goto :goto_192

    :cond_20b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v0, v4

    move/from16 v34, v0

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_245

    const/4 v4, 0x1

    if-ne v7, v4, :cond_235

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    neg-int v0, v4

    move/from16 v30, v0

    sub-int v4, v6, v34

    sub-int v48, v4, v30

    goto/16 :goto_192

    :cond_235
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v30

    sub-int v4, v18, v34

    add-int v48, v4, v30

    goto/16 :goto_192

    :cond_245
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v30

    and-int/lit8 v34, v34, -0x2

    add-int v4, v6, v18

    sub-int v4, v4, v34

    shr-int/lit8 v4, v4, 0x1

    add-int v48, v4, v30

    goto/16 :goto_192

    :cond_25b
    move-object/from16 v19, v46

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v7

    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    if-eqz v31, :cond_276

    sub-int v4, v6, v18

    sub-int v4, v4, v30

    int-to-float v4, v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/text/TextLine;->justify(F)V

    :cond_276
    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v46

    move-object/from16 v20, p1

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_1d0

    :cond_28a
    invoke-static/range {v46 .. v46}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void

    :cond_28e
    move-object/from16 v27, v43

    goto/16 :goto_170
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 16

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, v7}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v5, v9, v10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_a3

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v6, v9, v10

    :goto_2b
    const/4 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    const/16 v10, 0x800

    invoke-static {p3, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v10

    or-int v1, v9, v10

    const/4 v9, 0x2

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    const/4 v3, 0x0

    if-nez v1, :cond_42

    if-eqz v4, :cond_4c

    :cond_42
    sub-int v9, v0, v8

    shr-int/lit8 v3, v9, 0x2

    if-eqz v4, :cond_49

    add-int/2addr v8, v3

    :cond_49
    if-eqz v1, :cond_4c

    sub-int/2addr v0, v3

    :cond_4c
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_54

    const/high16 v5, 0x3f000000    # 0.5f

    :cond_54
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v6, v9

    if-gez v9, :cond_5c

    const/high16 v6, 0x3f000000    # 0.5f

    :cond_5c
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_a5

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v0

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_6a
    const/4 v9, 0x2

    if-ne v1, v9, :cond_be

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_86
    :goto_86
    const/4 v9, 0x2

    if-ne v4, v9, :cond_f2

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a2
    :goto_a2
    return-void

    :cond_a3
    move v6, v5

    goto :goto_2b

    :cond_a5
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_6a

    :cond_be
    const/4 v9, 0x1

    if-ne v1, v9, :cond_86

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_86

    :cond_f2
    const/4 v9, 0x1

    if-ne v4, v9, :cond_a2

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_a2
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .registers 2

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHeight(Z)I
    .registers 3

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHyphen(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public final getLineAscent(I)I
    .registers 5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4

    if-eqz p2, :cond_17

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_17
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, -0x1

    :goto_6
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_17

    move v1, v0

    goto :goto_6

    :cond_17
    move v2, v0

    goto :goto_6

    :cond_19
    if-gez v2, :cond_1c

    return v5

    :cond_1c
    return v2
.end method

.method public getLineForVertical(I)I
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, -0x1

    :goto_6
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_17

    move v1, v0

    goto :goto_6

    :cond_17
    move v2, v0

    goto :goto_6

    :cond_19
    if-gez v2, :cond_1c

    return v5

    :cond_1c
    return v2
.end method

.method public getLineLeft(I)F
    .registers 10

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_f

    return v6

    :cond_f
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_21

    if-ne v1, v7, :cond_20

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    :cond_20
    return v6

    :cond_21
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2e

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    :cond_2e
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3e

    if-ne v1, v7, :cond_35

    return v6

    :cond_35
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    :cond_3e
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    return v5
.end method

.method public getLineMax(I)F
    .registers 5

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_12

    :goto_f
    add-float v2, v0, v1

    return v2

    :cond_12
    neg-float v1, v1

    goto :goto_f
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .registers 10

    const/4 v7, -0x1

    const/4 v6, 0x0

    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    :try_start_5
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_35

    move-result-wide v6

    monitor-exit v5

    return-wide v6

    :cond_15
    :try_start_15
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_35

    monitor-exit v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt v3, v0, :cond_38

    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    :catchall_35
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_38
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getLineRight(I)F
    .registers 9

    const/4 v6, -0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_18

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    :cond_18
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2d

    if-ne v1, v6, :cond_22

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    :cond_22
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    :cond_2d
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_35

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    :cond_35
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_44

    if-ne v1, v6, :cond_40

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    return v5

    :cond_40
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    :cond_44
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    return v5
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .registers 4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .registers 5

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_12

    :goto_f
    add-float v2, v0, v1

    return v2

    :cond_12
    neg-float v1, v1

    goto :goto_f
.end method

.method public getOffsetForHorizontal(IF)I
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public getOffsetForHorizontal(IFZ)I
    .registers 33

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v10

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    new-instance v21, Landroid/text/Layout$HorizontalMeasurementProvider;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_aa

    move/from16 v25, v8

    :goto_3a
    move v15, v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v5

    sub-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const/16 v22, 0x0

    :goto_49
    iget-object v5, v10, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v5, v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_13d

    iget-object v5, v10, Landroid/text/Layout$Directions;->mDirections:[I

    aget v5, v5, v22

    add-int v19, v7, v5

    iget-object v5, v10, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v6, v22, 0x1

    aget v5, v5, v6

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    add-int v28, v19, v5

    iget-object v5, v10, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v6, v22, 0x1

    aget v5, v5, v6

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_be

    const/16 v23, 0x1

    :goto_6f
    if-eqz v23, :cond_c1

    const/16 v27, -0x1

    :goto_73
    move/from16 v0, v28

    move/from16 v1, v25

    if-le v0, v1, :cond_7b

    move/from16 v28, v25

    :cond_7b
    add-int/lit8 v5, v28, -0x1

    add-int/lit8 v20, v5, 0x1

    add-int/lit8 v5, v19, 0x1

    add-int/lit8 v24, v5, -0x1

    :goto_83
    sub-int v5, v20, v24

    const/4 v6, 0x1

    if-le v5, v6, :cond_c7

    add-int v5, v20, v24

    div-int/lit8 v18, v5, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v13

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v5

    move/from16 v0, v27

    int-to-float v6, v0

    mul-float/2addr v5, v6

    move/from16 v0, v27

    int-to-float v6, v0

    mul-float v6, v6, p2

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_c4

    move/from16 v20, v18

    goto :goto_83

    :cond_aa
    sub-int v5, v8, v7

    add-int/lit8 v6, v8, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v5

    add-int v25, v5, v7

    goto/16 :goto_3a

    :cond_be
    const/16 v23, 0x0

    goto :goto_6f

    :cond_c1
    const/16 v27, 0x1

    goto :goto_73

    :cond_c4
    move/from16 v24, v18

    goto :goto_83

    :cond_c7
    add-int/lit8 v5, v19, 0x1

    move/from16 v0, v24

    if-ge v0, v5, :cond_cf

    add-int/lit8 v24, v19, 0x1

    :cond_cf
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_123

    sub-int v5, v24, v7

    move/from16 v0, v23

    invoke-virtual {v4, v5, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v5

    add-int v14, v5, v7

    sub-int v5, v14, v7

    xor-int/lit8 v6, v23, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v5

    add-int v24, v5, v7

    move/from16 v0, v24

    move/from16 v1, v19

    if-lt v0, v1, :cond_123

    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_123

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v5

    sub-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v28

    if-ge v14, v0, :cond_11b

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v5

    sub-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v26

    cmpg-float v5, v26, v17

    if-gez v5, :cond_11b

    move/from16 v17, v26

    move/from16 v24, v14

    :cond_11b
    cmpg-float v5, v17, v16

    if-gez v5, :cond_123

    move/from16 v16, v17

    move/from16 v15, v24

    :cond_123
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v5

    sub-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v5, v17, v16

    if-gez v5, :cond_139

    move/from16 v16, v17

    move/from16 v15, v19

    :cond_139
    add-int/lit8 v22, v22, 0x2

    goto/16 :goto_49

    :cond_13d
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v5

    sub-float v5, v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    cmpg-float v5, v17, v16

    if-gtz v5, :cond_153

    move/from16 v16, v17

    move/from16 v15, v25

    :cond_153
    invoke-static {v4}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v15
.end method

.method public getOffsetToLeftOf(I)I
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .registers 2

    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 9

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_25

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    array-length v2, v3

    if-lez v2, :cond_25

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :cond_25
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_f

    :cond_e
    return v1

    :cond_f
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2
.end method

.method public final getParagraphRight(I)I
    .registers 5

    iget v1, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_f

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    :cond_f
    return v1

    :cond_10
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v1, v2

    return v2
.end method

.method public getPrimaryHorizontal(I)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .registers 5

    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getRunRange(I)J
    .registers 12

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v7, :cond_11

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v7, :cond_1a

    :cond_11
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v9, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    :cond_1a
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    const/4 v1, 0x0

    :goto_21
    array-length v7, v5

    if-ge v1, v7, :cond_3e

    aget v7, v5, v1

    add-int v6, v4, v7

    add-int/lit8 v7, v1, 0x1

    aget v7, v5, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int v2, v6, v7

    if-lt p1, v6, :cond_3b

    if-ge p1, v2, :cond_3b

    invoke-static {v6, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    :cond_3b
    add-int/lit8 v1, v1, 0x2

    goto :goto_21

    :cond_3e
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-static {v9, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8
.end method

.method public getSecondaryHorizontal(I)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .registers 5

    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .registers 23

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_a

    return-void

    :cond_a
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_16

    move/from16 v17, p2

    move/from16 p2, p1

    move/from16 p1, v17

    :cond_16
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    if-ne v3, v15, :cond_3c

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    :goto_3b
    return-void

    :cond_3c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_9e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_79
    add-int/lit8 v16, v3, 0x1

    :goto_7b
    move/from16 v0, v16

    if-ge v0, v15, :cond_b6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_7b

    :cond_9e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_79

    :cond_b6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_f0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_3b

    :cond_f0
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_3b
.end method

.method public final getSpacingAdd()F
    .registers 2

    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .registers 2

    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .registers 2

    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .registers 2

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .registers 4

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void
.end method

.method public isLevelBoundary(I)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_12

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_13

    :cond_12
    return v9

    :cond_13
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-eq p1, v4, :cond_21

    if-ne p1, v3, :cond_3e

    :cond_21
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v8, :cond_36

    const/4 v5, 0x0

    :goto_28
    if-ne p1, v4, :cond_38

    const/4 v6, 0x0

    :goto_2b
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_3c

    :goto_35
    return v8

    :cond_36
    const/4 v5, 0x1

    goto :goto_28

    :cond_38
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_2b

    :cond_3c
    move v8, v9

    goto :goto_35

    :cond_3e
    sub-int/2addr p1, v4

    const/4 v1, 0x0

    :goto_40
    array-length v10, v7

    if-ge v1, v10, :cond_4b

    aget v10, v7, v1

    if-ne p1, v10, :cond_48

    return v8

    :cond_48
    add-int/lit8 v1, v1, 0x2

    goto :goto_40

    :cond_4b
    return v9
.end method

.method public isRtlCharAt(I)Z
    .registers 14

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_f

    return v9

    :cond_f
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_14

    return v8

    :cond_14
    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    const/4 v1, 0x0

    :goto_1b
    array-length v10, v6

    if-ge v1, v10, :cond_42

    aget v10, v6, v1

    add-int v7, v5, v10

    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int v3, v7, v10

    if-lt p1, v7, :cond_3f

    if-ge p1, v3, :cond_3f

    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v2, v10, 0x3f

    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_3d

    :goto_3c
    return v8

    :cond_3d
    move v8, v9

    goto :goto_3c

    :cond_3f
    add-int/lit8 v1, v1, 0x2

    goto :goto_1b

    :cond_42
    return v9
.end method

.method protected final isSpanned()Z
    .registers 2

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10

    if-gez p3, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return-void
.end method

.method protected setJustificationMode(I)V
    .registers 2

    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    return-void
.end method

.method public shouldClampCursor(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/text/Layout;->-getandroid-text-Layout$AlignmentSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1e

    return v1

    :pswitch_14
    return v0

    :pswitch_15
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-lez v2, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
