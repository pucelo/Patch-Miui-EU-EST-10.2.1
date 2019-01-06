.class public Lcom/android/keyguard/fod/MiuiGxzwAnimView;
.super Landroid/widget/FrameLayout;
.source "MiuiGxzwAnimView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;


# static fields
.field private static AOD_DOZE_SUSPEND_DELAY:J


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field private mDozing:Z

.field private mDozingIconAnimDone:Z

.field private mEnrolling:Z

.field private mGxzwAnimHeight:I

.field private mGxzwAnimWidth:I

.field private mGxzwIconHeight:I

.field private mGxzwIconWidth:I

.field private mGxzwIconX:I

.field private mGxzwIconY:I

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardAuthen:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLightIcon:Z

.field private mLightWallpaperGxzw:Z

.field private mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

.field private mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

.field private mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

.field private mPortraitOrientation:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShouldShowBackAnim:Z

.field private mShowing:Z

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->AOD_DOZE_SUSPEND_DELAY:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/fod/MiuiGxzwAnimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->removeViewFromWindow()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->AOD_DOZE_SUSPEND_DELAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightIcon:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 11

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0073

    invoke-virtual {v0, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0101

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iput v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    const/16 v0, 0x1304

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setSystemUiVisibility(I)V

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-direct {v0, v3, p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->setMode(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "display"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-direct {v0, v3, v4}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v9, v0, v3

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v10, v0, v3

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "display"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v6

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v6, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v8, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenWidth:I

    iget v0, v8, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenHeight:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7df

    const v4, 0x1000618

    const/4 v5, -0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForP;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setFlag(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "gxzw_anim"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private removeViewFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->stopAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->clean()V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setVisibility(I)V

    return-void
.end method

.method private startFadeAniamtion()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/QuarticEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwAnimView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView$2;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView$3;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateLpByOrientation()V
    .locals 12

    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v7, v9, v10

    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v8, v9, v10

    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

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

    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-nez v9, :cond_1

    const/4 v9, 0x2

    if-eq v3, v9, :cond_0

    const/4 v9, 0x3

    if-ne v3, v9, :cond_1

    :cond_0
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    if-eqz v9, :cond_3

    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenWidth:I

    :goto_1
    iget-boolean v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    if-eqz v9, :cond_4

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenHeight:I

    :goto_2
    sub-int v9, v5, v7

    sub-int v7, v9, v6

    sub-int v9, v4, v8

    sub-int v8, v9, v2

    :cond_1
    iget-object v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v8, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void

    :cond_2
    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v8, v9, v10

    iget v9, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    iget v10, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    iget v11, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    sub-int v7, v9, v10

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimWidth:I

    iget v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwAnimHeight:I

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenHeight:I

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mScreenWidth:I

    goto :goto_2
.end method

.method private updateOrientation(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->updateLpByOrientation()V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->dismiss()V

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getGxzwUnlockMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startFadeAniamtion()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->removeViewFromWindow()V

    goto :goto_0
.end method

.method public drawFingerprintIcon(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->draw(IZF)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    sget-wide v2, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->AOD_DOZE_SUSPEND_DELAY:J

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->updateOrientation(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    const-string/jumbo v3, "MiuiGxzwAnimView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDisplayChanged: oldState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v3, :cond_0

    if-ne v2, v6, :cond_2

    if-ne v1, v8, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startIconAnim(Z)V

    :cond_0
    :goto_0
    iput v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    :cond_1
    return-void

    :cond_2
    if-ne v2, v6, :cond_4

    if-eq v1, v9, :cond_3

    if-ne v1, v10, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    if-nez v3, :cond_0

    iput-boolean v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    invoke-virtual {p0, v6}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startIconAnim(Z)V

    goto :goto_0

    :cond_4
    if-ne v2, v8, :cond_7

    if-eq v1, v9, :cond_5

    if-ne v1, v10, :cond_7

    :cond_5
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    if-eqz v3, :cond_6

    iput-boolean v7, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    invoke-virtual {p0, v6}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0

    :cond_6
    iput-boolean v6, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    invoke-virtual {p0, v6}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startIconAnim(Z)V

    goto :goto_0

    :cond_7
    if-eq v2, v9, :cond_8

    if-ne v2, v10, :cond_0

    :cond_8
    if-ne v1, v8, :cond_0

    iput-boolean v7, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    invoke-virtual {p0, v7}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onKeyguardAuthen(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->onKeyguardAuthen(Z)V

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->updateOrientation(Z)V

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->onKeyguardAuthen(Z)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWallpaperChange(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperGxzw()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    if-eq v1, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v2}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->setLightWallpaperGxzw(Z)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setEnrolling(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mEnrolling:Z

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->setEnrolling(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightIcon:Z

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightIcon:Z

    invoke-virtual {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->setLightIcon(Z)V

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    :cond_2
    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mPortraitOrientation:Z

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconX:I

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconY:I

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconWidth:I

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mGxzwIconHeight:I

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->updateLpByOrientation()V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->show()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public showMorePress()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1102d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x43820000    # 260.0f

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->startTipAnim(ZLjava/lang/String;F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V
    .locals 7

    iget-object v1, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->res:[I

    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget-boolean v0, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->repeat:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->setMode(I)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget v2, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->frameInterval:I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->setFrameInterval(I)V

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    new-instance v5, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwAnimView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    iget v2, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->startPosition:I

    iget v3, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundRes:I

    iget v4, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->backgroundFrame:I

    iget-object v6, p2, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;->customerDrawBitmap:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;

    invoke-virtual/range {v0 .. v6}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->startAnimation([IIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startBackAnim()V
    .locals 4

    const-string/jumbo v1, "MiuiGxzwAnimView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startBackAnim: mShouldShowBackAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getBackAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0
.end method

.method public startDozing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->startDozing()V

    return-void
.end method

.method public startFalseAnim()V
    .locals 5

    const-string/jumbo v1, "MiuiGxzwAnimView"

    const-string/jumbo v2, "startFalseAnim"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFalseAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mLightWallpaperGxzw:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1102d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v4}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getFalseTipTranslationY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->startTipAnim(ZLjava/lang/String;F)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startIconAnim(Z)V
    .locals 3

    const-string/jumbo v1, "MiuiGxzwAnimView"

    const-string/jumbo v2, "startIconAnim"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getIconAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    return-void
.end method

.method public startRecognizingAnim()V
    .locals 3

    const-string/jumbo v1, "MiuiGxzwAnimView"

    const-string/jumbo v2, "startRecognizingAnim"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    iget-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->getRecognizingAnimArgs(Z)Lcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startAnim(ZLcom/android/keyguard/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;)V

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v1}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    return-void
.end method

.method public stopAnim()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwFrameAnimation:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->stopAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    return-void
.end method

.method public stopDozing()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwAnimManager:Lcom/android/keyguard/fod/MiuiGxzwAnimManager;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager;->stopDozing()V

    return-void
.end method

.method public stopTip()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwAnimView"

    const-string/jumbo v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "MiuiGxzwAnimView"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mKeyguardAuthen:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShowing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDisplayState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozingIconAnimDone:Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->startIconAnim(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mShouldShowBackAnim:Z

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mMiuiGxzwTipView:Lcom/android/keyguard/fod/MiuiGxzwTipView;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwTipView;->stopTipAnim()V

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->mDozing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwAnimView;->drawFingerprintIcon(Z)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwAnimView"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
