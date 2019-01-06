.class public Lcom/android/keyguard/charge/MiuiWirelessChargeController;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;,
        Lcom/android/keyguard/charge/MiuiWirelessChargeController$2;,
        Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;,
        Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;
    }
.end annotation


# instance fields
.field private mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

.field private mContext:Landroid/content/Context;

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mJustWirelessCharging:Z

.field private mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

.field private mNeedRepositionDevice:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mScreenOffRunnable:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mShowSlowlyRunnable:Ljava/lang/Runnable;

.field private mStartingDissmissWirelessAlphaAnim:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

.field private mWirelessChargeCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mWirelessChargeView:Landroid/view/View;

.field private mWirelessCharging:Z

.field private mWirelessOnline:Z


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mShowSlowlyRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mDismissRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mStartingDissmissWirelessAlphaAnim:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->checkBatteryStatus(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->checkIfShowWirelessChargeSlowly()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/charge/MiuiWirelessChargeController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->setNeedRepositionDevice(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->showWirelessChargeSlowly()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->startDismissWirelessAlphaAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessOnline:Z

    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessCharging:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mStartingDissmissWirelessAlphaAnim:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$1;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mDismissRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$2;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$3;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mShowSlowlyRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$4;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "wireless_charge"

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private checkBatteryStatus(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 7

    const/4 v6, 0x2

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    const/4 v3, 0x1

    :goto_0
    iget-boolean v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessOnline:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget v4, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    iget-boolean v5, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->showWirelessChargeAnimation(IZ)V

    :cond_0
    if-eqz v3, :cond_6

    if-ne v1, v6, :cond_6

    const/4 v2, 0x1

    :goto_1
    iget-boolean v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessOnline:Z

    if-eqz v4, :cond_1

    xor-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    if-ne v1, v6, :cond_7

    const v4, 0x7f110714

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->showToast(I)V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->setNeedRepositionDevice(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->startDismissWirelessAlphaAnim()V

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_3

    :cond_2
    if-ne v1, v6, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mShowSlowlyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;

    invoke-virtual {v4}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->dismiss()V

    :cond_3
    iget-boolean v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessCharging:Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    const-string/jumbo v4, "polaris"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->checkWirelessChargeEfficiency()V

    :cond_4
    iput-boolean v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessOnline:Z

    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessCharging:Z

    return-void

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    const v4, 0x7f11071a

    goto :goto_2
.end method

.method private checkIfShowWirelessChargeSlowly()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$10;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$10;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private checkWirelessChargeEfficiency()V
    .locals 3

    new-instance v0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$9;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleScreenTurnedOff()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->prepareWirelessChargeView(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->startDismissWirelessAlphaAnim()V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$11;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyNeedRepositionDevice(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;

    invoke-interface {v0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;->onNeedRepositionDevice(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    monitor-exit v3

    return-void
.end method

.method private prepareWirelessChargeView(Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    const v3, 0x7f0d006a

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const/16 v3, 0x1300

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const v3, 0x7f0a004b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    const v4, 0x5030500

    const/4 v5, -0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string/jumbo v1, "wireless_charge"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setNeedRepositionDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->notifyNeedRepositionDevice(Z)V

    return-void
.end method

.method private showToast(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/systemui/Util;->showSystemOverlayToast(Landroid/content/Context;II)Landroid/widget/Toast;

    return-void
.end method

.method private showWirelessChargeAnimation(IZ)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v6, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    invoke-direct {p0, v5}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->prepareWirelessChargeView(Z)V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x2418

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v5, v3, v5

    const/16 v4, 0x2418

    aput v4, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2418

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez p2, :cond_0

    iget-boolean v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mScreenOffRunnable:Ljava/lang/Runnable;

    const/16 v5, 0x2350

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    invoke-virtual {v3, p2}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->setScreenStateWhenStartAnim(Z)V

    new-instance v0, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$5;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/keyguard/charge/MiuiWirelessChargeController$6;

    invoke-direct {v4, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$6;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    new-instance v4, Lcom/android/keyguard/charge/MiuiWirelessChargeController$7;

    invoke-direct {v4, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$7;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mBatteryChargingView:Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/charge/MiuiKeyguardWirelessChargingView;->setChargingProgress(I)V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_1
    return-void
.end method

.method private showWirelessChargeSlowly()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mShowSlowlyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDismissWirelessAlphaAnim()V
    .locals 8

    const/4 v7, 0x1

    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mJustWirelessCharging:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mStartingDissmissWirelessAlphaAnim:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeView:Landroid/view/View;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/charge/MiuiWirelessChargeController$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$8;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean v7, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mStartingDissmissWirelessAlphaAnim:Z

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public isNeedRepositionDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    return v0
.end method

.method public final onBusEvent(Lcom/android/systemui/events/ScreenOffEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->handleScreenTurnedOff()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/events/ScreenOnEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->handleScreenTurnedOn()V

    return-void
.end method

.method public registerWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mNeedRepositionDevice:Z

    invoke-interface {p1, v0}, Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;->onNeedRepositionDevice(Z)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterWirelessChargeCallback(Lcom/android/keyguard/charge/MiuiWirelessChargeController$WirelessChargeCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeController;->mWirelessChargeCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
