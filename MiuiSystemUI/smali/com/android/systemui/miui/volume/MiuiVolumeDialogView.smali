.class public Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;
.super Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;
.source "MiuiVolumeDialogView.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field private mAttached:Z

.field private mDialogContentView:Landroid/view/ViewGroup;

.field private mDisplay:Landroid/view/Display;

.field private mExpandButton:Landroid/widget/ImageView;

.field private mLastRotation:I

.field private mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

.field private mObservingInternalInsets:Z

.field private mRingerModeLayout:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

.field private mTempColumnContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private setInternalInsetsListener()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mAttached:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isExpanded()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mObservingInternalInsets:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mObservingInternalInsets:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->requestLayout()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_1
.end method

.method private updateExpandButtonH(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v0, Lcom/android/systemui/miui/volume/R$string;->accessibility_volume_collapse:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    sget v0, Lcom/android/systemui/miui/volume/R$string;->accessibility_volume_expand:I

    goto :goto_0
.end method


# virtual methods
.method public dismissH(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startDismiss(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mRingerModeLayout:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->cleanUp()V

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public isOffMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mRingerModeLayout:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-virtual {v1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setDisplay(Landroid/view/Display;)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mLastRotation:I

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mAttached:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setInternalInsetsListener()V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->onDetachedFromWindow()V

    iput-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-virtual {v0, v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setDisplay(Landroid/view/Display;)V

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mAttached:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setInternalInsetsListener()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mLastRotation:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-virtual {v1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->updateStates()V

    :cond_0
    iput v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mLastRotation:I

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onExpandStateUpdated(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->onExpandStateUpdated(Z)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startExpandH(Z)V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mRingerModeLayout:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->updateExpandedH(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->updateExpandButtonH(Z)V

    invoke-direct {p0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->setInternalInsetsListener()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    invoke-super {p0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseLinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/miui/volume/R$id;->volume_expand_button:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mExpandButton:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_content:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mDialogContentView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/miui/volume/R$id;->miui_volume_ringer_layout:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mRingerModeLayout:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    sget v0, Lcom/android/systemui/miui/volume/R$id;->volume_dialog_column_temp:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mTempColumnContainer:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    iget-object v2, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mDialogContentView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mTempColumnContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mRingerModeLayout:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    return-void
.end method

.method public setMotionCallback(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->setCallback(Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion$Callback;)V

    return-void
.end method

.method public setSilenceMode(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mRingerModeLayout:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->setSilenceMode(IZ)V

    return-void
.end method

.method public showH()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mMotion:Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiVolumeDialogMotion;->startShow()V

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mRingerModeLayout:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-virtual {v0}, Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;->init()V

    return-void
.end method

.method public updateFooterVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/MiuiVolumeDialogView;->mRingerModeLayout:Lcom/android/systemui/miui/volume/MiuiRingerModeLayout;

    invoke-static {v0, p1}, Lcom/android/systemui/miui/volume/Util;->setVisOrGone(Landroid/view/View;Z)V

    return-void
.end method
