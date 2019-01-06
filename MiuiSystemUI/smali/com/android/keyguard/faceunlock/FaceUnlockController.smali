.class public Lcom/android/keyguard/faceunlock/FaceUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceUnlockController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mMode:I

.field private mPendingAuthenticatedUserId:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/faceunlock/FaceUnlockController;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object p2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iput-object p3, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p4, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p5, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p6, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-void
.end method

.method private calculateMode(I)I
    .locals 3

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    return v1

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

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
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

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
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

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

    return-void
.end method

.method private sendFaceUnlcokSucceedBroadcast()V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isScreenTurnOnDelayed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.keyguard.face_unlock_succeed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFaceAuthFailed(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->cleanup()V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    :cond_0
    return-void
.end method

.method public onFaceAuthenticated()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "FingerprintUnlockController#onFaceAuthenticated"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    invoke-direct {p0, v5}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->calculateMode(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "calculateMode userid=0;mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/Class;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string/jumbo v1, "FaceUnlockController"

    const-string/jumbo v2, "fp wakelock: Authenticated, waking up..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "android.policy:FACE"

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "release wake-and-unlock"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    if-eq v1, v7, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_1
    const-string/jumbo v1, "MODE_DISMISS"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "MODE_UNLOCK"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->canPanelBeCollapsed()Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "perseus"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndOccluded()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone()V

    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/FaceUnlockController;->sendFaceUnlcokSucceedBroadcast()V

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "MODE_UNLOCK or MODE_SHOW_BOUNCER"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :pswitch_4
    iget v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mMode:I

    if-ne v1, v7, :cond_7

    const-string/jumbo v1, "MODE_WAKE_AND_UNLOCK_PULSING"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v5, v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking()V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeAndUnlocking()V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setWakeAndUnlocking()V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "MODE_WAKE_AND_UNLOCK"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortDoze()V

    goto :goto_1

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

.method public onFaceLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3

    const/4 v2, -0x1

    const-string/jumbo v0, "FingerprintUnlockController#onFinishedGoingToSleep"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/faceunlock/FaceUnlockController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/faceunlock/FaceUnlockController$1;-><init>(Lcom/android/keyguard/faceunlock/FaceUnlockController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput v2, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mPendingAuthenticatedUserId:I

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public unblockScreenOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/FaceUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->unblockScreenOn()V

    return-void
.end method
