.class public Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintUnlockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;
    }
.end annotation


# instance fields
.field private mCancelingPendingLock:Z

.field private final mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mMode:I

.field private mPendingAuthenticatedUserId:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mCancelingPendingLock:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-void
.end method

.method private calculateMode(I)I
    .locals 3

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    return v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    return v1

    :cond_5
    if-eqz v0, :cond_6

    const/4 v1, 0x5

    return v1

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method private cleanup()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    return-void
.end method

.method private keyguardDoneWithoutHomeAnim()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "is_fingerprint_unlock"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    return-void
.end method

.method private recordUnlockWay()V
    .locals 1

    const-string/jumbo v0, "fp"

    invoke-static {v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordUnlockWay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->recordFingerprintUnlockState()V

    return-void
.end method

.method private releaseFingerprintWakeLock()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "releasing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method


# virtual methods
.method public finishKeyguardFadingAway()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->resetMode()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    return-void
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    return v0
.end method

.method public declared-synchronized isCancelingPendingLock()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mCancelingPendingLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFingerprintAcquired()V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "FingerprintUnlockController#onFingerprintAcquired"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/LatencyTracker;->onActionStart(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "wake-and-unlock wakelock"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v0, "acquiring wake-and-unlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string/jumbo v0, "FingerprintController"

    const-string/jumbo v1, "fingerprint acquired, grabbing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->processFingerprintResultAnalytics(I)V

    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 11

    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v4, "FingerprintUnlockController#onFingerprintAuthenticated"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintMode(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    if-ne v4, p1, :cond_4

    if-eq v1, v10, :cond_1

    if-ne v1, v9, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "miui_keyguard_fingerprint"

    const-string/jumbo v5, "Unlock by fingerprint, keyguard is not showing and wake up"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->recordUnlockWay()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelPendingLock()V

    monitor-enter p0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mCancelingPendingLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string/jumbo v5, "android.policy:FINGERPRINT"

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_2
    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->recordFingerprintUnlockState()V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->calculateMode(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    if-eq v4, p1, :cond_7

    iget v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eq v4, v6, :cond_7

    iget v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/keyguard/MiuiKeyguardUtils;->canSwitchUser(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->onKeyguardHide()V

    :cond_6
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintMode(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "calculateMode userid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/Class;Ljava/lang/String;)V

    if-nez v3, :cond_8

    const-string/jumbo v4, "FingerprintController"

    const-string/jumbo v5, "fp wakelock: Authenticated, waking up..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string/jumbo v5, "android.policy:FINGERPRINT"

    invoke-virtual {v4, v6, v7, v5}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_8
    const-string/jumbo v4, "release wake-and-unlock"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    packed-switch v4, :pswitch_data_0

    :goto_3
    :pswitch_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eq v4, v10, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    sget-object v4, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    invoke-static {v9}, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils;->processFingerprintResultAnalytics(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "FingerprintController"

    const-string/jumbo v5, "switchUser failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_a
    iput v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    goto :goto_2

    :pswitch_1
    const-string/jumbo v4, "MODE_DISMISS"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->recordUnlockWay()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :pswitch_2
    const-string/jumbo v4, "MODE_UNLOCK"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->keyguardDoneWithoutHomeAnim()V

    if-nez v3, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->recordUnlockWay()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :pswitch_3
    const-string/jumbo v4, "MODE_SHOW_BOUNCER"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v3, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    :cond_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/high16 v5, 0x43960000    # 300.0f

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_3

    :pswitch_4
    iget v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-ne v4, v10, :cond_e

    const-string/jumbo v4, "MODE_WAKE_AND_UNLOCK_PULSING"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4, v8, v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->keyguardDoneWithoutHomeAnim()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeAndUnlocking()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setWakeAndUnlocking()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->recordUnlockWay()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v4, "MODE_WAKE_AND_UNLOCK"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortDoze()V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    :cond_1
    sget-object v0, Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mFpiState:Lcom/android/keyguard/MiuiKeyguardFingerprintUtils$FingerprintIdentificationState;

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 4

    const/4 v3, -0x1

    const-string/jumbo v1, "FingerprintUnlockController#onFinishedGoingToSleep"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintTemporarilyLockout()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mCancelingPendingLock:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mCancelingPendingLock:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->resetMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    return-void
.end method

.method public declared-synchronized resetCancelingPendingLock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mCancelingPendingLock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mCancelingPendingLock:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetMode()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintMode(I)V

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
