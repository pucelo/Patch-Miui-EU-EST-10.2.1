.class Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/statusbar/StatusBarManagerInternal$GlobalActionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardShowing:Z

.field private mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

.field private final mShowTimeout:Ljava/lang/Runnable;

.field private mShowing:Z

.field private mStatusBarConnected:Z

.field private final mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/GlobalActions;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/LegacyGlobalActions;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/GlobalActions;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setGlobalActionsListener(Lcom/android/server/statusbar/StatusBarManagerInternal$GlobalActionsListener;)V

    :cond_28
    return-void
.end method

.method private ensureLegacyCreated()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    new-instance v3, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;-><init>(BLjava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    return-void
.end method


# virtual methods
.method synthetic -com_android_server_policy_GlobalActions-mthref-0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->onGlobalActionsDismissed()V

    return-void
.end method

.method public onGlobalActionsDismissed()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    return-void
.end method

.method public onGlobalActionsShown()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStatusBarConnectedChanged(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarConnected:Z

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarConnected:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->showDialog(ZZ)V

    :cond_18
    return-void
.end method

.method public showDialog(ZZ)V
    .registers 7

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarConnected:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mStatusBarInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showGlobalActions()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    iget-boolean v1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean v2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->showDialog(ZZ)V

    goto :goto_19
.end method
