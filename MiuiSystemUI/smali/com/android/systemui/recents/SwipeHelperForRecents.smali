.class public Lcom/android/systemui/recents/SwipeHelperForRecents;
.super Ljava/lang/Object;
.source "SwipeHelperForRecents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;,
        Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;
    }
.end annotation


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrView:Landroid/view/View;

.field private mCurrentAnim:Landroid/animation/Animator;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private mDismissPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPerpendicularInitialTouchPos:F

.field private mSnappingChild:Z

.field private mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mTranslation:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/SwipeHelperForRecents;)Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/SwipeHelperForRecents;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/SwipeHelperForRecents;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDisableHwLayers:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/SwipeHelperForRecents;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDismissPendingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/SwipeHelperForRecents;)Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressListener:Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/SwipeHelperForRecents;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/recents/SwipeHelperForRecents;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrentAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/SwipeHelperForRecents;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/SwipeHelperForRecents;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSnappingChild:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/recents/SwipeHelperForRecents$Callback;Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0x12c

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->SWIPE_ESCAPE_VELOCITY:F

    iput v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    iput v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->MAX_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->MAX_DISMISS_VELOCITY:I

    iput v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mMinSwipeProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mMaxSwipeProgress:F

    iput v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTmpPos:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDismissPendingMap:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDensityScale:F

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mPagingTouchSlop:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressTimeout:J

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070461

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mFalsingThreshold:I

    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->getFalsingThresholdFactor()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getMaxVelocity()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->MAX_DISMISS_VELOCITY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSwipeAlpha(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    div-float v1, p1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float v0, v2, v0

    return v0
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;F)F
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v1

    div-float v2, p2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mMinSwipeProgress:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mMaxSwipeProgress:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getViewSize(Landroid/view/View;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSwipeProgressForOffset(Landroid/view/View;F)F

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    cmpl-float v2, p3, v4

    if-lez v2, :cond_2

    move v2, v1

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    move v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDisableHwLayers:Z

    if-nez v2, :cond_0

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSwipeAlpha(F)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->invalidateGlobalRegion(Landroid/view/View;)V

    return-void

    :cond_2
    neg-float v2, v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method public dismissChild(Landroid/view/View;F)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/SwipeHelperForRecents;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V

    return-void
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZ)V
    .locals 10

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v8, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v5, 0x1

    :goto_0
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-nez v8, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_0

    if-eqz p6, :cond_6

    :cond_0
    iget v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    const/4 v3, 0x1

    :goto_1
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-nez v8, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    if-eqz p6, :cond_7

    :cond_1
    move v2, v5

    :goto_2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x43fa0000    # 500.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_8

    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_b

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v8

    neg-float v6, v8

    :goto_4
    iget-boolean v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDisableHwLayers:Z

    if-nez v8, :cond_3

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    new-instance v7, Lcom/android/systemui/recents/SwipeHelperForRecents$3;

    invoke-direct {v7, p0, p1, v4}, Lcom/android/systemui/recents/SwipeHelperForRecents$3;-><init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;Z)V

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_a

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v6

    goto :goto_4

    :cond_c
    sget-object v8, Lcom/android/systemui/Interpolators;->EASE_IN_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const-wide/16 v8, 0x0

    cmp-long v8, p4, v8

    if-lez v8, :cond_d

    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_d
    new-instance v8, Lcom/android/systemui/recents/SwipeHelperForRecents$4;

    invoke-direct {v8, p0, p1, v4, p3}, Lcom/android/systemui/recents/SwipeHelperForRecents$4;-><init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDismissPendingMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method protected getEscapeVelocity()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getTranslation(Landroid/view/View;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method protected getUnscaledEscapeVelocity()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->SWIPE_ESCAPE_VELOCITY:F

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-object v0
.end method

.method protected handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTouchAboveFalsingThreshold:Z

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->swipedFastEnough()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->swipedFarEnough()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onDownUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    if-nez v7, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    :cond_1
    return v6

    :pswitch_0
    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTouchAboveFalsingThreshold:Z

    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    iget-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSnappingChild:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrentAnim:Landroid/animation/Animator;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrentAnim:Landroid/animation/Animator;

    invoke-virtual {v7}, Landroid/animation/Animator;->end()V

    :cond_2
    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onDownUpdate(Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCanCurrViewBeDimissed:Z

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mInitialTouchPos:F

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mPerpendicularInitialTouchPos:F

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressListener:Lcom/android/systemui/recents/SwipeHelperForRecents$LongPressListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v7, :cond_3

    new-instance v7, Lcom/android/systemui/recents/SwipeHelperForRecents$2;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$2;-><init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/MotionEvent;)V

    iput-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressTimeout:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v4

    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mInitialTouchPos:F

    sub-float v2, v5, v7

    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mPerpendicularInitialTouchPos:F

    sub-float v3, v4, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mPagingTouchSlop:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->checkToBeginDrag(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->onBeginDrag(Landroid/view/View;)V

    iput-boolean v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mInitialTouchPos:F

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->removeLongPressCallback()V

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    if-nez v7, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    iput-object v8, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iput-boolean v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->removeLongPressCallback()V

    if-eqz v1, :cond_0

    return v6

    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;FF)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-boolean v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mLongPressSent:Z

    if-eqz v6, :cond_0

    return v10

    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v10

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->removeLongPressCallback()V

    return v12

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_0
    return v10

    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mInitialTouchPos:F

    sub-float v2, v6, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getFalsingThreshold()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_4

    iput-boolean v10, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTouchAboveFalsingThreshold:Z

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getSize(Landroid/view/View;)F

    move-result v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v3, v6, v4

    cmpl-float v6, v0, v4

    if-ltz v6, :cond_7

    cmpl-float v6, v2, v11

    if-lez v6, :cond_6

    move v2, v3

    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    add-float/2addr v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->setTranslation(Landroid/view/View;F)V

    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iget v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mTranslation:F

    add-float/2addr v7, v2

    invoke-virtual {p0, v6, v7, v2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->onMoveUpdate(Landroid/view/View;FF)V

    goto :goto_0

    :cond_6
    neg-float v2, v3

    goto :goto_1

    :cond_7
    div-float v6, v2, v4

    float-to-double v6, v6

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v2, v3, v6

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getMaxVelocity()F

    move-result v7

    const/16 v8, 0x3e8

    invoke-virtual {v6, v8, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v6}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->onDragEnd(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v7

    invoke-virtual {p0, p1, v6, v5, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/recents/SwipeHelperForRecents;->dismissChild(Landroid/view/View;F)V

    :goto_2
    iput-object v9, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    :cond_8
    iput-boolean v12, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDragging:Z

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    iget-object v7, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->onDragCancelled(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v6, v11, v5}, Lcom/android/systemui/recents/SwipeHelperForRecents;->snapChild(Landroid/view/View;FF)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTranslationUpdate(Landroid/view/View;FZ)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/recents/SwipeHelperForRecents;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method protected prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method protected prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public removeLongPressCallback()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setDisableHardwareLayers(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mDisableHwLayers:Z

    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSwipeDirection:I

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method public snapChild(Landroid/view/View;FF)V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCallback:Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/recents/SwipeHelperForRecents$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x96

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v3, Lcom/android/systemui/recents/SwipeHelperForRecents$5;

    invoke-direct {v3, p0, p1, v1, p2}, Lcom/android/systemui/recents/SwipeHelperForRecents$5;-><init>(Lcom/android/systemui/recents/SwipeHelperForRecents;Landroid/view/View;ZF)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mSnappingChild:Z

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    iput-object v0, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrentAnim:Landroid/animation/Animator;

    return-void
.end method

.method protected swipedFarEnough()Z
    .locals 8

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    iget-object v1, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getViewSize(Landroid/view/View;)F

    move-result v1

    float-to-double v4, v1

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected swipedFastEnough()Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/recents/SwipeHelperForRecents;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getTranslation(Landroid/view/View;)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/recents/SwipeHelperForRecents;->getEscapeVelocity()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    cmpl-float v5, v2, v7

    if-lez v5, :cond_0

    move v5, v3

    :goto_0
    cmpl-float v6, v1, v7

    if-lez v6, :cond_1

    :goto_1
    if-ne v5, v3, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    move v5, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
