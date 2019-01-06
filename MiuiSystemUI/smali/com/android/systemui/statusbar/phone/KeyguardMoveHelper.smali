.class public Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
.super Ljava/lang/Object;
.source "KeyguardMoveHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;
    }
.end annotation


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private final mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

.field private mCanShowGxzw:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreen:I

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mKeyguardHorizontalGestureSlop:I

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTouchSlop:I

.field private mTouchTargetSize:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    return p1
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;FZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZ)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCanShowGxzw:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initIcons()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initDimens()V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private endMotion(ZFF)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->flingWithCurrentVelocity(ZFF)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method private fling(FZZ)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v2

    neg-float v1, v2

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    const/4 v4, 0x0

    aput v3, v2, v4

    aput v1, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;ZZF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(Z)V

    :cond_1
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->onSwipingAborted()V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v1

    goto :goto_0
.end method

.method private flingWithCurrentVelocity(ZFF)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getCurrentVelocity(FF)F

    move-result v1

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->needsAntiFalsing()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v5}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v0, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v5}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    mul-float/2addr v5, v1

    cmpg-float v5, v5, v7

    if-gez v5, :cond_5

    const/4 v2, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMinFlingVelocity:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchX:F

    sub-float/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    :cond_2
    move v5, v3

    :goto_2
    or-int/2addr v0, v5

    xor-int v5, v0, v2

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-nez v0, :cond_7

    :goto_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_8

    :goto_4
    invoke-direct {p0, v1, p1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->fling(FZZ)V

    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    move v5, v4

    goto :goto_2

    :cond_7
    move p1, v3

    goto :goto_3

    :cond_8
    move v3, v4

    goto :goto_4
.end method

.method private getCurrentVelocity(FF)F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    return v0
.end method

.method private getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F
    .locals 3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    div-float v1, p1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    add-float v0, v1, v2

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private getScreenWidth()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    return v0
.end method

.method private initDimens()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMinFlingVelocity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMinTranslationAmount:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMinBackgroundRadius:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchTargetSize:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mHintGrowAmount:I

    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    return-void
.end method

.method private initIcons()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isOnIcon(Landroid/view/View;FF)Z
    .locals 8

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float v2, v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    add-float v3, v4, v5

    sub-float v4, p2, v2

    float-to-double v4, v4

    sub-float v6, p3, v3

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchTargetSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private reset(ZZZ)V
    .locals 6

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->cancelAnimation()V

    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZZ)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->onSwipingAborted()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    :cond_0
    return-void
.end method

