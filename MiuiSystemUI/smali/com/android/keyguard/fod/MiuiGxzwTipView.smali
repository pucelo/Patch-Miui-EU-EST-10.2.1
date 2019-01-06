.class public Lcom/android/keyguard/fod/MiuiGxzwTipView;
.super Landroid/widget/FrameLayout;
.source "MiuiGxzwTipView.java"


# instance fields
.field private mGxzwAnimHeight:I

.field private mGxzwAnimWidth:I

.field private mGxzwIconHeight:I

.field private mGxzwIconWidth:I

.field private mGxzwIconX:I

.field private mGxzwIconY:I

.field private mKeyguardAuthen:Z

.field private mPortraitOrientation:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowed:Z

.field private mTryAgain:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mShowed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mPortraitOrientation:Z

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0076

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x7f0a0102

    invoke-virtual {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconX:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconY:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconWidth:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconHeight:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimWidth:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mScreenWidth:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mScreenHeight:I

    const/16 v3, 0x1304

    invoke-virtual {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->setSystemUiVisibility(I)V

    return-void
.end method

.method private updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V
    .locals 12

    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mPortraitOrientation:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconX:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimWidth:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconWidth:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v7, v9, v10

    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconY:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimHeight:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v8, v9, v10

    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimWidth:I

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "display"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mKeyguardAuthen:Z

    if-nez v9, :cond_1

    const/4 v9, 0x2

    if-eq v3, v9, :cond_0

    const/4 v9, 0x3

    if-ne v3, v9, :cond_1

    :cond_0
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mPortraitOrientation:Z

    if-eqz v9, :cond_3

    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mScreenWidth:I

    :goto_1
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mPortraitOrientation:Z

    if-eqz v9, :cond_4

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mScreenHeight:I

    :goto_2
    sub-int v9, v5, v7

    sub-int v7, v9, v6

    sub-int v9, v4, v8

    sub-int v8, v9, v2

    :cond_1
    iput v6, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v8, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void

    :cond_2
    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconX:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimWidth:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconWidth:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v8, v9, v10

    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconY:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimHeight:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v7, v9, v10

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimWidth:I

    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimHeight:I

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mScreenHeight:I

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mScreenWidth:I

    goto :goto_2
.end method

.method private updateOrientation(Z)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mPortraitOrientation:Z

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mPortraitOrientation:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mShowed:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mShowed:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->setVisibility(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mKeyguardAuthen:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->updateOrientation(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyguardAuthen(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mKeyguardAuthen:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mKeyguardAuthen:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->updateOrientation(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public show()V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mShowed:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mShowed:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mKeyguardAuthen:Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mPortraitOrientation:Z

    iput v7, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconX:I

    iput v7, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconY:I

    iput v7, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconWidth:I

    iput v7, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwIconHeight:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimWidth:I

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mGxzwAnimHeight:I

    const/16 v3, 0x7df

    const v4, 0x1000618

    const/4 v5, -0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForP;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setFlag(Landroid/view/WindowManager$LayoutParams;)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->updateLpByOrientation(Landroid/view/WindowManager$LayoutParams;)V

    const-string/jumbo v1, "gxzw_tip"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->setVisibility(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v6, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startTipAnim(ZLjava/lang/String;F)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/high16 v3, -0x1000000

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setTranslationY(F)V

    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    const-string/jumbo v4, "translationX"

    new-array v5, v9, [F

    const/high16 v6, 0x42700000    # 60.0f

    aput v6, v5, v7

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;

    invoke-direct {v3}, Lmiui/maml/animation/interpolater/ElasticEaseOutInterpolater;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Landroid/animation/ObjectAnimator;

    invoke-direct {v3}, Landroid/animation/ObjectAnimator;-><init>()V

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    aput v10, v5, v7

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v2, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public stopTipAnim()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwTipView;->mTryAgain:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
