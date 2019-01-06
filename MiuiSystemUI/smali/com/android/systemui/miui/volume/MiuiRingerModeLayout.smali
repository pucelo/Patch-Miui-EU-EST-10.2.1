.class public Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;
.super Landroid/widget/LinearLayout;
.source "MiuiRingerModeLayout.java"

# interfaces
.implements Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$1;,
        Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountDownProgress:Landroid/widget/ProgressBar;

.field private mExpanded:Z

.field private mRingerBtnLayout:Landroid/view/View;

.field private mRingerHelper:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;

.field private mRingerMode:I

.field private mTickingTimePortrait:Landroid/view/View;

.field private mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

.field private mTimerDragging:Z

.field private mTimerLayout:Landroid/view/View;

.field private mTransitionRunning:Z

.field private mUpdateTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mExpanded:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerMode:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTransitionRunning:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTransitionRunning:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Landroid/transition/Transition;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->getTimerLayoutTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->isSilenceModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setRingerModeByUser(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateExpandedStateH()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateRemainTimeH()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerMode:I

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$1;-><init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mUpdateTimerRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addTickingTimeReceivers()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    sget v3, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_ticking:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v3, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_ticking_port:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->addTickingTimeReceiver(Landroid/widget/TextView;)V

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->addCountDownStateReceiver(Landroid/widget/TextView;)V

    :cond_0
    if-eqz v2, :cond_1

    xor-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    invoke-virtual {v3, v2}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->addCountDownStateReceiver(Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTickingTimePortrait:Landroid/view/View;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTimerLayoutTransition()Landroid/transition/Transition;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mExpanded:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/miui/volume/R$transition;->miui_volume_dialog:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$6;-><init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    sget v0, Lcom/android/systemui/miui/volume/R$transition;->miui_volume_ringer_collapse:I

    goto :goto_0
.end method

.method private initialize()V
    .locals 3

    sget v2, Lcom/android/systemui/miui/volume/R$id;->miui_ringer_btn_layout:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerBtnLayout:Landroid/view/View;

    sget v2, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer_layout:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimerLayout:Landroid/view/View;

    sget v2, Lcom/android/systemui/miui/volume/R$id;->miui_volume_timer:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    invoke-virtual {v2, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->setOnTimeUpdateListener(Lcom/android/systemui/miui/widget/TimerSeekBar$OnTimeUpdateListener;)V

    sget v2, Lcom/android/systemui/miui/volume/R$id;->miui_volume_count_down_progress:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mCountDownProgress:Landroid/widget/ProgressBar;

    sget v2, Lcom/android/systemui/miui/volume/R$id;->miui_ringer_standard_btn:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/systemui/miui/volume/R$id;->miui_ringer_dnd_btn:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;

    invoke-direct {v2, v1, v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerHelper:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;

    new-instance v2, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$2;-><init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$3;-><init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->addTickingTimeReceivers()V

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    invoke-virtual {v2, p0}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method private isSilenceModeOn()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerMode:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private scheduleTimerUpdateH(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mUpdateTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mUpdateTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setRingerModeByUser(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setRingerModeInternal(I)V

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$4;-><init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setRingerModeInternal(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerMode:I

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerHelper:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->setRingerMode(I)V

    return-void
.end method

.method private setupCountDownProgress()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mCountDownProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/miui/volume/Util;->getLastTotalCountDownTime(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mCountDownProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->getRemainTime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private updateCountProgressH()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mCountDownProgress:Landroid/widget/ProgressBar;

    iget-boolean v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mExpanded:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->isSilenceModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    invoke-virtual {v2}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->getRemainTime()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method private updateDraggingStateH()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTickingTimePortrait:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimerDragging:Z

    :goto_0
    new-instance v1, Landroid/transition/AutoTransition;

    invoke-direct {v1}, Landroid/transition/AutoTransition;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/transition/AutoTransition;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/miui/volume/R$integer;->miui_volume_transition_duration_short:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerBtnLayout:Landroid/view/View;

    xor-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTickingTimePortrait:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateExpandedStateH()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerHelper:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;

    invoke-static {v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->-wrap0(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateCountProgressH()V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimerLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->isSilenceModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mExpanded:Z

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRemainTimeH()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateRemainTimeH(Z)V

    return-void
.end method

.method private updateRemainTimeH(Z)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/ExtraNotificationManager;->getRemainTime(Landroid/content/Context;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimer:Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/miui/volume/MiuiVolumeTimerSeekBar;->updateRemainTime(I)V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->scheduleTimerUpdateH(Z)V

    return-void

    :cond_0
    const/4 p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getRingerMode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerMode:I

    return v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setRingerModeInternal(I)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateRemainTimeH()V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateExpandedStateH()V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setupCountDownProgress()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->initialize()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onSegmentChange(II)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimerDragging:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateDraggingStateH()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimerDragging:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateDraggingStateH()V

    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "systemui_volume_dialog"

    const-string/jumbo v1, "volume_set_timer_at_silent_mode"

    invoke-static {v0, v1}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "systemui_volume_dialog"

    const-string/jumbo v1, "volume_set_timer_at_dnd_mode"

    invoke-static {v0, v1}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTimeSet(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/miui/volume/Util;->setLastTotalCountDownTime(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setupCountDownProgress()V

    div-int/lit8 v0, p1, 0x3c

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerMode:I

    invoke-static {v1, v2, v0}, Landroid/app/ExtraNotificationManager;->startCountDownSilenceMode(Landroid/content/Context;II)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateRemainTimeH(Z)V

    return-void
.end method

.method public onTimeUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mCountDownProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setSilenceMode(IZ)V
    .locals 3

    const-string/jumbo v0, "RingerModeLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Zenmode changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setRingerModeInternal(I)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTransitionRunning:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "RingerModeLayout"

    const-string/jumbo v1, "setSilenceMode mTransitionRunning is true."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$5;-><init>(Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateExpandedH(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mExpanded:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateRemainTimeH()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mRingerHelper:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout$RingerButtonHelper;->onExpanded(Z)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateExpandedStateH()V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->scheduleTimerUpdateH(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimerDragging:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->mTimerDragging:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateDraggingStateH()V

    goto :goto_0
.end method
