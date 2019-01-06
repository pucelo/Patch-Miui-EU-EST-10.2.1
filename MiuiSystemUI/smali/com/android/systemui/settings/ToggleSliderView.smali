.class public Lcom/android/systemui/settings/ToggleSliderView;
.super Landroid/widget/RelativeLayout;
.source "ToggleSliderView.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/ToggleSliderView$1;
    }
.end annotation


# instance fields
.field private mIgnoreTrackingEvent:Z

.field private mLastTouchAction:I

.field private mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

.field private mMirror:Lcom/android/systemui/settings/ToggleSliderView;

.field private mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

.field private mTracking:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIgnoreTrackingEvent:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/settings/ToggleSliderView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLastTouchAction:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSlider$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/settings/ToggleSliderView;)Lcom/android/systemui/settings/ToggleSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/settings/ToggleSliderView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIgnoreTrackingEvent:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/settings/ToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mTracking:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/ToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/settings/ToggleSliderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView$1;-><init>(Lcom/android/systemui/settings/ToggleSliderView;)V

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const v0, 0x7f0d0101

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a029a

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/ToggleSliderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSeekBar;

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {p0}, Lcom/android/systemui/settings/ToggleSliderView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSeekBar;->setAccessibilityLabel(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mLastTouchAction:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mIgnoreTrackingEvent:Z

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v2, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v2}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    invoke-interface {v0, p0}, Lcom/android/systemui/settings/ToggleSlider$Listener;->onInit(Lcom/android/systemui/settings/ToggleSlider;)V

    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    :cond_1
    return-void
.end method

.method public setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMax(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v1}, Lcom/android/systemui/settings/ToggleSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_0
    return-void
.end method

.method public setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSliderView;->mListener:Lcom/android/systemui/settings/ToggleSlider$Listener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mSlider:Lcom/android/systemui/settings/ToggleSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/ToggleSliderView;->mMirror:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setValue(I)V

    :cond_0
    return-void
.end method
