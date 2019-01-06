.class public Lcom/android/systemui/screenshot/ScreenshotScrollView;
.super Landroid/view/View;
.source "ScreenshotScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotScrollView$1;,
        Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;
    }
.end annotation


# instance fields
.field private mAnimatableOffsetY:F

.field private mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

.field mAnimatingStepRunnable:Ljava/lang/Runnable;

.field private mAnimatorStep:I

.field private mBottomPart:Landroid/graphics/Bitmap;

.field private mFirstClickTime:J

.field private mGotoSingleAnimator:Landroid/animation/ValueAnimator;

.field private mIsAnimatingStoped:Z

.field private mIsBuildingLongScreenshot:Z

.field private mIsManuTaking:Z

.field private mIsTakingLongScreenshot:Z

.field private mLastTouchY:F

.field private mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

.field private mMaxOffsetY:F

.field private mMinOffsetY:F

.field private mMinTotalHeight:I

.field private mOffsetY:F

.field private mScroller:Landroid/widget/Scroller;

.field private mShowBig:F

.field private mShowBigAnimator:Landroid/animation/ValueAnimator;

.field private mShowedPageCount:I

.field private mSingleBitmap:Landroid/graphics/Bitmap;

.field private mTotalHeight:I

.field private mUiState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/screenshot/ScreenshotScrollView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatorStep:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/screenshot/ScreenshotScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsAnimatingStoped:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/screenshot/ScreenshotScrollView;)Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/screenshot/ScreenshotScrollView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/screenshot/ScreenshotScrollView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/screenshot/ScreenshotScrollView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/screenshot/ScreenshotScrollView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/screenshot/ScreenshotScrollView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->doAnimatingStep(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotScrollView;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingStepRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatorStep:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotScrollView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotScrollView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private calcScale(Z)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(ZF)F

    move-result v0

    return v0
.end method

.method private calcScale(ZF)F
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidthInner()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v3, v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeightInner()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v0, v5, v6

    sub-float v5, v7, p2

    mul-float/2addr v5, v2

    mul-float v6, p2, v0

    add-float v2, v5, v6

    :goto_0
    return v2

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v5}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidthInner()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float v2, v5, v6

    sub-float v5, v7, p2

    mul-float/2addr v5, v2

    add-float v2, v5, p2

    goto :goto_0
.end method