.method private setCanShowGxzw(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCanShowGxzw:Z

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->updateGxzwState()V

    :cond_0
    return-void
.end method

.method private setTranslation(FZZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZZ)V

    return-void
.end method

.method private setTranslation(FZZZZ)V
    .locals 13

    move v5, p1

    const/4 v4, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLeftView()Landroid/view/View;

    move-result-object v2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getRightView()Landroid/view/View;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLeftViewBg()Landroid/view/View;

    move-result-object v3

    if-eqz p5, :cond_2

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    :cond_0
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->animateShowLeftRightIcon()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLockScreenView()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-lez v9, :cond_5

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    div-float v4, p1, v9

    :cond_3
    :goto_1
    const/4 v9, 0x0

    cmpg-float v9, v4, v9

    if-gez v9, :cond_6

    const/4 v4, 0x0

    :cond_4
    :goto_2
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-nez v9, :cond_8

    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-lez v9, :cond_7

    return-void

    :cond_5
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-nez v9, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    div-float v9, p1, v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float v4, v10, v9

    goto :goto_1

    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v4, v9

    if-lez v9, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    add-float v5, p1, v9

    :cond_8
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    cmpl-float v9, p1, v9

    if-nez v9, :cond_9

    if-nez p2, :cond_9

    if-eqz p4, :cond_12

    :cond_9
    if-nez p3, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    sub-float v9, v5, v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    add-float/2addr v9, v5

    invoke-virtual {v6, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportLockScreenMagazineLeft()Z

    move-result v9

    if-eqz v9, :cond_a

    move v9, v4

    :goto_3
    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLockScreenView()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v4

    invoke-virtual {v7, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_a
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v11

    sub-float v11, v5, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v11

    add-float/2addr v11, v5

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v4, v10, v11

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportLockScreenMagazineLeft()Z

    move-result v9

    if-eqz v9, :cond_c

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v4, v10, v11

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getLockScreenView()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v5, v10, v11

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    instance-of v9, v7, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    if-nez v9, :cond_e

    instance-of v9, v7, Lcom/android/keyguard/MiuiKeyguardClock;

    if-eqz v9, :cond_f

    :cond_e
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->isKeyguardWallpaperCarouselSwitchAnimating()Z

    move-result v9

    :goto_6
    if-nez v9, :cond_d

    const-string/jumbo v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v4

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    const/4 v9, 0x0

    goto :goto_6

    :cond_10
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v9, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v9}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_11
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    :cond_12
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-nez v9, :cond_15

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    neg-float v9, v9

    cmpl-float v9, p1, v9

    if-nez v9, :cond_15

    const/4 v9, 0x1

    iput v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    :cond_13
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->startFaceUnlockByMove()V

    :cond_14
    :goto_7
    return-void

    :cond_15
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    neg-float v9, v9

    cmpl-float v9, p1, v9

    if-nez v9, :cond_16

    const/4 v9, 0x2

    iput v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    goto :goto_7

    :cond_16
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_18

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScreenWidth()F

    move-result v9

    cmpl-float v9, p1, v9

    if-nez v9, :cond_18

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_17

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    :cond_17
    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->isKeyguardWallpaperPreviewAvailable()Z

    move-result v9

    invoke-static {v9}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordEnterLeftview(Z)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->recordNegativeStatus(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->stopFaceUnlockByMove()V

    goto :goto_7

    :cond_18
    iget v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-nez v9, :cond_19

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    goto :goto_7

    :cond_19
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setCanShowGxzw(Z)V

    :cond_1a
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->stopFaceUnlockByMove()V

    goto :goto_7
.end method

.method private startSwiping()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->onSwipingStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .locals 2

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->getScale(FLcom/android/systemui/statusbar/KeyguardAffordanceView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    return-void
.end method

.method public animateShowLeftRightIcon()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->cancelAnimation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getRestingAlpha()F

    move-result v1

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    return-void
.end method

.method public canShowGxzw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCanShowGxzw:Z

    return v0
.end method

.method public isInCenterScreen()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInLeftView()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCurrentScreen:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSwipingInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    return v0
.end method

.method public launchAffordance(ZZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_1
    if-eqz p1, :cond_3

    xor-int/lit8 v2, p2, 0x1

    invoke-direct {p0, v5, v7, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->fling(FZZ)V

    invoke-direct {p0, v0, v5, v6, v6}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    :goto_2
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    xor-int/lit8 v3, p2, 0x1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    invoke-interface {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->onAnimationToSideStarted(ZFF)V

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getMaxTranslationDistance()F

    move-result v2

    :goto_3
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    invoke-direct {p0, v0, v5, v7, v6}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->instantFinishAnimation()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;->getMaxTranslationDistance()F

    move-result v2

    goto :goto_3
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initDimens()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initIcons()V

    return-void
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initIcons()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    return v8

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v9

    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchX:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchY:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslation:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTranslationOnDown:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->initVelocityTracker()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    invoke-direct {p0, v9, v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->endMotion(ZFF)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchX:F

    sub-float v3, v2, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mInitialTouchY:F

    sub-float v5, v4, v6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mSwipingInProgress:Z

    if-eqz v6, :cond_2

    invoke-direct {p0, v3, v8, v8, v8}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZ)V

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchSlop:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mTouchSlop:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    cmpl-float v6, v3, v10

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->startSwiping()V

    invoke-direct {p0, v3, v8, v8, v8}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->setTranslation(FZZZ)V

    goto :goto_0

    :cond_5
    cmpg-float v6, v3, v10

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_4

    :cond_6
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mMotionCancelled:Z

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    xor-int/lit8 v6, v1, 0x1

    invoke-direct {p0, v6, v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->endMotion(ZFF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(ZZ)V

    return-void
.end method

.method public reset(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(ZZZ)V

    return-void
.end method

.method public resetImmediately()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(ZZZ)V

    return-void
.end method

.method public updateKeyguardHorizontalSwpingSlop(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->mKeyguardHorizontalGestureSlop:I

    goto :goto_0
.end method
