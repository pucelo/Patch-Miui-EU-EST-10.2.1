.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field protected mBackground:Landroid/view/View;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessHeight:I

.field private mBrightnessListening:Z

.field private mBrightnessMarginTop:I

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessView:Lcom/android/systemui/settings/ToggleSliderView;

.field private mCaretAnimator:Landroid/animation/ValueAnimator;

.field private mCaretDrawable:Lcom/android/systemui/qs/CaretDrawable;

.field private mCaretHeight:I

.field private mCaretInterpolator:Landroid/view/animation/Interpolator;

.field protected mContent:Landroid/view/View;

.field private mContentMargin:I

.field private mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

.field private mExpandIndicator:Landroid/widget/ImageView;

.field private mFooterChildCount:I

.field private mGutterHeight:I

.field protected mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mHeightOverride:I

.field protected mIndicarotProgress:F

.field private mListening:Z

.field protected mQSContainer:Landroid/widget/FrameLayout;

.field private mQSFooter:Lcom/android/systemui/qs/QSFooter;

.field protected mQSFooterContainer:Landroid/widget/LinearLayout;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mQsExpansion:F

.field protected mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSContainerImpl;)Lcom/android/systemui/qs/CaretDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretDrawable:Lcom/android/systemui/qs/CaretDrawable;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFooterChildCount:I

    return-void
.end method

.method private updatePanelBottomMargin(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07035a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, p2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected calculateContainerHeight()I
    .locals 4

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessMarginTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QuickQSPanel;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessMarginTop:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getBrightnessView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessView:Lcom/android/systemui/settings/ToggleSliderView;

    return-object v0
.end method

.method public getExpandIndicator()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExpandIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQSFooter()Lcom/android/systemui/qs/QSFooter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Lcom/android/systemui/qs/QSFooter;

    return-object v0
.end method

.method public isDataUsageAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQSFullyCollapsed()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "qs_show_brightness"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0105

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    const v1, 0x7f0a021a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContent:Landroid/view/View;

    const v1, 0x7f0a0219

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSContainer:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0217

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    const v1, 0x7f0a0224

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    const v1, 0x7f0a0226

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const v1, 0x7f0a0220

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0218

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessView:Lcom/android/systemui/settings/ToggleSliderView;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessView:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    const v1, 0x7f0a021f

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExpandIndicator:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/qs/CaretDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/qs/CaretDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretDrawable:Lcom/android/systemui/qs/CaretDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExpandIndicator:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretDrawable:Lcom/android/systemui/qs/CaretDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10c000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretInterpolator:Landroid/view/animation/Interpolator;

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGutterHeight:I

    const v1, 0x7f070362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretHeight:I

    const v1, 0x7f070325

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessHeight:I

    const v1, 0x7f070303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentMargin:I

    const v1, 0x7f070327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessMarginTop:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->setClickable(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->setImportantForAccessibility(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessView:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setLayoutDirection(I)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "qs_show_brightness"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessView:Lcom/android/systemui/settings/ToggleSliderView;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBrightnessListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessListening:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    goto :goto_0
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessView:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessView:Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 3

    const v2, 0x3b03126f    # 0.002f

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    sub-float/2addr v1, p1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateIndicator(F)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    sub-float v1, p1, v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGutterEnabled(Z)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGutterHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGutterHeight:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void

    :cond_2
    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mGutterHeight:I

    goto :goto_1
.end method

.method public setHeightOverride(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Lcom/android/systemui/qs/QSFooter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Lcom/android/systemui/qs/QSFooter;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    :cond_1
    return-void
.end method

.method public updateDataUsageInfo()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFooterDataUsage;->updateDataUsageInfo()V

    :cond_0
    return-void
.end method

.method public updateExpansion()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainerImpl;->setBottom(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBottom(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessMarginTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setBottom(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessMarginTop:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessView:Lcom/android/systemui/settings/ToggleSliderView;

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretHeight:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBrightnessHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/settings/ToggleSliderView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mExpandIndicator:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretHeight:I

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public updateFooter()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSFooterDataUsage;->isAvailable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFooterChildCount:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFooterChildCount:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/QSContainerImpl;->updatePanelBottomMargin(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/QSContainerImpl;->updatePanelBottomMargin(Landroid/view/View;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateIndicator(F)V
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIndicarotProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mIndicarotProgress:F

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretDrawable:Lcom/android/systemui/qs/CaretDrawable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/CaretDrawable;->setCaretProgress(F)V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/qs/QSContainerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainerImpl$1;-><init>(Lcom/android/systemui/qs/QSContainerImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCaretAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public updateQSDataUsage(Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0d00c4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSFooterDataUsage;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSFooterDataUsage;->setQSContainer(Lcom/android/systemui/qs/QSContainerImpl;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooter:Lcom/android/systemui/qs/QSFooter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSFooterContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSFooterDataUsage;->setQSContainer(Lcom/android/systemui/qs/QSContainerImpl;)V

    iput-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mDataUsageBar:Lcom/android/systemui/qs/QSFooterDataUsage;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateFooter()V

    goto :goto_0
.end method
.method public updateToggleColumns()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->updateResources(Z)V

    return-void
.end method