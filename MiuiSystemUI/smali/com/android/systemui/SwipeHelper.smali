.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$Callback;,
        Lcom/android/systemui/SwipeHelper$LongPressListener;,
        Lcom/android/systemui/SwipeHelper$MenuPressListener;
    }
.end annotation


# static fields
.field private static sMenuShownSize:F


# instance fields
.field private mBlockWidth:I

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mContext:Landroid/content/Context;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDisableHwLayers:Z

.field private mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDismissAllRunning:Z

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

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFalsingThreshold:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

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
.method static synthetic -get0(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/SwipeHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/SwipeHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/SwipeHelper;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllRunning:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/SwipeHelper;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->doRowAnimations(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/systemui/SwipeHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070461

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    invoke-static {p3}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070299

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mBlockWidth:I

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getMaxEscapeAnimDuration()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-direct {v0, p3, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/SwipeHelper;->sMenuShownSize:F

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->initDismissAllAnimation()V

    return-void
.end method

.method private createAlphaAnimators(Ljava/util/Collection;F)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/view/View;",
            ">;F)",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    const/4 v6, 0x0

    aput p2, v5, v6

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private doRowAnimations(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/16 v14, 0xa

    const/16 v11, 0x64

    const/4 v15, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v12, v13, -0x1

    :goto_0
    if-ltz v12, :cond_1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    if-nez v12, :cond_0

    move-object/from16 v4, p2

    :cond_0
    const/4 v3, 0x0

    int-to-long v5, v15

    const-wide/16 v8, 0xc8

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    add-int/lit8 v1, v11, -0xa

    const/16 v3, 0x1e

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/2addr v15, v11

    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getAlphaForOffset(F)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    sget v0, Lcom/android/systemui/SwipeHelper;->sMenuShownSize:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/android/systemui/SwipeHelper;->sMenuShownSize:F

    div-float/2addr v0, v1

    const v1, 0x3eb33334    # 0.35000002f

    mul-float/2addr v0, v1

    sub-float v0, v3, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0

    :cond_0
    return v3
.end method

.method private getFalsingThreshold()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getMaxVelocity()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    const/high16 v1, 0x457a0000    # 4000.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method private getPerpendicularPos(Landroid/view/MotionEvent;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method private initDismissAllAnimation()V
    .locals 4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-void
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

    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

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

.method private snapChildInstantly(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

    return-void
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;ZF)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    cmpl-float v1, p3, v2

    if-lez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    cmpg-float v1, p3, v2

    if-gez v1, :cond_3

    :cond_1
    invoke-static {p3}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(F)F

    move-result v0

    cmpl-float v1, p3, v2

    if-lez v1, :cond_3

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v1, :cond_2

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    const/16 v17, 0x1

    :goto_0
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    if-eqz p9, :cond_6

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    const/16 v16, 0x1

    :goto_1
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_1

    if-eqz p9, :cond_7

    :cond_1
    move/from16 v15, v17

    :goto_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_8

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_8

    const/4 v14, 0x1

    :goto_3
    if-nez v14, :cond_2

    if-nez v15, :cond_2

    if-eqz v16, :cond_a

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v7, v4

    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v4, p7, v8

    if-nez v4, :cond_c

    const-wide/16 v18, 0x190

    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    int-to-long v8, v4

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/SwipeHelper;->mDisableHwLayers:Z

    if-nez v4, :cond_3

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    new-instance v20, Lcom/android/systemui/SwipeHelper$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v11}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v5

    if-nez v5, :cond_d

    return-void

    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v15, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    const/4 v6, 0x0

    cmpg-float v4, v4, v6

    if-gez v4, :cond_9

    xor-int/lit8 v14, p9, 0x1

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    goto :goto_4

    :cond_b
    const-wide/16 v18, 0xc8

    goto :goto_5

    :cond_c
    move-wide/from16 v18, p7

    goto :goto_5

    :cond_d
    if-eqz p6, :cond_f

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :goto_6
    const-wide/16 v8, 0x0

    cmp-long v4, p4, v8

    if-lez v4, :cond_e

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_e
    new-instance v8, Lcom/android/systemui/SwipeHelper$4;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    move/from16 v13, p9

    invoke-direct/range {v8 .. v13}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZLjava/lang/Runnable;Z)V

    invoke-virtual {v5, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/SwipeHelper;->prepareDismissAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SwipeHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v9

    move/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    goto :goto_6
.end method

.method public dismissChild(Landroid/view/View;FZ)V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-wide v7, v4

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJZ)V

    return-void
.end method

.method public dispatchDismissAllToChild(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllRunning:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "com.android.systemui.SwipeHelper"

    const-string/jumbo v6, "dispatchDismissAllToChild mDismissAllAnimatorSet is Running"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v5, "com.android.systemui.SwipeHelper"

    const-string/jumbo v6, "dispatchDismissAllToChild do dismiss All."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllRunning:Z

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v5, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_2

    move-object v2, v3

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDismissAllInProgress(Z)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedButton()Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundNormal()Lcom/android/systemui/statusbar/NotificationBackgroundView;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundNormal()Lcom/android/systemui/statusbar/NotificationBackgroundView;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->initDismissAllAnimation()V

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Ljava/util/List;Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/android/systemui/SwipeHelper;->createAlphaAnimators(Ljava/util/Collection;F)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v5, "com.android.systemui.SwipeHelper"

    const-string/jumbo v6, "dispatchDismissAllToChild mDismissAllAnimatorSet started."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "com.android.systemui.SwipeHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllRunning:Z

    goto :goto_1
.end method

.method protected getEscapeVelocity()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getUnscaledEscapeVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method protected getMaxEscapeAnimDuration()J
    .locals 2

    const-wide/16 v0, 0x190

    return-wide v0
.end method

.method protected getSize(Landroid/view/View;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

    const/high16 v0, 0x43fa0000    # 500.0f

    return v0
.end method

.method protected getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

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

.method public isDismissGesture(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isFalseGesture(Landroid/view/MotionEvent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFarEnough()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFalseGesture(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    xor-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V
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
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    :cond_1
    return v6

    :pswitch_0
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7, p1}, Lcom/android/systemui/SwipeHelper;->onDownUpdate(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v7, :cond_2

    new-instance v7, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularPos(Landroid/view/MotionEvent;)F

    move-result v4

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v5, v7

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPerpendicularInitialTouchPos:F

    sub-float v3, v4, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iput-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    if-eqz v1, :cond_0

    return v6

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v7, :cond_0

    return v12

    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v7, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v12

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    return v11

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_0
    return v12

    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v7, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_4

    iput-boolean v12, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    const v7, 0x3e99999a    # 0.3f

    mul-float v3, v7, v4

    cmpl-float v7, v0, v4

    if-ltz v7, :cond_8

    cmpl-float v7, v2, v13

    if-lez v7, :cond_7

    move v2, v3

    :cond_5
    :goto_1
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mTranslation:F

    add-float v5, v7, v2

    cmpg-float v7, v5, v13

    if-gez v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isPinnedHeadsUp(Landroid/view/View;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070299

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    rsub-int/lit8 v7, v7, 0x0

    int-to-float v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7, v5}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-boolean v8, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7, p1, v5, v2}, Lcom/android/systemui/SwipeHelper;->onMoveUpdate(Landroid/view/View;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    :cond_7
    neg-float v2, v3

    goto :goto_1

    :cond_8
    div-float v7, v2, v4

    float-to-double v8, v7

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v7, v8

    mul-float v2, v3, v7

    goto :goto_1

    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0}, Lcom/android/systemui/SwipeHelper;->getMaxVelocity()F

    move-result v8

    const/16 v9, 0x3e8

    invoke-virtual {v7, v9, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v8

    invoke-virtual {p0, p1, v7, v6, v8}, Lcom/android/systemui/SwipeHelper;->handleUpEvent(Landroid/view/MotionEvent;Landroid/view/View;FF)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->isDismissGesture(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/systemui/statistic/ScenarioConstants;->SCENARIO_CLEAR_NOTI:Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;

    invoke-static {v7}, Lcom/android/systemui/statistic/ScenarioTrackUtil;->beginScenario(Lcom/android/systemui/statistic/ScenarioTrackUtil$SystemUIEventScenario;)V

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->swipedFastEnough()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v7, v6, v8}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FZ)V

    :goto_2
    iput-object v10, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    :cond_9
    iput-boolean v11, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v7, v13, v6}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

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

    invoke-direct {p0, p1, p3, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;ZF)V

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

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public resetAnimatingValue()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDismissAllRunning:Z

    return-void
.end method

.method public setDensityScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    return-void
.end method

.method protected setTranslation(Landroid/view/View;F)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    new-instance v3, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/systemui/SwipeHelper;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x96

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v4, Lcom/android/systemui/SwipeHelper$6;

    invoke-direct {v4, p0, p1, v1, p2}, Lcom/android/systemui/SwipeHelper$6;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ZF)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/SwipeHelper;->prepareSnapBackAnimation(Landroid/view/View;Landroid/animation/Animator;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public snapChildIfNeeded(Landroid/view/View;ZF)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-ne v2, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mSnappingChild:Z

    if-nez v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mDismissPendingMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1, p3, v3}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;FF)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->snapChildInstantly(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected swipedFarEnough()Z
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

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

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v5}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->getEscapeVelocity()F

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
