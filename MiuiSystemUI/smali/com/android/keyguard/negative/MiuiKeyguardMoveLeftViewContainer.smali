.class public Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;
.super Landroid/widget/FrameLayout;
.source "MiuiKeyguardMoveLeftViewContainer.java"


# instance fields
.field mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public inflateLeftView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportLockScreenMagazineLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d007a

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftLockScreenMagazineView;

    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0079

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    iput-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    goto :goto_0
.end method

.method public initLeftView()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    invoke-virtual {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->initLeftView()V

    return-void
.end method

.method public isSupportRightMove()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    invoke-virtual {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->isSupportRightMove()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->inflateLeftView()V

    return-void
.end method

.method public setPreBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportLockScreenMagazineLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public uploadData()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;

    invoke-virtual {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->uploadData()V

    return-void
.end method
