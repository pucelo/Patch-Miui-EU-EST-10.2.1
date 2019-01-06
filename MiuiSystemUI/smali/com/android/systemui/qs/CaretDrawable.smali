.class public Lcom/android/systemui/qs/CaretDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CaretDrawable.java"


# instance fields
.field private final mCaretHeight:I

.field private mCaretPaint:Landroid/graphics/Paint;

.field private mCaretProgress:F

.field private final mCaretWidth:I

.field private mPath:Landroid/graphics/Path;

.field private mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretProgress:F

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070364

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070363

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    const v4, 0x7f06011a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    add-int v4, v2, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    const v4, 0x7f06011e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const v3, 0x7f070365

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretWidth:I

    const v3, 0x7f070362

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretHeight:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    sub-float v4, v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/qs/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    sub-float v1, v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/qs/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float/2addr v6, v8

    add-float v2, v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/qs/CaretDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    sub-float v6, v1, v6

    div-float/2addr v6, v8

    add-float v3, v5, v6

    const/high16 v5, 0x40800000    # 4.0f

    div-float v0, v1, v5

    iget-object v5, p0, Lcom/android/systemui/qs/CaretDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    iget-object v5, p0, Lcom/android/systemui/qs/CaretDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/qs/CaretDrawable;->getNormalizedCaretProgress()F

    move-result v6

    sub-float v6, v9, v6

    mul-float/2addr v6, v0

    add-float/2addr v6, v3

    invoke-virtual {v5, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/qs/CaretDrawable;->mPath:Landroid/graphics/Path;

    div-float v6, v4, v8

    add-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/systemui/qs/CaretDrawable;->getNormalizedCaretProgress()F

    move-result v7

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/qs/CaretDrawable;->mPath:Landroid/graphics/Path;

    add-float v6, v2, v4

    invoke-virtual {p0}, Lcom/android/systemui/qs/CaretDrawable;->getNormalizedCaretProgress()F

    move-result v7

    sub-float v7, v9, v7

    mul-float/2addr v7, v0

    add-float/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/qs/CaretDrawable;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretWidth:I

    return v0
.end method

.method public getNormalizedCaretProgress()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretProgress:F

    const/high16 v1, -0x40800000    # -1.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/CaretDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/CaretDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCaretProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/CaretDrawable;->mCaretProgress:F

    invoke-virtual {p0}, Lcom/android/systemui/qs/CaretDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
