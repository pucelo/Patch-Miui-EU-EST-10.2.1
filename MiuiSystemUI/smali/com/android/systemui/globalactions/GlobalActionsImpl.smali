.class public Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "GlobalActionsImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled:Z

.field private mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

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
    .locals 0

    return-void
.end method

.method public appTransitionFinished()V
    .locals 0

    return-void
.end method

.method public appTransitionPending(Z)V
    .locals 0

    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .locals 0

    return-void
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
    .locals 2

    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-ne v0, v1, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->dismissDialog()V

    :cond_2
    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .locals 0

    return-void
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, -0x1

    return v0
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

.method public onCreate(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUI;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

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

.method public showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-nez v1, :cond_1

    new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const v2, 0x1030237

    invoke-direct {v0, v1, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {v1, v0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showDialog(ZZ)V

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
