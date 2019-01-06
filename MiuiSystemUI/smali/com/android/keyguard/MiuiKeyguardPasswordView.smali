.class public abstract Lcom/android/keyguard/MiuiKeyguardPasswordView;
.super Landroid/widget/LinearLayout;
.source "MiuiKeyguardPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;
.implements Lcom/android/keyguard/BackButton$BackButtonCallback;


# instance fields
.field protected mBackButton:Lcom/android/keyguard/BackButton;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mDeleteButton:Landroid/widget/TextView;

.field protected mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field protected mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

.field private mFontScale:F

.field protected mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOrientation:I

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method private setSwitchUserWrongMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/KeyguardBouncerMessageView;->showMessage(II)V

    return-void
.end method


# virtual methods
.method protected allowUnlock(I)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasOwnerUserAuthenticatedSinceBoot()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f1102f6

    invoke-direct {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->setSwitchUserWrongMessage(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->handleWrongPassword()V

    return v3

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGreenKidActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1102f5

    invoke-direct {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->setSwitchUserWrongMessage(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->handleWrongPassword()V

    return v3

    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isPhoneCalling(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "miui_keyguard_password"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t switch user to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when calling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1102f4

    invoke-direct {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->setSwitchUserWrongMessage(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->handleWrongPassword()V

    return v3

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected getRequiredStrongAuthTimeout()J
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/app/admin/DevicePolicyManagerCompat;->getRequiredStrongAuthTimeout(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)J

    move-result-wide v2

    return-wide v2
.end method

.method protected abstract handleConfigurationFontScaleChanged()V
.end method

.method protected abstract handleConfigurationOrientationChanged()V
.end method

.method protected handleWrongPassword()V
    .locals 0

    return-void
.end method

.method public onBackButtonClicked()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mFontScale:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->handleConfigurationFontScaleChanged()V

    iput v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mFontScale:F

    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mOrientation:I

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->handleConfigurationOrientationChanged()V

    iput v1, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mOrientation:I

    :cond_1
    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0166

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyCarrierArea;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    const v0, 0x7f0a00c4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    const v0, 0x7f0a0043

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/BackButton;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mBackButton:Lcom/android/keyguard/BackButton;

    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mBackButton:Lcom/android/keyguard/BackButton;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/BackButton;->setCallback(Lcom/android/keyguard/BackButton$BackButtonCallback;)V

    const v0, 0x7f0a00a9

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mDeleteButton:Landroid/widget/TextView;

    const v0, 0x7f0a0164

    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardBouncerMessageView;

    iput-object v0, p0, Lcom/android/keyguard/MiuiKeyguardPasswordView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    return-void
.end method

.method protected switchUser(I)V
    .locals 3

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-eq v1, p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiKeyguardPasswordView"

    const-string/jumbo v2, "switchUser failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
