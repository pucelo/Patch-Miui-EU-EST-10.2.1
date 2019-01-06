.class public Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftLockScreenMagazineView;
.super Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;
.source "MiuiKeyguardMoveLeftLockScreenMagazineView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftLockScreenMagazineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initLeftView()V
    .locals 0

    return-void
.end method

.method public isSupportRightMove()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftLockScreenMagazineView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportLockScreenMagazineLeft()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftBaseView;->onFinishInflate()V

    return-void
.end method

.method public uploadData()V
    .locals 0

    return-void
.end method
