.class public Lcom/android/keyguard/fod/MiuiGxzwOverlayView;
.super Landroid/widget/FrameLayout;
.source "MiuiGxzwOverlayView.java"

# interfaces
.implements Lcom/android/keyguard/fod/MiuiGxzwIconView$CollectGxzwListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;
    }
.end annotation


# instance fields
.field private mAdded:Z

.field private mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

.field private mBrightnessFilePath:Ljava/lang/String;

.field private volatile mDozing:Z

.field private mHbmOverlay:Landroid/view/View;

.field private volatile mInvertColors:Z

.field private mKeyguardAuthen:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMaxBrightness:I

.field private mOverlayAlpha:F

.field private mPreAlpha:F

.field private volatile mShowed:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mKeyguardAuthen:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->caculateOverlayAlpha()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateBrightnessFileWatchState()V

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

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getBrightnessFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    iput-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->initView()V

    return-void
.end method

.method private addOverlayView()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-string/jumbo v0, "MiuiGxzwOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "add overlay view: mOverlayAlpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    :cond_2
    return-void
.end method

.method private addViewAndUpdateAlpha()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private brighnessToAlpha(I)F
    .locals 8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-nez p1, :cond_0

    const-wide v0, 0x3feec85d2b226f4bL    # 0.9619584887

    :goto_0
    double-to-float v2, v0

    return v2

    :cond_0
    const/4 v2, 0x2

    if-lt p1, v2, :cond_2

    const/16 v2, 0x8

    if-gt p1, v2, :cond_2

    const-string/jumbo v2, "equuleus"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ursa"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    int-to-double v2, p1

    const-wide v4, 0x3f6a36e2eb1c432dL    # 0.0032

    mul-double/2addr v2, v4

    const-wide v4, 0x3fb2eb1c432ca57aL    # 0.0739

    add-double/2addr v2, v4

    sub-double v0, v6, v2

    goto :goto_0

    :cond_2
    int-to-double v2, p1

    mul-double/2addr v2, v6

    iget v4, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x407ae00000000000L    # 430.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4082c00000000000L    # 600.0

    div-double/2addr v2, v4

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v0, v6, v2

    goto :goto_0
.end method

.method private caculateOverlayAlpha()F
    .locals 6

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    if-gtz v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->readMaxBrightnessFromFile()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->converBrighnessFrom1024(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->brighnessToAlpha(I)F

    move-result v3

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->readBrightnessFromFile()I

    move-result v1

    if-lez v1, :cond_5

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    if-lez v3, :cond_5

    const-string/jumbo v3, "MiuiGxzwOverlayView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read brightness from file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mMaxBrightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->converBrighnessFrom1024(I)I

    move-result v2

    if-le v1, v2, :cond_2

    const v0, 0x3f283127    # 0.657f

    :goto_0
    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    :goto_1
    const-string/jumbo v3, "MiuiGxzwOverlayView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "caculate overlay alpha: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    if-lez v1, :cond_3

    const v0, 0x3f63d70a    # 0.89f

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->brighnessToAlpha(I)F

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->brighnessToAlpha(I)F

    move-result v0

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v3, :cond_6

    const v0, 0x3f283127    # 0.657f

    const v3, 0x3f283127    # 0.657f

    iput v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mPreAlpha:F

    goto :goto_1
.end method

.method private converBrighnessFrom1024(I)I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mMaxBrightness:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getBrightnessFile()Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "/sys/class/leds/lcd-backlight/brightness"

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1106001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/io/File;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v0, v1, v2

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 6

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0075

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0104

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mHbmOverlay:Landroid/view/View;

    const/16 v0, 0x1300

    invoke-virtual {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->setSystemUiVisibility(I)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e5

    const v4, 0x5011518

    const/4 v5, -0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x800000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "hbm_overlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;-><init>(Lcom/android/keyguard/fod/MiuiGxzwOverlayView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setRoundedCornersOverlayFlag(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private readBrightnessFromFile()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->readIntFromFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private readIntFromFile(Ljava/lang/String;)I
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v2, v3

    :cond_3
    :goto_2
    const/4 v5, -0x1

    return v5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_5
    throw v5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v5

    move-object v2, v3

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v2, v3

    goto :goto_3
.end method

.method private readMaxBrightnessFromFile()I
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/max_brightness"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->readIntFromFile(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private removeOverlayView()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "remove overlay view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->requestDrawWackLock(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    return-void
.end method

.method private updateAlpha(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const-string/jumbo v0, "MiuiGxzwOverlayView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upldate overlay view alpha: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateBrightnessFileWatchState()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->stopWatching()V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->startWatching()V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFilePath:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->onEvent(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mBrightnessFileObserver:Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView$BrightnessFileObserver;->stopWatching()V

    goto :goto_0
.end method

.method private updateViewAddState()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "MiuiGxzwOverlayView"

    const-string/jumbo v2, "dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/16 v1, 0x11

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setScreenEffect(II)V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateBrightnessFileWatchState()V

    return-void

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateViewAddState()V

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mAdded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    :cond_0
    return-void
.end method

.method public onCollectStateChange(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateViewAddState()V

    return-void
.end method

.method public onIconStateChange(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    goto :goto_0
.end method

.method public onKeyguardAuthen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mKeyguardAuthen:Z

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "onScreenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateBrightnessFileWatchState()V

    return-void
.end method

.method public show()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isInvertColorsEnable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mHbmOverlay:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mInvertColors:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iput-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mShowed:Z

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v2, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addViewAndUpdateAlpha()V

    const/16 v0, 0x11

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setScreenEffect(II)V

    return-void

    :cond_1
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public startDozing()V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "startDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    const v0, 0x3f283127    # 0.657f

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mOverlayAlpha:F

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->updateAlpha(F)V

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->addOverlayView()V

    return-void
.end method

.method public stopDozing()V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwOverlayView"

    const-string/jumbo v1, "stopDozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->mDozing:Z

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    return-void
.end method
