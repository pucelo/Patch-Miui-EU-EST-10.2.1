.class public Lcom/android/keyguard/KeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPinView$1;,
        Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# instance fields
.field private mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

.field private mContainer:Landroid/view/ViewGroup;

.field private mRemainingAttempts:I

.field private mShowDefaultMessage:Z

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubId:I

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardSimPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardSimPinView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardSimPinView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method private getPinPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f11038c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v2, "KeyguardSimPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " displayMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-lez p1, :cond_2

    if-eqz p2, :cond_1

    const v1, 0x7f0f0012

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f0f0014

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const v1, 0x7f11039f

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v1, 0x7f11038a

    goto :goto_2
.end method

.method private handleSubInfoChangeIfNeeded()V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    :cond_0
    return-void
.end method

.method private showDefaultMessage()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget v7, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    invoke-direct {p0, v7, v9}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->getPhoneCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v0, -0x1

    const/4 v6, 0x2

    if-ge v1, v6, :cond_2

    const v6, 0x7f11039f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v6, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/android/keyguard/KeyguardSimPinView$3;

    const-string/jumbo v7, ""

    iget v8, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-direct {v6, p0, p0, v7, v8}, Lcom/android/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSimPinView$3;->start()V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v2, v6, v8

    const v7, 0x7f1103a0

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v2, ""

    goto :goto_1
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a0297

    return v0
.end method

.method protected handleConfigurationFontScaleChanged()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07022f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/android/keyguard/EmergencyButton;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDeleteButton:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected handleConfigurationOrientationChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x7f070227

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const v2, 0x7f070226

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    const v0, 0x7f0a0167

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDeleteButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mBackButton:Lcom/android/keyguard/BackButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/BackButton;->setVisibility(I)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    const-string/jumbo v0, "KeyguardSimPinView"

    const-string/jumbo v1, "Resetting state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChangeIfNeeded()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V

    :cond_0
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f110386

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(ZZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/android/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->start()V

    :cond_1
    return-void
.end method
