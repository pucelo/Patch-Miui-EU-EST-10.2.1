.class public Lcom/android/internal/widget/SlidingTab;
.super Landroid/view/ViewGroup;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SlidingTab$1;,
        Lcom/android/internal/widget/SlidingTab$OnTriggerListener;,
        Lcom/android/internal/widget/SlidingTab$Slider;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

.field private static final ANIM_TARGET_TIME:I = 0x1f4

.field private static final DBG:Z = false

.field private static final HORIZONTAL:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SlidingTab"

.field private static final THRESHOLD:F = 0.6666667f

.field private static final TRACKING_MARGIN:I = 0x32

.field private static final VERTICAL:I = 0x1

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mAnimating:Z

.field private final mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mDensity:F

.field private mGrabbedState:I

.field private mHoldLeftOnTransition:Z

.field private mHoldRightOnTransition:Z

.field private final mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

.field private final mOrientation:I

.field private mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private final mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

.field private mThreshold:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTracking:Z

.field private mTriggered:Z

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/SlidingTab;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/SlidingTab;)Lcom/android/internal/widget/SlidingTab$Slider;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/SlidingTab;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/SlidingTab;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->onAnimationDone()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/SlidingTab;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SlidingTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const v5, 0x1080546

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    iput v3, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    iput-boolean v3, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    new-instance v2, Lcom/android/internal/widget/SlidingTab$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SlidingTab$1;-><init>(Lcom/android/internal/widget/SlidingTab;)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mAnimationDoneListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/internal/R$styleable;->SlidingTab:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/internal/widget/SlidingTab;->mDensity:F

    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x1080538

    const v4, 0x1080527

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    new-instance v2, Lcom/android/internal/widget/SlidingTab$Slider;

    const v3, 0x1080541

    const v4, 0x1080530

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab$Slider;-><init>(Landroid/view/ViewGroup;III)V

    iput-object v2, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    return-void
.end method

