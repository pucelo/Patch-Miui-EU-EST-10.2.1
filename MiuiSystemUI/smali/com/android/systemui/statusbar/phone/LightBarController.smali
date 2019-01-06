.class public Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "LightBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mDockedLight:Z

.field private mDockedStackBounds:Landroid/graphics/Rect;

.field private mDockedStackVisibility:I

.field private mDriveMode:Z

.field private mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mForceBlack:Z

.field private mFullScreenStackBounds:Landroid/graphics/Rect;

.field private mFullscreenLight:Z

.field private mFullscreenStackVisibility:I

.field private mHasLightNavigationBar:Z

.field private final mLastDockedBounds:Landroid/graphics/Rect;

.field private final mLastFullscreenBounds:Landroid/graphics/Rect;

.field private mLastNavigationBarMode:I

.field private mLastStatusBarMode:I

.field private mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mNavigationLight:Z

.field private mScrimAlpha:F

.field private mScrimAlphaBelowThreshold:Z

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

.field private mSystemUiVisibility:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    const-class v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private animateChange()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isLight(III)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq p2, v4, :cond_0

    const/4 v4, 0x6

    if-ne p2, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    and-int v4, p1, p3

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    return v2

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private reevaluate()V
    .locals 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/LightBarController;->onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    invoke-virtual {p0, v0, v3, v6, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZI)V

    return-void
.end method

.method private updateNavigation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    :cond_0
    return-void
.end method

.method private updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDriveMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceBlack:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_4

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setDarkMode(Z)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-nez v2, :cond_7

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->setDarkMode(Z)V

    goto :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    if-eqz v2, :cond_8

    move-object v0, p1

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setDarkMode(Z)V

    goto :goto_0

    :cond_8
    move-object v0, p2

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    goto :goto_2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "LightBarController: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, " mSystemUiVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mFullscreenStackVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mDockedStackVisibility=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, " mFullscreenLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mDockedLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, " mLastFullscreenBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " mLastDockedBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, " mNavigationLight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasLightNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, " mLastStatusBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mLastNavigationBarMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, " mScrimAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mScrimAlphaBelowThreshold="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, " StatusBarTransitionsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, " NavigationBarTransitionsController:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 0

    return-void
.end method

.method public onExtremePowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onNavigationVisibilityChanged(IIZI)V
    .locals 7

    const/4 v4, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    not-int v5, p2

    and-int/2addr v5, v3

    and-int v6, p1, p2

    or-int v2, v5, v6

    xor-int v0, v2, v3

    and-int/lit8 v5, v0, 0x10

    if-nez v5, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    const/16 v5, 0x10

    invoke-direct {p0, p1, p4, v5}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v5, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eq v4, v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSystemUiVisibility:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastNavigationBarMode:I

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSystemUiVisibilityChanged(IIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 8

    iget v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    not-int v6, p3

    and-int/2addr v6, v5

    and-int v7, p1, p3

    or-int v3, v6, v7

    xor-int v1, v3, v5

    iget v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    not-int v6, p3

    and-int/2addr v6, v4

    and-int v7, p2, p3

    or-int v2, v6, v7

    xor-int v0, v2, v4

    and-int/lit16 v6, v1, 0x2000

    if-nez v6, :cond_0

    and-int/lit16 v6, v0, 0x2000

    if-eqz v6, :cond_2

    :cond_0
    :goto_0
    const/16 v6, 0x2000

    invoke-direct {p0, v3, p7, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenLight:Z

    const/16 v6, 0x2000

    invoke-direct {p0, v2, p7, v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedLight:Z

    invoke-direct {p0, p4, p5}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullscreenStackVisibility:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackVisibility:I

    iput p7, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastStatusBarMode:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_2
    if-nez p6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mLastDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    goto :goto_0
.end method

.method public setDriveMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDriveMode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFingerprintUnlockController(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-void
.end method

.method public setForceBlack(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceBlack:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mFullScreenStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setScrimAlpha(F)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlphaBelowThreshold:Z

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
