.class public Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;
.super Ljava/lang/Object;
.source "KeyguardVerticalMoveHelper.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private final mContext:Landroid/content/Context;

.field private mInitialDownTime:J

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mKeyguardClockView:Landroid/view/View;

.field private mKeyguardVerticalGestureSlop:I

.field private mNotificationStackScroller:Landroid/view/View;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mTouchSlop:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialTouchY:F

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->initDimens()V

    return-void
.end method

.method private endMotionEvent(Landroid/view/MotionEvent;FFZ)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-double v4, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v1, v4

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v2, v1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpands(FFFF)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->handleMoveDownEvent(Landroid/view/MotionEvent;)V

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    return-void

    :cond_3
    move v0, p4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1
.end method

.method private handleMoveDownEvent(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    neg-float v2, v0

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->startViewBounceDownAnimation(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    neg-float v2, v0

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->startViewBounceDownAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private initDimens()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mTouchSlop:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardVerticalGestureSlop:I

    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private startViewBounceDownAnimation(Landroid/view/View;I)V
    .locals 5

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    neg-int v3, p2

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mTracking:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    return v5

    :cond_0
    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v6

    :pswitch_1
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialTouchX:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialTouchY:F

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mTracking:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialDownTime:J

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->initVelocityTracker()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v2, v3, v6}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    return v5

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mInitialTouchY:F

    sub-float v1, v4, v5

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->trackMovement(Landroid/view/MotionEvent;)V

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mTracking:Z

    invoke-direct {p0, p1, v2, v3, v5}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->endMotionEvent(Landroid/view/MotionEvent;FFZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardClockView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mNotificationStackScroller:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public updateKeyguardVerticalSwpingSlop(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardVerticalGestureSlop:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->mKeyguardVerticalGestureSlop:I

    goto :goto_0
.end method
