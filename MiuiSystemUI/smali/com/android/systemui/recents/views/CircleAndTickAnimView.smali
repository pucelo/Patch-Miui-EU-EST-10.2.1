.class public Lcom/android/systemui/recents/views/CircleAndTickAnimView;
.super Landroid/view/View;
.source "CircleAndTickAnimView.java"


# instance fields
.field private isNormalDrawableShow:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleRotateDegrees:F

.field private mDiameter:I

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mTickDstPath:Landroid/graphics/Path;

.field private mTickEndPoint:F

.field private mTickEndPointAnimator:Landroid/animation/ValueAnimator;

.field private mTickPaint:Landroid/graphics/Paint;

.field private mTickPathLength:F

.field private mTickPathMeasure:Landroid/graphics/PathMeasure;

.field private mTickStartPoint:F

.field private mTickStartPointAnimator:Landroid/animation/ValueAnimator;

.field private mViewRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/recents/views/CircleAndTickAnimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/views/CircleAndTickAnimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPoint:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/views/CircleAndTickAnimView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPoint:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->initAnimator()V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->initTickPaint(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->stopAnimator()V

    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getIntrinsicHeight()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    return v0
.end method

.method private getIntrinsicWidth()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    return v0
.end method

.method private initAnimator()V
    .locals 5

    const/4 v4, 0x2

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/CircleAndTickAnimView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView$1;-><init>(Lcom/android/systemui/recents/views/CircleAndTickAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/CircleAndTickAnimView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView$2;-><init>(Lcom/android/systemui/recents/views/CircleAndTickAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/CircleAndTickAnimView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView$3;-><init>(Lcom/android/systemui/recents/views/CircleAndTickAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPointAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3d4c0000    # -90.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e9eb852    # 0.31f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initRightMarkPath()V
    .locals 4

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v1, v1

    const v2, 0x3e8a3d71    # 0.27f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v2, v2

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v1, v1

    const v2, 0x3eeb851f    # 0.46f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v2, v2

    const v3, 0x3f147ae1    # 0.58f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v1, v1

    const v2, 0x3f1eb852    # 0.62f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    int-to-float v2, v2

    const v3, 0x3ed70a3d    # 0.42f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathLength:F

    return-void
.end method

.method private initTickPaint(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    const v1, 0x7f060135

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public animatorStart(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->stopAnimator()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/high16 v8, 0x437f0000    # 255.0f

    const/4 v7, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    const/16 v6, 0x11

    invoke-static {v6, v3, v4, v5, v0}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getAlpha()F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathLength:F

    iget v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPoint:F

    mul-float v1, v3, v4

    iget v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathLength:F

    iget v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPoint:F

    mul-float v2, v3, v4

    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickDstPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    const/high16 v5, 0x42b40000    # 90.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    iget v4, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackDrawable(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setBackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDrawables(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setNormalDrawable(I)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setBackDrawable(I)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getIntrinsicWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    iget v2, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mDiameter:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->initRightMarkPath()V

    return-void
.end method

.method public setNormalDrawable(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setNormalDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNormalDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public stopAnimator()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iput v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mCircleRotateDegrees:F

    iput v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickStartPoint:F

    iput v1, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->mTickEndPoint:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->isNormalDrawableShow:Z

    return-void
.end method
