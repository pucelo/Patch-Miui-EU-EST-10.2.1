.class public Lcom/android/keyguard/KeyguardBouncerMessageView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardBouncerMessageView.java"


# instance fields
.field private final MAX_SHAKE_TIMES:I

.field private mContent:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;

.field private mShakeDistance:I

.field private mShakeDuration:I

.field private mShakeTimes:I

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardBouncerMessageView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x19

    iput v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDuration:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->MAX_SHAKE_TIMES:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public applyHintAnimation(J)V
    .locals 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    iget v6, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v6, "X"

    new-array v7, v9, [F

    aput v4, v7, v10

    iget v8, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v5, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDuration:I

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v6, "X"

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    aput v8, v7, v10

    iget v8, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    aput v8, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v5, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDuration:I

    mul-int/lit8 v5, v5, 0x2

    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    const-string/jumbo v6, "X"

    new-array v7, v9, [F

    iget v8, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    int-to-float v8, v8

    sub-float v8, v4, v8

    aput v8, v7, v10

    aput v4, v7, v11

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    if-ne v5, v9, :cond_2

    new-instance v5, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    :goto_0
    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v5, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDuration:I

    int-to-long v6, v5

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v10

    aput-object v1, v5, v11

    aput-object v2, v5, v9

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    new-instance v5, Lcom/android/keyguard/KeyguardBouncerMessageView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardBouncerMessageView$1;-><init>(Lcom/android/keyguard/KeyguardBouncerMessageView;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void

    :cond_2
    new-instance v5, Lmiui/view/animation/SineEaseInInterpolator;

    invoke-direct {v5}, Lmiui/view/animation/SineEaseInInterpolator;-><init>()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0283

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0282

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->resetAnimValue()V

    return-void
.end method

.method public resetAnimValue()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeTimes:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mShakeDistance:I

    return-void
.end method

.method public showMessage(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mTitle:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    if-nez p2, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerMessageView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
