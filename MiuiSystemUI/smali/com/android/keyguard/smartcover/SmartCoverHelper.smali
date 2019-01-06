.class public Lcom/android/keyguard/smartcover/SmartCoverHelper;
.super Ljava/lang/Object;
.source "SmartCoverHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/smartcover/SmartCoverHelper$1;,
        Lcom/android/keyguard/smartcover/SmartCoverHelper$2;,
        Lcom/android/keyguard/smartcover/SmartCoverHelper$3;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCharging:Z

.field private mContext:Landroid/content/Context;

.field private mFull:Z

.field private mIsSmartCoverClosed:Z

.field private mIsSmartCoverFullMode:Z

.field private mIsSmartCoverLatticeMode:Z

.field private mLevel:I

.field private mPowerManager:Landroid/os/PowerManager;

.field mScreenOffRunnable:Ljava/lang/Runnable;

.field private final mSmartCoverReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

.field private mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mCharging:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mFull:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/smartcover/SmartCoverHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mLevel:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/keyguard/smartcover/SmartCoverView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/smartcover/SmartCoverHelper;)Lcom/android/systemui/keyguard/KeyguardViewMediator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mCharging:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mFull:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mIsSmartCoverClosed:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mIsSmartCoverFullMode:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/smartcover/SmartCoverHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mIsSmartCoverLatticeMode:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/smartcover/SmartCoverHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mLevel:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/smartcover/SmartCoverHelper;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->hideLockForMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/smartcover/SmartCoverHelper;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->needRefreshSmartCoverWindow(I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/smartcover/SmartCoverHelper$1;-><init>(Lcom/android/keyguard/smartcover/SmartCoverHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/smartcover/SmartCoverHelper$2;-><init>(Lcom/android/keyguard/smartcover/SmartCoverHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/smartcover/SmartCoverHelper$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/smartcover/SmartCoverHelper$3;-><init>(Lcom/android/keyguard/smartcover/SmartCoverHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mScreenOffRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "miui.intent.action.SMART_COVER"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mBatteryBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private hideLockForMode(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCallOrClockShowing()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    move v2, v3

    :goto_0
    return v2

    :cond_1
    const-string/jumbo v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.android.deskclock.activity.AlarmAlertFullScreenActivity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method private needRefreshSmartCoverWindow(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq v1, p1, :cond_0

    const/4 v1, 0x4

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onScreenTurnedOn()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mScreenOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/SmartCoverView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mScreenOffRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/smartcover/SmartCoverView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->refreshSmartCover()V

    return-void
.end method

.method public refreshSmartCover()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mIsSmartCoverLatticeMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mIsSmartCoverFullMode:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mIsSmartCoverClosed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->isInCallOrClockShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->showSmartCover(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mIsSmartCoverClosed:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->isInCallOrClockShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/SmartCoverHelper;->showSmartCover(Z)V

    goto :goto_0
.end method

.method public showSmartCover(Z)V
    .locals 7

    const/4 v1, -0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mIsSmartCoverFullMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0d0041

    :goto_0
    invoke-static {v3, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/smartcover/SmartCoverView;

    iput-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    const/16 v3, 0x1300

    invoke-virtual {v2, v3}, Lcom/android/keyguard/smartcover/SmartCoverView;->setSystemUiVisibility(I)V

    :cond_0
    if-eqz p1, :cond_2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    const v4, 0x5030500

    const/4 v5, 0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string/jumbo v1, "smart_cover"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    iget-boolean v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mCharging:Z

    iget-boolean v3, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mFull:Z

    iget v4, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mLevel:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/keyguard/smartcover/SmartCoverView;->onBatteryInfoRefresh(ZZI)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mScreenOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/smartcover/SmartCoverView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mScreenOffRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/keyguard/smartcover/SmartCoverView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_1
    const v2, 0x7f0d00f4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    iget-object v2, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mScreenOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/smartcover/SmartCoverView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    invoke-interface {v6, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/smartcover/SmartCoverHelper;->mSmartCoverView:Lcom/android/keyguard/smartcover/SmartCoverView;

    goto :goto_1
.end method
