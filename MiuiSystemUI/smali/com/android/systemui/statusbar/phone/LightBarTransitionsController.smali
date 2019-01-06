.class public Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
.super Ljava/lang/Object;
.source "LightBarTransitionsController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;,
        Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;
    }
.end annotation


# instance fields
.field private final mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

.field private mDarkIntensity:F

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private mNextDarkIntensity:F

.field private mPendingDarkIntensity:F

.field private mTintAnimator:Landroid/animation/ValueAnimator;

.field private mTintChangePending:Z

.field private mTransitionDeferring:Z

.field private final mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

.field private mTransitionDeferringDuration:J

.field private mTransitionDeferringStartTime:J

.field private mTransitionPending:Z


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method private animateIconTint(FJJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$2;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private deferIconTintChange(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    return-void
.end method

.method private setIconTintInternal(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    return-void
.end method


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0

    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public appTransitionCancelled()V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_2

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    :cond_1
    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public cancelPreloadRecentApps()V
    .locals 0

    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public disable(IIZ)V
    .locals 0

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "  mTransitionDeferring="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "   mTransitionDeferringStartTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "   mTransitionDeferringDuration="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    const-string/jumbo v0, "  mTransitionPending="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mTintChangePending="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mPendingDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mNextDarkIntensity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method public handleShowGlobalActionsMenu()V
    .locals 0

    return-void
.end method

.method public handleSystemNavigationKey(I)V
    .locals 0

    return-void
.end method

.method public hideFingerprintDialog()V
    .locals 0

    return-void
.end method

.method public hideRecentApps(ZZ)V
    .locals 0

    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 0

    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public preloadRecentApps()V
    .locals 0

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0

    return-void
.end method

.method public setIconsDark(ZZ)V
    .locals 8

    const-wide/16 v2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v4, :cond_4

    if-eqz p1, :cond_3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->deferIconTintChange(F)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz v4, :cond_6

    if-eqz p1, :cond_5

    move v1, v0

    :cond_5
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    move v1, v0

    :cond_7
    const-wide/16 v4, 0x78

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0

    return-void
.end method

.method public setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public setWindowState(II)V
    .locals 0

    return-void
.end method

.method public showAssistDisclosure()V
    .locals 0

    return-void
.end method

.method public showFingerprintDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 0

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 0

    return-void
.end method

.method public showRecentApps(ZZ)V
    .locals 0

    return-void
.end method

.method public showScreenPinningRequest(I)V
    .locals 0

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .locals 0

    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    return-void
.end method

.method public toggleSplitScreen()V
    .locals 0

    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0

    return-void
.end method