.method private cancelGrab()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->show(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v3, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .registers 4

    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_e
    return-void
.end method

.method private isHorizontal()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/widget/SlidingTab;->mOrientation:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "SlidingTab"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private moveHandle(FF)V
    .registers 9

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v4}, Lcom/android/internal/widget/SlidingTab$Slider;->-get1(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/TextView;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v4

    if-eqz v4, :cond_2a

    float-to-int v4, p1

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    invoke-virtual {v3, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_26
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->invalidate()V

    return-void

    :cond_2a
    float-to-int v4, p2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    invoke-virtual {v3, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_26
.end method

.method private onAnimationDone()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->resetView()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    return-void
.end method

.method private resetView()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    return-void
.end method

.method private setGrabbedState(I)V
    .registers 4

    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eq p1, v0, :cond_11

    iput p1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    iget v1, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/internal/widget/SlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_11
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "haptic_feedback_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_31

    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_28

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    :cond_28
    iget-object v1, p0, Lcom/android/internal/widget/SlidingTab;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/internal/widget/SlidingTab;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, p1, p2, v2}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_33

    :cond_2f
    monitor-exit p0

    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_13

    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private withinView(FFLandroid/view/View;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v3, -0x3db80000    # -50.0f

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_1a

    cmpl-float v2, p2, v3

    if-lez v2, :cond_1a

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v2

    if-nez v2, :cond_2f

    cmpl-float v2, p1, v3

    if-lez v2, :cond_2f

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_19

    :cond_2f
    move v0, v1

    goto :goto_19
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16

    const v8, 0x3f2aaaab

    const v9, 0x3eaaaaaa

    const/4 v13, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-boolean v10, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    if-eqz v10, :cond_19

    return v13

    :cond_19
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v11, v5

    float-to-int v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-static {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v11, v5

    float-to-int v12, v6

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    iget-boolean v10, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v10, :cond_4c

    if-nez v2, :cond_4a

    :goto_45
    xor-int/lit8 v10, v4, 0x1

    if-eqz v10, :cond_4c

    return v13

    :cond_4a
    move v4, v7

    goto :goto_45

    :cond_4c
    packed-switch v0, :pswitch_data_98

    :goto_4f
    return v7

    :pswitch_50
    iput-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    iput-boolean v13, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    const-wide/16 v10, 0x1e

    invoke-direct {p0, v10, v11}, Lcom/android/internal/widget/SlidingTab;->vibrate(J)V

    if-eqz v2, :cond_80

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_7e

    :goto_69
    iput v8, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    :goto_6e
    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v8, v7}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/android/internal/widget/SlidingTab$Slider;->showTarget()V

    iget-object v8, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v8}, Lcom/android/internal/widget/SlidingTab$Slider;->hide()V

    goto :goto_4f

    :cond_7e
    move v8, v9

    goto :goto_69

    :cond_80
    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iput-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_95

    :goto_8e
    iput v9, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_6e

    :cond_95
    move v9, v8

    goto :goto_8e

    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_50
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v5, 0x0

    :goto_c
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v5, 0x1

    :goto_1c
    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab$Slider;->layout(IIIII)V

    return-void

    :cond_24
    const/4 v5, 0x3

    goto :goto_c

    :cond_26
    const/4 v5, 0x2

    goto :goto_1c
.end method

.method protected onMeasure(II)V
    .registers 14

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->measure(II)V

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v4

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabWidth()I

    move-result v6

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v3

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v10}, Lcom/android/internal/widget/SlidingTab$Slider;->getTabHeight()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v10

    if-eqz v10, :cond_46

    add-int v10, v4, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_42
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/widget/SlidingTab;->setMeasuredDimension(II)V

    return-void

    :cond_46
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v10, v3, v5

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_42
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x1

    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-eqz v7, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    packed-switch v0, :pswitch_data_a4

    :cond_16
    :goto_16
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    if-nez v7, :cond_1e

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :cond_1e
    return v8

    :pswitch_1f
    invoke-direct {p0, v5, v6, p0}, Lcom/android/internal/widget/SlidingTab;->withinView(FFLandroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-direct {p0, v5, v6}, Lcom/android/internal/widget/SlidingTab;->moveHandle(FF)V

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_76

    move v2, v5

    :goto_2f
    iget v10, p0, Lcom/android/internal/widget/SlidingTab;->mThreshold:F

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v7

    :goto_3b
    int-to-float v7, v7

    mul-float v3, v10, v7

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v7

    if-eqz v7, :cond_84

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v10, :cond_7f

    cmpl-float v7, v2, v3

    if-lez v7, :cond_7d

    :goto_4e
    const/4 v4, 0x1

    :goto_4f
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    if-nez v7, :cond_16

    if-eqz v4, :cond_16

    iput-boolean v8, p0, Lcom/android/internal/widget/SlidingTab;->mTriggered:Z

    iput-boolean v11, p0, Lcom/android/internal/widget/SlidingTab;->mTracking:Z

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/SlidingTab$Slider;->setState(I)V

    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v10, :cond_97

    const/4 v1, 0x1

    :goto_65
    if-eqz v1, :cond_99

    move v7, v8

    :goto_68
    invoke-direct {p0, v7}, Lcom/android/internal/widget/SlidingTab;->dispatchTriggerEvent(I)V

    if-eqz v1, :cond_9b

    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    :goto_6f
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SlidingTab;->startAnimating(Z)V

    invoke-direct {p0, v11}, Lcom/android/internal/widget/SlidingTab;->setGrabbedState(I)V

    goto :goto_16

    :cond_76
    move v2, v6

    goto :goto_2f

    :cond_78
    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v7

    goto :goto_3b

    :cond_7d
    const/4 v4, 0x0

    goto :goto_4f

    :cond_7f
    cmpg-float v7, v2, v3

    if-gez v7, :cond_7d

    goto :goto_4e

    :cond_84
    iget-object v7, p0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    iget-object v10, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    if-ne v7, v10, :cond_92

    cmpg-float v7, v2, v3

    if-gez v7, :cond_90

    :goto_8e
    const/4 v4, 0x1

    goto :goto_4f

    :cond_90
    const/4 v4, 0x0

    goto :goto_4f

    :cond_92
    cmpl-float v7, v2, v3

    if-lez v7, :cond_90

    goto :goto_8e

    :cond_97
    const/4 v1, 0x0

    goto :goto_65

    :cond_99
    move v7, v9

    goto :goto_68

    :cond_9b
    iget-boolean v7, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    goto :goto_6f

    :cond_9e
    :pswitch_9e
    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    goto/16 :goto_16

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_1f
        :pswitch_9e
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_e

    if-eqz p2, :cond_e

    iget v0, p0, Lcom/android/internal/widget/SlidingTab;->mGrabbedState:I

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->cancelGrab()V

    :cond_e
    return-void
.end method

.method public reset(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->reset(Z)V

    if-nez p1, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    :cond_f
    return-void
.end method

.method public setHoldAfterTrigger(ZZ)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/internal/widget/SlidingTab;->mHoldLeftOnTransition:Z

    iput-boolean p2, p0, Lcom/android/internal/widget/SlidingTab;->mHoldRightOnTransition:Z

    return-void
.end method

.method public setLeftHintText(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    :cond_b
    return-void
.end method

.method public setLeftTabResources(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mLeftSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    return-void
.end method

.method public setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/SlidingTab;->mOnTriggerListener:Lcom/android/internal/widget/SlidingTab$OnTriggerListener;

    return-void
.end method

.method public setRightHintText(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setHintText(I)V

    :cond_b
    return-void
.end method

.method public setRightTabResources(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/SlidingTab$Slider;->setIcon(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SlidingTab$Slider;->setTarget(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p3}, Lcom/android/internal/widget/SlidingTab$Slider;->setBarBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0, p4}, Lcom/android/internal/widget/SlidingTab$Slider;->setTabBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab$Slider;->updateDrawableStates()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/widget/SlidingTab;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_d

    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SlidingTab;->reset(Z)V

    :cond_d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method startAnimating(Z)V
    .registers 25

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/SlidingTab;->mAnimating:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/SlidingTab;->mCurrentSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/SlidingTab;->mOtherSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->isHorizontal()Z

    move-result v19

    if-eqz v19, :cond_c7

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getRight()I

    move-result v11

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getWidth()I

    move-result v18

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getLeft()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getWidth()I

    move-result v17

    if-eqz p1, :cond_bc

    const/4 v8, 0x0

    :goto_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v12, v0, :cond_c0

    add-int v19, v11, v17

    sub-int v19, v19, v8

    move/from16 v0, v19

    neg-int v5, v0

    :goto_46
    const/4 v6, 0x0

    :goto_47
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    int-to-float v0, v5

    move/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v20, 0xfa

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v15, Landroid/view/animation/TranslateAnimation;

    const/16 v19, 0x0

    int-to-float v0, v5

    move/from16 v20, v0

    const/16 v21, 0x0

    int-to-float v0, v6

    move/from16 v22, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v20, 0xfa

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v19, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v19, Lcom/android/internal/widget/SlidingTab$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/android/internal/widget/SlidingTab$2;-><init>(Lcom/android/internal/widget/SlidingTab;ZII)V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->hideTarget()V

    invoke-virtual {v12, v14, v15}, Lcom/android/internal/widget/SlidingTab$Slider;->startAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    return-void

    :cond_bc
    move/from16 v8, v18

    goto/16 :goto_35

    :cond_c0
    sub-int v19, v17, v9

    add-int v19, v19, v17

    sub-int v5, v19, v8

    goto :goto_46

    :cond_c7
    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getTop()I

    move-result v13

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    invoke-static {v12}, Lcom/android/internal/widget/SlidingTab$Slider;->-get0(Lcom/android/internal/widget/SlidingTab$Slider;)Landroid/widget/ImageView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/SlidingTab;->getHeight()I

    move-result v16

    if-eqz p1, :cond_f7

    const/4 v8, 0x0

    :goto_e6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SlidingTab;->mRightSlider:Lcom/android/internal/widget/SlidingTab$Slider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v12, v0, :cond_f9

    add-int v19, v13, v16

    sub-int v6, v19, v8

    goto/16 :goto_47

    :cond_f7
    move v8, v7

    goto :goto_e6

    :cond_f9
    sub-int v19, v16, v4

    add-int v19, v19, v16

    sub-int v19, v19, v8

    move/from16 v0, v19

    neg-int v6, v0

    goto/16 :goto_47
.end method
