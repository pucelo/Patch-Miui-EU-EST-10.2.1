.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field private mBuilder:Landroid/text/StaticLayout$Builder;

.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .registers 5

    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_22

    monitor-exit v3

    return-object v1

    :cond_1b
    monitor-exit v3

    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    return-object v1

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/text/MeasuredText;->finish()V

    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_8
    :try_start_8
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_1c

    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1f

    :cond_1a
    monitor-exit v2

    return-object v3

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 28

    if-eqz p3, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/text/TextPaint;

    if-eq v2, v3, :cond_26

    :cond_22
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_67

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_58

    const/4 v8, 0x1

    :goto_34
    const/16 v23, 0x0

    if-eqz v9, :cond_5a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_57

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    invoke-virtual {v2, v4, v3, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    :cond_57
    :goto_57
    return v23

    :cond_58
    const/4 v8, 0x0

    goto :goto_34

    :cond_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v23

    goto :goto_57

    :cond_67
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v2, v4

    move v12, v4

    add-int/lit8 v20, v4, 0x1

    add-int v19, v4, p2

    :goto_74
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_84

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v20

    move/from16 v0, v21

    if-eq v2, v0, :cond_d1

    :cond_84
    and-int/lit8 v2, v21, 0x1

    if-eqz v2, :cond_b8

    const/4 v8, 0x1

    :goto_89
    if-eqz v9, :cond_ba

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v13, v20, v12

    sub-int v15, v20, v12

    move-object/from16 v10, p1

    move v14, v12

    move/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v18, v12

    invoke-virtual/range {v10 .. v18}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float v22, v22, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_b1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move/from16 v0, v20

    invoke-virtual {v2, v12, v0, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    :cond_b1
    :goto_b1
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_c9

    return v22

    :cond_b8
    const/4 v8, 0x0

    goto :goto_89

    :cond_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v2, v0, v12, v1, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v2

    add-float v22, v22, v2

    goto :goto_b1

    :cond_c9
    move/from16 v12, v20

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v2, v20

    :cond_d1
    add-int/lit8 v20, v20, 0x1

    goto :goto_74
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 16

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_a
    array-length v2, p2

    if-ge v7, v2, :cond_1d

    aget-object v8, p2, v7

    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_19

    move-object v0, v8

    check-cast v0, Landroid/text/style/ReplacementSpan;

    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_19
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_16

    :cond_1d
    if-nez v0, :cond_38

    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    :goto_23
    if-eqz p4, :cond_37

    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_75

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_37
    :goto_37
    return v10

    :cond_38
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-nez v2, :cond_65

    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    :goto_5d
    if-ge v7, v6, :cond_6f

    const/4 v2, 0x0

    aput v2, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_65
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    iget v3, p0, Landroid/text/MeasuredText;->mPos:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v3, v4, v10}, Landroid/text/StaticLayout$Builder;->addReplacementRun(IIF)V

    :cond_6f
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_23

    :cond_75
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_37
.end method

.method breakText(IZF)I
    .registers 10

    const/16 v5, 0x20

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz p2, :cond_22

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p1, :cond_11

    aget v2, v1, v0

    sub-float/2addr p3, v2

    cmpg-float v2, p3, v4

    if-gez v2, :cond_1e

    :cond_11
    :goto_11
    if-lez v0, :cond_21

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_21

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    return v0

    :cond_22
    add-int/lit8 v0, p1, -0x1

    :goto_24
    if-ltz v0, :cond_2d

    aget v2, v1, v0

    sub-float/2addr p3, v2

    cmpg-float v2, p3, v4

    if-gez v2, :cond_44

    :cond_2d
    :goto_2d
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_47

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-eq v2, v5, :cond_41

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_47

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :cond_47
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method finish()V
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    iget v0, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_11

    iput-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    iput-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    iput-object v2, p0, Landroid/text/MeasuredText;->mLevels:[B

    :cond_11
    return-void
.end method

.method measure(II)F
    .registers 7

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    move v0, p1

    :goto_4
    if-ge v0, p2, :cond_c

    aget v3, v1, v0

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V
    .registers 19

    move-object/from16 v0, p5

    iput-object v0, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v6, p3, p2

    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    const/4 v10, 0x0

    iput v10, p0, Landroid/text/MeasuredText;->mPos:I

    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v10, :cond_18

    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v10, v10

    if-ge v10, v6, :cond_1e

    :cond_18
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    :cond_1e
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v10, :cond_27

    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v10, v10

    if-ge v10, v6, :cond_2d

    :cond_27
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    :cond_2d
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_70

    move-object v7, p1

    check-cast v7, Landroid/text/Spanned;

    const-class v10, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p3

    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_47
    array-length v10, v8

    if-ge v3, v10, :cond_70

    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    if-gez v9, :cond_5d

    const/4 v9, 0x0

    :cond_5d
    if-le v2, v6, :cond_60

    move v2, v6

    :cond_60
    move v5, v9

    :goto_61
    if-ge v5, v2, :cond_6d

    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const v11, 0xfffc

    aput-char v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_70
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_7c

    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_8c

    :cond_7c
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v10

    if-eqz v10, :cond_92

    const/4 v10, 0x1

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    :goto_8b
    return-void

    :cond_8c
    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_7c

    :cond_92
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v10, :cond_9b

    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v10, v10

    if-ge v10, v6, :cond_a1

    :cond_9b
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    :cond_a1
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_b7

    const/4 v1, 0x1

    :goto_a8
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v10

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_8b

    :cond_b7
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_bf

    const/4 v1, -0x1

    goto :goto_a8

    :cond_bf
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_c7

    const/4 v1, 0x2

    goto :goto_a8

    :cond_c7
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_cf

    const/4 v1, -0x2

    goto :goto_a8

    :cond_cf
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    if-eqz v4, :cond_dc

    const/4 v1, -0x1

    goto :goto_a8

    :cond_dc
    const/4 v1, 0x1

    goto :goto_a8
.end method

.method setPos(I)V
    .registers 3

    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    return-void
.end method
