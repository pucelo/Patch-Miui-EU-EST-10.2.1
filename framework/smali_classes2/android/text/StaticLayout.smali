.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Builder;,
        Landroid/text/StaticLayout$LineBreaks;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x3

.field private static final HYPHEN_MASK:I = 0xff

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method static synthetic -wrap0(JJJIIZ)F
    .registers 11

    invoke-static/range {p0 .. p8}, Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()J
    .registers 2

    invoke-static {}, Landroid/text/StaticLayout;->nNewBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(JII[F)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    return-void
.end method

.method static synthetic -wrap3(JIIF)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    return-void
.end method

.method static synthetic -wrap4(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    return-void
.end method

.method static synthetic -wrap5(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    return-void
.end method

.method static synthetic -wrap6(J[I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    return-void
.end method

.method static synthetic -wrap7(JLjava/lang/String;[J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/text/StaticLayout;->nSetLocales(JLjava/lang/String;[J)V

    return-void
.end method

.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .registers 10

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_65

    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    :goto_6
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v3, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    iget v6, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    :goto_37
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void

    :cond_65
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_73

    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_73
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7b
    const/4 v0, 0x4

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_37
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 26

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .registers 25

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .registers 26

    if-nez p11, :cond_88

    move-object v3, p1

    :goto_3
    move-object v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v2, -0x1

    iput v2, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p9

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    if-eqz p11, :cond_9a

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    move/from16 v0, p12

    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    move-object/from16 v0, p11

    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v2, 0x6

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    :goto_64
    const-class v2, Landroid/text/Layout$Directions;

    iget v3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Layout$Directions;

    iput-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->-wrap0(Landroid/text/StaticLayout$Builder;)V

    return-void

    :cond_88
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_93

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_93
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9a
    const/4 v2, 0x4

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_64
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .registers 20

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v17

    sub-float p5, p5, v17

    cmpg-float v17, p8, p5

    if-gtz v17, :cond_3b

    xor-int/lit8 v17, p10, 0x1

    if-eqz v17, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x5

    const/16 v19, 0x0

    aput v19, v17, v18

    return-void

    :cond_3b
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_94

    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_45
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sub-int v10, p2, p1

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_e0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_cb

    const/4 v15, 0x0

    move v7, v10

    :goto_71
    if-lez v7, :cond_9c

    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_97

    :goto_83
    if-ge v7, v10, :cond_9c

    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v17, p3, v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_9c

    add-int/lit8 v7, v7, 0x1

    goto :goto_83

    :cond_94
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto :goto_45

    :cond_97
    add-float v15, v15, v16

    add-int/lit8 v7, v7, -0x1

    goto :goto_71

    :cond_9c
    const/4 v5, 0x0

    move v4, v7

    :cond_9e
    :goto_9e
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/StaticLayout;->mEllipsized:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v5, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x5

    aput v4, v17, v18

    return-void

    :cond_cb
    const-string/jumbo v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_9e

    const-string/jumbo v17, "StaticLayout"

    const-string/jumbo v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :cond_e0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_f0

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_10f

    :cond_f0
    const/4 v15, 0x0

    const/4 v7, 0x0

    :goto_f2
    if-ge v7, v10, :cond_102

    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_151

    :cond_102
    move v5, v7

    sub-int v4, v10, v7

    if-eqz p10, :cond_9e

    if-nez v4, :cond_9e

    if-lez v10, :cond_9e

    add-int/lit8 v5, v10, -0x1

    const/4 v4, 0x1

    goto :goto_9e

    :cond_10f
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_f0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_178

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    move v13, v10

    sub-float v17, p5, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v12, v17, v18

    move v13, v10

    :goto_130
    if-lez v13, :cond_15b

    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-lez v17, :cond_156

    :goto_140
    if-ge v13, v10, :cond_15b

    add-int v17, v13, p1

    sub-int v17, v17, p4

    aget v17, p3, v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_15b

    add-int/lit8 v13, v13, 0x1

    goto :goto_140

    :cond_151
    add-float v15, v15, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_f2

    :cond_156
    add-float v14, v14, v16

    add-int/lit8 v13, v13, -0x1

    goto :goto_130

    :cond_15b
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    const/4 v9, 0x0

    :goto_160
    if-ge v9, v13, :cond_16e

    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_173

    :cond_16e
    move v5, v9

    sub-int v4, v13, v9

    goto/16 :goto_9e

    :cond_173
    add-float v11, v11, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_160

    :cond_178
    const-string/jumbo v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_9e

    const-string/jumbo v17, "StaticLayout"

    const-string/jumbo v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e
.end method

.method private getTotalInsets(I)F
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_12
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    :cond_24
    int-to-float v1, v0

    return v1
.end method

.method private static native nAddMeasuredRun(JII[F)V
.end method

.method private static native nAddReplacementRun(JIIF)V
.end method

.method private static native nAddStyleRun(JJJIIZ)F
.end method

.method private static native nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I
.end method

.method private static native nFinishBuilder(J)V
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetWidths(J[F)V
.end method

.method static native nLoadHyphenator(Ljava/nio/ByteBuffer;III)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocales(JLjava/lang/String;[J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIIIZ)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .registers 60

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v28, v22, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v28

    add-int/lit8 v29, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v29

    if-lt v0, v2, :cond_5e

    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v29 .. v29}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/Layout$Directions;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object/from16 v0, v20

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v26, v19

    :cond_5e
    if-eqz p11, :cond_c9

    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v21, 0x0

    :goto_7a
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_b1

    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_9f

    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :goto_9c
    add-int/lit8 v21, v21, 0x1

    goto :goto_7a

    :cond_9f
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_9c

    :cond_b1
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    :cond_c9
    if-nez v22, :cond_1c0

    const/16 v18, 0x1

    :goto_cd
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_1c4

    const/4 v13, 0x1

    :goto_d6
    if-eqz p25, :cond_116

    if-eqz p29, :cond_1c7

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_1c7

    const/4 v12, 0x1

    :goto_e7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f0

    if-nez p29, :cond_f6

    :cond_f0
    if-eqz v18, :cond_1ca

    xor-int/lit8 v2, p29, 0x1

    if-eqz v2, :cond_1ca

    :cond_f6
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-eq v0, v2, :cond_1ca

    const/4 v14, 0x1

    :goto_fd
    if-eqz v14, :cond_116

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    :cond_116
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v2, :cond_1e1

    const/16 v24, 0x1

    :goto_11e
    if-eqz v18, :cond_12c

    if-eqz p21, :cond_128

    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_128
    if-eqz p20, :cond_12c

    move/from16 p4, p6

    :cond_12c
    if-eqz v24, :cond_13a

    if-eqz p21, :cond_136

    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_136
    if-eqz p20, :cond_13a

    move/from16 p5, p7

    :cond_13a
    if-eqz p15, :cond_225

    xor-int/lit8 v2, v24, 0x1

    if-eqz v2, :cond_225

    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_21b

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v15, v2

    :goto_158
    add-int/lit8 v2, v28, 0x0

    aput p2, v26, v2

    add-int/lit8 v2, v28, 0x1

    aput p8, v26, v2

    add-int/lit8 v2, v28, 0x2

    add-int v3, p5, v15

    aput v3, v26, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v2, :cond_17a

    if-eqz v13, :cond_17a

    if-eqz p20, :cond_228

    move/from16 v27, p7

    :goto_172
    sub-int v2, v27, p4

    add-int v2, v2, p8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_17a
    sub-int v2, p5, p4

    add-int/2addr v2, v15

    add-int p8, p8, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v28

    add-int/lit8 v2, v2, 0x0

    aput p3, v26, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v28

    add-int/lit8 v2, v2, 0x1

    aput p8, v26, v2

    add-int/lit8 v2, v28, 0x0

    aget v3, v26, v2

    const/high16 v4, 0x20000000

    and-int v4, v4, p14

    or-int/2addr v3, v4

    aput v3, v26, v2

    add-int/lit8 v2, v28, 0x3

    aput p14, v26, v2

    add-int/lit8 v2, v28, 0x0

    aget v3, v26, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v26, v2

    sget-object v25, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eqz p18, :cond_22c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v25, v2, v22

    :goto_1b5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    return p8

    :cond_1c0
    const/16 v18, 0x0

    goto/16 :goto_cd

    :cond_1c4
    const/4 v13, 0x0

    goto/16 :goto_d6

    :cond_1c7
    const/4 v12, 0x0

    goto/16 :goto_e7

    :cond_1ca
    if-nez v18, :cond_1de

    if-nez v13, :cond_1d2

    xor-int/lit8 v2, p29, 0x1

    if-eqz v2, :cond_1de

    :cond_1d2
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_1db

    const/4 v14, 0x1

    goto/16 :goto_fd

    :cond_1db
    const/4 v14, 0x0

    goto/16 :goto_fd

    :cond_1de
    const/4 v14, 0x0

    goto/16 :goto_fd

    :cond_1e1
    move/from16 v0, p24

    move/from16 v1, p19

    if-eq v0, v1, :cond_208

    if-lez p19, :cond_208

    add-int/lit8 v2, p19, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_205

    const/16 v23, 0x1

    :goto_1f7
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_20b

    xor-int/lit8 v2, v23, 0x1

    if-eqz v2, :cond_20b

    const/16 v24, 0x1

    goto/16 :goto_11e

    :cond_205
    const/16 v23, 0x0

    goto :goto_1f7

    :cond_208
    const/16 v23, 0x0

    goto :goto_1f7

    :cond_20b
    move/from16 v0, p2

    move/from16 v1, p19

    if-ne v0, v1, :cond_217

    if-eqz v23, :cond_217

    const/16 v24, 0x1

    goto/16 :goto_11e

    :cond_217
    const/16 v24, 0x0

    goto/16 :goto_11e

    :cond_21b
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v15, v2

    goto/16 :goto_158

    :cond_225
    const/4 v15, 0x0

    goto/16 :goto_158

    :cond_228
    move/from16 v27, p5

    goto/16 :goto_172

    :cond_22c
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_1b5
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .registers 122

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v72, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v37, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v100, v0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v43, v0

    new-instance v95, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct/range {v95 .. v95}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    const/4 v9, 0x4

    new-array v0, v9, [I

    move-object/from16 v107, v0

    const/16 v9, 0x10

    new-array v0, v9, [I

    move-object/from16 v85, v0

    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Landroid/os/LocaleList;)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ge v9, v10, :cond_e4

    const/4 v9, 0x0

    :goto_64
    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/16 v26, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v27, v9

    if-nez v9, :cond_75

    const/4 v9, 0x0

    cmpl-float v9, v28, v9

    if-eqz v9, :cond_e7

    :cond_75
    const/16 v33, 0x1

    :goto_77
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v31, v0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    const/16 v113, 0x0

    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_8d

    move-object/from16 v113, v5

    check-cast v113, Landroid/text/Spanned;

    :cond_8d
    move/from16 v6, v72

    :goto_8f
    move/from16 v0, v37

    if-gt v6, v0, :cond_4bb

    const/16 v9, 0xa

    move/from16 v0, v37

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    if-gez v7, :cond_ea

    move/from16 v7, v37

    :goto_9f
    const/4 v15, 0x1

    move/from16 v82, v100

    move/from16 v102, v100

    const/16 v29, 0x0

    if-eqz v113, :cond_fe

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v113

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v105

    check-cast v105, [Landroid/text/style/LeadingMarginSpan;

    const/16 v89, 0x0

    :goto_b4
    move-object/from16 v0, v105

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_ed

    aget-object v97, v105, v89

    aget-object v9, v105, v89

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v82, v82, v9

    aget-object v9, v105, v89

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v102, v102, v9

    move-object/from16 v0, v97

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_e1

    move-object/from16 v98, v97

    check-cast v98, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface/range {v98 .. v98}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_e1
    add-int/lit8 v89, v89, 0x1

    goto :goto_b4

    :cond_e4
    const/4 v9, -0x1

    goto/16 :goto_64

    :cond_e7
    const/16 v33, 0x0

    goto :goto_77

    :cond_ea
    add-int/lit8 v7, v7, 0x1

    goto :goto_9f

    :cond_ed
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v113

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v29

    array-length v9, v0

    if-nez v9, :cond_143

    const/16 v29, 0x0

    :cond_fe
    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v41, v0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v34, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v35, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v36, v0

    const/16 v17, 0x0

    if-eqz v113, :cond_18a

    const-class v9, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v113

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v115

    check-cast v115, [Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v115

    array-length v9, v0

    if-lez v9, :cond_18a

    move-object/from16 v0, v115

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v116, v0

    const/16 v89, 0x0

    :goto_131
    move-object/from16 v0, v115

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_17f

    aget-object v9, v115, v89

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v116, v89

    add-int/lit8 v89, v89, 0x1

    goto :goto_131

    :cond_143
    if-eqz v30, :cond_14d

    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v9, v10, :cond_154

    :cond_14d
    move-object/from16 v0, v29

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v30

    :cond_154
    const/16 v89, 0x0

    :goto_156
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_fe

    aget-object v9, v29, v89

    move-object/from16 v0, v113

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v99

    move/from16 v0, v99

    if-ge v0, v6, :cond_17c

    move-object/from16 v0, p0

    move/from16 v1, v99

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v30, v89

    :goto_179
    add-int/lit8 v89, v89, 0x1

    goto :goto_156

    :cond_17c
    aput v26, v30, v89

    goto :goto_179

    :cond_17f
    move-object/from16 v0, v116

    array-length v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v116

    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    move-object/from16 v17, v116

    :cond_18a
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    move/from16 v0, v82

    int-to-float v14, v0

    move/from16 v0, v102

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    if-eqz v9, :cond_204

    const/16 v21, 0x1

    :goto_1ac
    const/16 v18, 0x14

    invoke-static/range {v10 .. v21}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIIIZ)V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_1bd

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_246

    :cond_1bd
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_207

    const/16 v93, 0x0

    :goto_1c5
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_20f

    const/16 v103, 0x0

    :goto_1cd
    move/from16 v0, v93

    move/from16 v1, v103

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v91

    move/from16 v0, v91

    new-array v0, v0, [I

    move-object/from16 v90, v0

    const/16 v89, 0x0

    :goto_1e7
    move/from16 v0, v89

    move/from16 v1, v91

    if-ge v0, v1, :cond_23d

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_217

    const/16 v94, 0x0

    :goto_1f5
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_22a

    const/16 v104, 0x0

    :goto_1fd
    add-int v9, v94, v104

    aput v9, v90, v89

    add-int/lit8 v89, v89, 0x1

    goto :goto_1e7

    :cond_204
    const/16 v21, 0x0

    goto :goto_1ac

    :cond_207
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v93, v0

    goto :goto_1c5

    :cond_20f
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v103, v0

    goto :goto_1cd

    :cond_217
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v89

    add-int/lit8 v11, v93, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v94, v9, v10

    goto :goto_1f5

    :cond_22a
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v89

    add-int/lit8 v11, v103, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v104, v9, v10

    goto :goto_1fd

    :cond_23d
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v90

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    :cond_246
    const/16 v86, 0x0

    const/16 v108, 0x0

    move/from16 v112, v6

    :goto_24c
    move/from16 v0, v112

    if-ge v0, v7, :cond_2f8

    mul-int/lit8 v9, v86, 0x4

    move-object/from16 v0, v85

    array-length v10, v0

    if-lt v9, v10, :cond_26c

    mul-int/lit8 v9, v86, 0x4

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v88, v0

    mul-int/lit8 v9, v86, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v85

    move-object/from16 v1, v88

    invoke-static {v0, v10, v1, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v85, v88

    :cond_26c
    move-object/from16 v0, v107

    array-length v9, v0

    move/from16 v0, v108

    if-lt v0, v9, :cond_286

    mul-int/lit8 v9, v108, 0x2

    new-array v0, v9, [I

    move-object/from16 v88, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v107

    move-object/from16 v1, v88

    move/from16 v2, v108

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v107, v88

    :cond_286
    if-nez v113, :cond_2c6

    move/from16 v106, v7

    sub-int v111, v7, v112

    move-object/from16 v0, v46

    move/from16 v1, v111

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    :goto_295
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v85, v9

    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v85, v9

    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v85, v9

    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x3

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v10, v85, v9

    add-int/lit8 v86, v86, 0x1

    aput v106, v107, v108

    add-int/lit8 v108, v108, 0x1

    move/from16 v112, v106

    goto :goto_24c

    :cond_2c6
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v113

    move/from16 v1, v112

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v106

    sub-int v111, v106, v112

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v113

    move/from16 v1, v112

    move/from16 v2, v106

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v114

    check-cast v114, [Landroid/text/style/MetricAffectingSpan;

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v114

    move-object/from16 v1, v113

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v114

    check-cast v114, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v46

    move-object/from16 v1, v114

    move/from16 v2, v111

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto :goto_295

    :cond_2f8
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v41

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v95

    iget-object v9, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v0, v9

    move/from16 v24, v0

    move-object/from16 v20, v95

    invoke-static/range {v18 .. v24}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    move-result v78

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v80, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v96, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v84, v0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v101, v9, v10

    if-eqz v43, :cond_38c

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_383

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_389

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_386

    const/16 v81, 0x1

    :goto_359
    if-lez v101, :cond_3b7

    move/from16 v0, v101

    move/from16 v1, v78

    if-ge v0, v1, :cond_3b7

    if-eqz v81, :cond_3b7

    const/16 v117, 0x0

    const/16 v83, 0x0

    add-int/lit8 v89, v101, -0x1

    :goto_369
    move/from16 v0, v89

    move/from16 v1, v78

    if-ge v0, v1, :cond_3a5

    add-int/lit8 v9, v78, -0x1

    move/from16 v0, v89

    if-ne v0, v9, :cond_38f

    aget v9, v96, v89

    add-float v117, v117, v9

    :cond_379
    aget v9, v84, v89

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    or-int v83, v83, v9

    add-int/lit8 v89, v89, 0x1

    goto :goto_369

    :cond_383
    const/16 v81, 0x1

    goto :goto_359

    :cond_386
    const/16 v81, 0x0

    goto :goto_359

    :cond_389
    const/16 v81, 0x0

    goto :goto_359

    :cond_38c
    const/16 v81, 0x0

    goto :goto_359

    :cond_38f
    if-nez v89, :cond_3a0

    const/16 v92, 0x0

    :goto_393
    aget v9, v80, v89

    move/from16 v0, v92

    if-ge v0, v9, :cond_379

    aget v9, v41, v92

    add-float v117, v117, v9

    add-int/lit8 v92, v92, 0x1

    goto :goto_393

    :cond_3a0
    add-int/lit8 v9, v89, -0x1

    aget v92, v80, v9

    goto :goto_393

    :cond_3a5
    add-int/lit8 v9, v101, -0x1

    add-int/lit8 v10, v78, -0x1

    aget v10, v80, v10

    aput v10, v80, v9

    add-int/lit8 v9, v101, -0x1

    aput v117, v96, v9

    add-int/lit8 v9, v101, -0x1

    aput v83, v84, v9

    move/from16 v78, v101

    :cond_3b7
    move/from16 v20, v6

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v87, 0x0

    const/16 v109, 0x0

    const/16 v79, 0x0

    move/from16 v112, v6

    move/from16 v110, v109

    :goto_3cb
    move/from16 v0, v112

    if-ge v0, v7, :cond_4b7

    add-int/lit8 v109, v110, 0x1

    aget v106, v107, v110

    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x3

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v87, v87, 0x1

    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v24

    if-ge v9, v0, :cond_40b

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    :cond_40b
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v22

    if-ge v9, v0, :cond_419

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    :cond_419
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v23

    if-le v9, v0, :cond_427

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    :cond_427
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v25

    if-le v9, v0, :cond_435

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    :cond_435
    :goto_435
    move/from16 v0, v79

    move/from16 v1, v78

    if-ge v0, v1, :cond_445

    aget v9, v80, v79

    add-int/2addr v9, v6

    move/from16 v0, v112

    if-ge v9, v0, :cond_445

    add-int/lit8 v79, v79, 0x1

    goto :goto_435

    :cond_445
    move/from16 v0, v79

    move/from16 v1, v78

    if-ge v0, v1, :cond_4b1

    aget v9, v80, v79

    add-int/2addr v9, v6

    move/from16 v0, v106

    if-gt v9, v0, :cond_4b1

    aget v9, v80, v79

    add-int v21, v6, v9

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_4a5

    const/16 v47, 0x1

    :goto_45e
    aget v32, v84, v79

    aget v45, v96, v79

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v38, p2

    move/from16 v39, p3

    move-object/from16 v40, v12

    move/from16 v42, v6

    invoke-direct/range {v18 .. v47}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    move/from16 v0, v21

    move/from16 v1, v106

    if-ge v0, v1, :cond_4a8

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    :goto_490
    move/from16 v20, v21

    add-int/lit8 v79, v79, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_445

    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v9, :cond_445

    return-void

    :cond_4a5
    const/16 v47, 0x0

    goto :goto_45e

    :cond_4a8
    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    goto :goto_490

    :cond_4b1
    move/from16 v112, v106

    move/from16 v110, v109

    goto/16 :goto_3cb

    :cond_4b7
    move/from16 v0, v37

    if-ne v7, v0, :cond_540

    :cond_4bb
    move/from16 v0, v37

    move/from16 v1, v72

    if-eq v0, v1, :cond_4cb

    add-int/lit8 v9, v37, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_53f

    :cond_4cb
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_53f

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move/from16 v50, v37

    move/from16 v51, v37

    move-object/from16 v52, v8

    move-object/from16 v53, p1

    invoke-virtual/range {v48 .. v53}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v52, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v53, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v54, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v55, v0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v64, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v65, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v66, v0

    const/16 v75, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v77, 0x0

    move-object/from16 v48, p0

    move-object/from16 v49, v5

    move/from16 v50, v37

    move/from16 v51, v37

    move/from16 v56, v26

    move/from16 v57, v27

    move/from16 v58, v28

    move-object/from16 v61, v31

    move/from16 v63, v33

    move/from16 v67, v37

    move/from16 v68, p2

    move/from16 v69, p3

    move-object/from16 v73, v43

    move/from16 v74, v44

    move-object/from16 v76, v46

    invoke-direct/range {v48 .. v77}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    :cond_53f
    return-void

    :cond_540
    move v6, v7

    goto/16 :goto_8f
.end method

.method public getBottomPadding()I
    .registers 2

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .registers 4

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsisStart(I)I
    .registers 4

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsizedWidth()I
    .registers 2

    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight(Z)I
    .registers 6

    const/4 v3, -0x1

    if-eqz p1, :cond_40

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v0, v1, :cond_40

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v0, v3, :cond_40

    const-string/jumbo v0, "StaticLayout"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string/jumbo v0, "StaticLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " lineCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    if-eqz p1, :cond_4f

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v0, v1, :cond_4f

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v0, v3, :cond_4f

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :goto_4e
    return v0

    :cond_4f
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    goto :goto_4e
.end method

.method public getHyphen(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 8

    const/4 v3, 0x0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_18

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v2, :cond_a

    return v3

    :cond_a
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    return v2

    :cond_18
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_30

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_21

    return v3

    :cond_21
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    neg-int v2, v2

    return v2

    :cond_30
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_5d

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v2, :cond_46

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v0, v2, v3

    :cond_46
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_58

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    :cond_58
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    :cond_5d
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhandled alignment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getLineContainsTab(I)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public getLineCount()I
    .registers 2

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .registers 9

    const/4 v6, 0x0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v3, -0x1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    :goto_6
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1c

    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_1a

    move v1, v0

    goto :goto_6

    :cond_1a
    move v3, v0

    goto :goto_6

    :cond_1c
    if-gez v3, :cond_1f

    return v6

    :cond_1f
    return v3
.end method

.method public getLineStart(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .registers 4

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .registers 2

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
