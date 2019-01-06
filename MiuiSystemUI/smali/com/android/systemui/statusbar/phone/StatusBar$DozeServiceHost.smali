.class final Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DozeServiceHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;
    }
.end annotation


# instance fields
.field private mAODView:Lcom/android/keyguard/AODView;

.field private mAnimateWakeup:Z

.field private mAodScrim:Landroid/view/View;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/doze/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Landroid/view/ViewGroup;

.field private mShowAodAnimate:Z

.field private mSkipFaceUnlockWhenStopDoze:Z

.field private mStopAodRunnable:Ljava/lang/Runnable;

.field private mViewManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->shouldAnimateWakeup()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->onStopDoze()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->updateDensity()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mStopAodRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->showSecurityIdentityViewAt()Lcom/android/keyguard/AODView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->skipFaceUnlockWhenStopDoze(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mSkipFaceUnlockWhenStopDoze:Z

    return-void
.end method

.method private onStopDoze()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get10(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set3(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Lcom/android/keyguard/AODView;->onStopDoze()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get9(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap30(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mSkipFaceUnlockWhenStopDoze:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "screen turn on aod"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sScreenTurnedOnTime:J

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlock()V

    :cond_0
    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->stopDozing()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->removeAODView()V

    :cond_2
    return-void
.end method

.method private shouldAnimateWakeup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAnimateWakeup:Z

    return v0
.end method

.method private showSecurityIdentityViewAt()Lcom/android/keyguard/AODView;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mViewManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mViewManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const v2, 0x7f0d001e

    invoke-virtual {v7, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/AODView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;)V

    invoke-virtual {v6, v2}, Lcom/android/keyguard/AODView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, -0x2

    :goto_0
    const/16 v3, 0x7df

    const/16 v4, 0x500

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-static {v0, v8}, Landroid/view/WindowManagerCompat;->setLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForO;->setFlag(Landroid/view/WindowManager$LayoutParams;)V

    const-string/jumbo v1, "AOD"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mViewManager:Landroid/view/WindowManager;

    invoke-interface {v1, v6, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a0088

    invoke-virtual {v6, v1}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    const v1, 0x7f0a0031

    invoke-virtual {v6, v1}, Lcom/android/keyguard/AODView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAodScrim:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Lcom/android/keyguard/AODView;->setVisibility(I)V

    return-object v6

    :cond_1
    move v5, v1

    goto :goto_0
.end method

.method private updateDensity()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->showSecurityIdentityViewAt()Lcom/android/keyguard/AODView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dozeTimeTick()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Lcom/android/keyguard/AODView;->handleUpdateView()V

    return-void
.end method

.method public extendPulse()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    return-void
.end method

.method public fireAnimateState()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mShowAodAnimate:Z

    invoke-interface {v0, v2}, Lcom/android/systemui/doze/DozeHost$Callback;->onAodAnimate(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireAodState(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onFodInAodStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public firePowerSaveChanged(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost$Callback;->onPowerSaveChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isAnimateShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mShowAodAnimate:Z

    return v0
.end method

.method public isBlockingDoze()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get10(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    return v0
.end method

.method public isPowerSaveActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get2(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isExtremePowerSave()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isProvisioned()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPulsingBlocked()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mFingerprintUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 0

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    return-void
.end method

.method public removeAODView()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Lcom/android/keyguard/AODView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AODView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnimateWakeup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAnimateWakeup:Z

    return-void
.end method

.method public setAodClockVisibility(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAodDimmingScrim(F)V
    .locals 0

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 0

    return-void
.end method

.method public setNotificationAnimate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mShowAodAnimate:Z

    return-void
.end method

.method public startDozing()V
    .locals 6

    const-wide/16 v4, 0x320

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get10(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set3(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->startDozing()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get9(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap30(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/AODView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AODView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Lcom/android/keyguard/AODView;->onStartDoze()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Lcom/android/keyguard/AODView;->handleUpdateView()V

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mAODView:Lcom/android/keyguard/AODView;

    invoke-virtual {v0}, Lcom/android/keyguard/AODView;->isAnimateEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isAodClockDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public stopDozing()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->onStopDoze()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mStopAodRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PSB.DozeServiceHost[mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