.method private doAnimatingStep(I)V
    .locals 7

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getMaxTotalHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinTotalHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v3}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    if-le v1, v6, :cond_2

    :cond_0
    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowedPageCount:I

    if-eq v2, v3, :cond_1

    iput v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowedPageCount:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowedPageCount:I

    invoke-interface {v3, v4}, Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;->onShowedPageCountChanged(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private drawLongScreenshot(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v0, p1}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mBottomPart:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mBottomPart:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mBottomPart:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawSingleBitmap(Landroid/graphics/Canvas;F)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v13, v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v0, v7

    div-float v0, v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v9, v13

    add-int v12, v6, v7

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int v11, v13, v0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int v8, v12, v0

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v13, v12, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, v13, v7

    int-to-float v1, v0

    int-to-float v2, v12

    add-int v0, v11, v7

    int-to-float v3, v0

    add-int v0, v8, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getMaxTotalHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v0}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method private getVelocityY(I)I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    float-to-int v0, v1

    neg-int v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private onDoubleClick(Landroid/view/MotionEvent;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeightInner()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v0, v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMaxOffsetY:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;->doubleClickEventReaction(Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "double_click"

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    if-nez v1, :cond_2

    const-string/jumbo v1, "normal"

    :goto_1
    invoke-static {v2, v3, v1}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;->doubleClickEventReaction(Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "longscreenshot"

    goto :goto_1
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetToShortMode(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    return-void
.end method

.method private setOffsetY(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMaxOffsetY:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    return-void
.end method


# virtual methods
.method public autoCalcPadding()V
    .locals 12

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0703ed

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    sget-boolean v8, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v8, :cond_0

    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07042f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v7, v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0703f0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v6, v7, v8

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0703ee

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget v8, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0703f1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0703ef

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v9

    sub-int/2addr v9, v6

    sub-int/2addr v9, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    mul-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    div-int/lit8 v4, v8, 0x2

    move v5, v4

    invoke-virtual {p0, v4, v6, v4, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setPadding(IIII)V

    iput v11, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    iput v11, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    iput v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMaxOffsetY:F

    return-void
.end method

.method public buildLongScreenshot()Landroid/graphics/Bitmap;
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v3}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->drawLongScreenshot(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public getHeightInner()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getIsManuTaking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    return v0
.end method

.method public getShowedPageCount()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowedPageCount:I

    return v0
.end method

.method public getWidthInner()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public gotoSingleBitmap()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v7, v5}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(ZF)F

    move-result v0

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(ZF)F

    move-result v2

    invoke-direct {p0, v9}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(Z)F

    move-result v1

    mul-float v3, v0, v1

    sub-float v5, v3, v2

    sub-float v6, v0, v2

    div-float v4, v5, v6

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v4, v5, v9

    aput v8, v5, v7

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mGotoSingleAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mGotoSingleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mGotoSingleAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotScrollView;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mGotoSingleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    sub-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->doAnimatingStep(I)V

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v6}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_4

    :cond_1
    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->calcScale(Z)F

    move-result v1

    if-eqz v3, :cond_6

    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    sub-float v8, v9, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    int-to-float v6, v5

    invoke-virtual {p1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {p1, v1, v1, v6, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->drawSingleBitmap(Landroid/graphics/Canvas;F)V

    :goto_2
    return-void

    :cond_2
    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setOffsetY(F)V

    goto :goto_0

    :cond_3
    iput v8, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-virtual {v6}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v0, v6

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getWidthInner()I

    move-result v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget-boolean v6, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    sub-int v2, v6, v7

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_3
    int-to-float v6, v4

    int-to-float v7, v2

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->drawLongScreenshot(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    sub-float v7, v9, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatableOffsetY:F

    float-to-int v7, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v2, v6

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/high16 v7, -0x80000000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsBuildingLongScreenshot:Z

    if-eqz v0, :cond_0

    return v10

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v10

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLastTouchY:F

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v10}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "longscreenshot_manual"

    invoke-static {v0, v2}, Lcom/android/systemui/screenshot/StatHelper;->recordCountEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->stopAnimating(Z)V

    iput-boolean v10, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    goto :goto_0

    :cond_4
    iput v10, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLastTouchY:F

    sub-float v9, v0, v1

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v0, :cond_5

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, v9

    float-to-int v0, v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->doAnimatingStep(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLastTouchY:F

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    if-eq v0, v3, :cond_6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    :cond_6
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    add-float/2addr v0, v9

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->setOffsetY(F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLastTouchY:F

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFriction(F)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    const/16 v3, 0x1b58

    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getVelocityY(I)I

    move-result v3

    neg-int v4, v3

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->setFriction(F)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    float-to-int v2, v2

    const/16 v3, 0x2710

    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getVelocityY(I)I

    move-result v4

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->performClick(Landroid/view/MotionEvent;)Z

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mUiState:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performClick(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mFirstClickTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->onDoubleClick(Landroid/view/MotionEvent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mFirstClickTime:J

    goto :goto_0
.end method

.method public resetToShortMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBig:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mShowBigAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    return-void
.end method

.method public setAnimatingCallback(Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingCallback:Lcom/android/systemui/screenshot/ScreenshotScrollView$AnimatingCallback;

    return-void
.end method

.method public setBitmaps(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    :goto_0
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetState()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    return-void

    :cond_1
    new-instance v1, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    invoke-direct {v1, v0}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;-><init>([Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mLongBitmapDrawable:Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;

    goto :goto_0
.end method

.method public setBottomPart(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mBottomPart:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->postInvalidate()V

    return-void
.end method

.method public setIsTakingLongScreenshot(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsTakingLongScreenshot:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsBuildingLongScreenshot:Z

    return-void
.end method

.method public setSingleBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->resetState()V

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->invalidate()V

    return-void
.end method

.method public startAnimating()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->startAnimating(Z)V

    return-void
.end method

.method public startAnimating(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsAnimatingStoped:Z

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsManuTaking:Z

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinTotalHeight:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingStepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopAnimating()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->stopAnimating(Z)V

    return-void
.end method

.method public stopAnimating(Z)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsAnimatingStoped:Z

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mAnimatingStepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mIsBuildingLongScreenshot:Z

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mTotalHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mMinOffsetY:F

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotScrollView;->mOffsetY:F

    :cond_0
    return-void
.end method
