.class public Lcom/android/keyguard/KeyguardPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardPINView.java"

# interfaces
.implements Lcom/android/keyguard/PasswordTextView$TextChangeListener;


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPasswordLength:I

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;

.field private mViews:[[Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPINView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v9, 0x10c000f

    const/4 v8, 0x4

    const v4, 0x3f19999a    # 0.6f

    const v5, 0x3ee66666    # 0.45f

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    const-wide/16 v2, 0x7d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    const-wide/16 v2, 0xbb

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v7, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v7, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/security/MiuiLockPatternUtils;->getLockPasswordLength(I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordLength:I

    iget v0, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordLength:I

    if-ge v0, v8, :cond_0

    iput v8, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordLength:I

    const-string/jumbo v0, "KeyguardPINView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get password length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private enableClipping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    const v0, 0x7f0a0206

    return v0
.end method

.method protected handleConfigurationFontScaleChanged()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07022f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/android/keyguard/EmergencyButton;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mBackButton:Lcom/android/keyguard/BackButton;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/android/keyguard/BackButton;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mDeleteButton:Landroid/widget/TextView;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method protected handleConfigurationOrientationChanged()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070224

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07020c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected handleWrongPassword()V
    .locals 9

    const/4 v6, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v2, -0x42333333    # -0.1f

    const v4, 0x3dcccccd    # 0.1f

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/PasswordTextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->removeTextChangedListener()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/PasswordTextView;->addTextChangedListener(Lcom/android/keyguard/PasswordTextView$TextChangeListener;)V

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a024a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    const v0, 0x7f0a024b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow1:Landroid/view/ViewGroup;

    const v0, 0x7f0a024c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow2:Landroid/view/ViewGroup;

    const v0, 0x7f0a024d

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mRow3:Landroid/view/ViewGroup;

    const/4 v0, 0x6

    new-array v0, v0, [[Landroid/view/View;

    new-array v1, v6, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPINView;->mRow0:Landroid/view/ViewGroup;

    aput-object v2, v1, v3

    aput-object v7, v1, v4

    aput-object v7, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/view/View;

    const v2, 0x7f0a012f

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0130

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0a0131

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/view/View;

    const v2, 0x7f0a0132

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0133

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0a0134

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Landroid/view/View;

    const v2, 0x7f0a0135

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0a0136

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0a0137

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Landroid/view/View;

    aput-object v7, v1, v3

    const v2, 0x7f0a012e

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v7, v1, v5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    const v2, 0x7f0a00c4

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object v7, v1, v4

    const v2, 0x7f0a00a9

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0a0043

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    return-void
.end method

.method public onTextChanged(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/keyguard/KeyguardPINView;->mPasswordLength:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->verifyPasswordAndUnlock()V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mBackButton:Lcom/android/keyguard/BackButton;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/BackButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mBackButton:Lcom/android/keyguard/BackButton;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/BackButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getBLEUnlockState()Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPINView;->setTranslationY(F)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPINView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPINView$1;-><init>(Lcom/android/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->enableClipping(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPINView;->setTranslationY(F)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x118

    iget v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearYTranslation:I

    int-to-float v6, v1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPINView;->mViews:[[Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/KeyguardPINView$2;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPINView$2;-><init>(Lcom/android/keyguard/KeyguardPINView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPINView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    goto :goto_0
.end method
