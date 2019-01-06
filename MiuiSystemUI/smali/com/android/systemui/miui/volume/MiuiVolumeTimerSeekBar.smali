.class public Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;
.super Lcom/android/systemui/miui/widget/TimerSeekBar;
.source "MiuiVolumeTimerSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;
    }
.end annotation


# instance fields
.field private mBoundsStart:I

.field private mCurrentSegment:I

.field protected mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

.field private mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

.field private mTimeRemain:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/miui/widget/TimerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v2, Lcom/android/systemui/miui/volume/R$styleable;->MiuiVolumeTimerSeekBar:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/android/systemui/miui/volume/R$styleable;->MiuiVolumeTimerSeekBar_progressBoundsStart:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mBoundsStart:I

    sget v2, Lcom/android/systemui/miui/volume/R$styleable;->MiuiVolumeTimerSeekBar_drawTickingTime:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerDrawableHelper;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    new-instance v2, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;-><init>(Landroid/widget/SeekBar;Z)V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    iget v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mBoundsStart:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->setBounds(FF)V

    return-void
.end method

.method private constrainProgress(I)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mBoundsStart:I

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->getMax()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/systemui/miui/volume/Util;->constrain(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addCountDownStateReceiver(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->addCountDownStateReceiver(Landroid/widget/TextView;)V

    return-void
.end method

.method public addTickingTimeReceiver(Landroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->addTickingTimeReceiver(Landroid/widget/TextView;)V

    return-void
.end method

.method public getRemainTime()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mTimeRemain:I

    return v0
.end method

.method public onSegmentChange(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onSegmentChange(II)V

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mCurrentSegment:I

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onSegmentChange(II)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onTouchDown()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onTouchRelease()V

    return-void
.end method

.method public onTimeSet(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onTimeSet(I)V

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mTimeRemain:I

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onTimeUpdate(I)V

    return-void
.end method

.method public onTimeUpdate(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onTimeUpdate(I)V

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mTimeRemain:I

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mMotions:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar$TimerSeekBarMotions;->onTimeUpdate(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->transformTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/miui/widget/TimerSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    iget v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mBoundsStart:I

    int-to-float v1, v1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->setBounds(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->constrainProgress(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/android/systemui/miui/widget/TimerSeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected transformTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->mInjector:Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/BoundsSeekBarInjector;->transformTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
