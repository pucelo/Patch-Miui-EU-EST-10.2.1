.class final Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$1;,
        Lcom/android/server/power/Notifier$2;,
        Lcom/android/server/power/Notifier$3;,
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_SCREEN_BRIGHTNESS_BOOST_CHANGED:I = 0x4

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mInteractive:Z

.field private mInteractiveChangeReason:I

.field private mInteractiveChanging:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingInteractiveState:I

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field private final mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

.field private final mScreenBrightnessBoostIntent:Landroid/content/Intent;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mSuspendWhenScreenOffDueToProximityConfig:Z

.field private mUserActivityPending:Z

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/power/Notifier;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/power/Notifier;)Landroid/view/WindowManagerPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/power/Notifier;)Lcom/android/server/power/SuspendBlocker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->playWirelessChargingStartedSound()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendBrightnessBoostChangedBroadcast()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/power/Notifier;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/power/SuspendBlocker;Landroid/view/WindowManagerPolicy;)V
    .registers 11

    const/high16 v3, 0x50200000

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    new-instance v1, Lcom/android/server/power/Notifier$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/power/Notifier$2;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/power/Notifier$3;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iput-object p4, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iput-object p5, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    iput-object p6, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    new-instance v1, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    const/high16 v2, 0x50000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    :try_start_8f
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_95} :catch_96

    :goto_95
    return-void

    :catch_96
    move-exception v0

    goto :goto_95
.end method

.method private finishPendingBroadcastLocked()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .registers 5

    const/4 v2, 0x0

    const/4 v1, -0x1

    const v0, 0xffff

    and-int/2addr v0, p1

    sparse-switch v0, :sswitch_data_18

    return v1

    :sswitch_a
    return v2

    :sswitch_b
    const/4 v0, 0x1

    return v0

    :sswitch_d
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v0, :cond_12

    return v1

    :cond_12
    return v2

    :sswitch_13
    const/16 v0, 0x12

    return v0

    :sswitch_16
    return v1

    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_a
        0x6 -> :sswitch_b
        0xa -> :sswitch_b
        0x20 -> :sswitch_d
        0x40 -> :sswitch_16
        0x80 -> :sswitch_13
    .end sparse-switch
.end method

.method private handleEarlyInteractiveChange()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$5;

    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2d

    :goto_1a
    monitor-exit v2

    return-void

    :cond_1c
    :try_start_1c
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$6;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$6;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_2d

    goto :goto_1a

    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleLateInteractiveChange()V
    .registers 5

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$7;

    invoke-direct {v3, p0}, Lcom/android/server/power/Notifier$7;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3a

    :goto_11
    monitor-exit v2

    return-void

    :cond_13
    :try_start_13
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    :cond_20
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$8;

    invoke-direct {v3, p0, v0}, Lcom/android/server/power/Notifier$8;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_3a

    goto :goto_11

    :catchall_3a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private playWirelessChargingStartedSound()V
    .registers 8

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "charging_sounds_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_50

    const/4 v0, 0x1

    :goto_11
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wireless_charging_started_sound"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4a

    if-eqz v2, :cond_4a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4a

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {v1, v6}, Landroid/media/Ringtone;->setStreamType(I)V

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    :cond_4a
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v4}, Lcom/android/server/power/SuspendBlocker;->release()V

    return-void

    :cond_50
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private sendBrightnessBoostChangedBroadcast()V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenBrightnessBoostIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mScreeBrightnessBoostChangedDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v6, 0x0

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .registers 10

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_1a
    return-void

    :cond_1b
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_1a
.end method

.method private sendNextBroadcast()V
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-nez v1, :cond_23

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    iget v0, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_3a

    monitor-exit v2

    const/16 v1, 0xaa5

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(II)I

    if-ne v0, v3, :cond_5a

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    :goto_22
    return-void

    :cond_23
    :try_start_23
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v3, :cond_42

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_33

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_3d

    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_3a

    goto :goto_f

    :catchall_3a
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3d
    :try_start_3d
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3a

    monitor-exit v2

    return-void

    :cond_42
    :try_start_42
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_4e

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_4e

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v3, :cond_55

    :cond_4e
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_f

    :cond_55
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3a

    monitor-exit v2

    return-void

    :cond_5a
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    goto :goto_22
.end method

.method private sendUserActivity()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_13

    if-nez v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_13

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->userActivity()V

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendWakeUpBroadcast()V
    .registers 10

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_1b
    return-void

    :cond_1c
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    goto :goto_1b
.end method

.method private static translateOffReason(I)I
    .registers 2

    packed-switch p0, :pswitch_data_a

    const/4 v0, 0x2

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private updatePendingBroadcastLocked()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v1, :cond_2d

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v1, :cond_2d

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_17

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    iget v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v1, v2, :cond_2d

    :cond_17
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2d
    return-void
.end method


# virtual methods
.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 10

    if-eqz p3, :cond_15

    :try_start_2
    invoke-virtual {p3}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1a

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p3, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    invoke-interface {v3, p1, p4, v4}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 10

    if-eqz p3, :cond_15

    :try_start_2
    invoke-virtual {p3}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1a

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p3, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    invoke-interface {v3, p1, p4, v4}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v1

    goto :goto_1a
.end method

.method public onScreenBrightnessBoostChanged()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserActivity(II)V
    .registers 8

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_24

    :goto_5
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit v3

    return-void

    :catchall_21
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_24
    move-exception v0

    goto :goto_5
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 16

    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_1b

    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_1e

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p1

    if-eqz v0, :cond_1c

    const/4 v6, 0x1

    :goto_10
    if-eqz p6, :cond_20

    :try_start_12
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    const/4 v6, 0x0

    goto :goto_10

    :cond_1e
    const/4 v6, 0x0

    goto :goto_10

    :cond_20
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_36} :catch_37

    goto :goto_1b

    :catch_37
    move-exception v7

    goto :goto_1b
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 38

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-direct {v0, v1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v12

    if-eqz p6, :cond_3d

    if-eqz p13, :cond_3d

    if-ltz v7, :cond_3d

    if-ltz v12, :cond_3d

    const/16 v2, 0x3e8

    move/from16 v0, p11

    if-ne v0, v2, :cond_3b

    const/high16 v2, 0x40000000    # 2.0f

    and-int v2, v2, p8

    if-eqz v2, :cond_39

    const/4 v13, 0x1

    :goto_21
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v3, p6

    move/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    move-object/from16 v8, p13

    move/from16 v9, p12

    move-object/from16 v10, p9

    move-object/from16 v11, p14

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_38} :catch_54

    :goto_38
    return-void

    :cond_39
    const/4 v13, 0x0

    goto :goto_21

    :cond_3b
    const/4 v13, 0x0

    goto :goto_21

    :cond_3d
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    move-object/from16 v14, p0

    move/from16 v15, p8

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move/from16 v18, p11

    move/from16 v19, p12

    move-object/from16 v20, p13

    move-object/from16 v21, p14

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    goto :goto_38

    :catch_54
    move-exception v22

    goto :goto_38
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .registers 15

    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v5

    if-ltz v5, :cond_11

    if-eqz p6, :cond_12

    :try_start_8
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v1, p6

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v1, p4

    move v2, p5

    move-object v3, p2

    move-object v4, p7

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    const/16 v2, 0x28

    invoke-interface {v0, v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_28} :catch_29

    goto :goto_11

    :catch_29
    move-exception v6

    goto :goto_11
.end method

.method public onWakeUp(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    if-eqz p3, :cond_e

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    const/16 v2, 0x3d

    invoke-interface {v1, v2, p4, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public onWakefulnessChangeFinished()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    :cond_a
    return-void
.end method

.method public onWakefulnessChangeStarted(II)V
    .registers 7

    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eq v2, v1, :cond_32

    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v2, :cond_19

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    :cond_19
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2, v1}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    iget-object v2, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v2, v1}, Landroid/view/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    :try_start_23
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_33

    :goto_28
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V

    :cond_32
    return-void

    :catch_33
    move-exception v0

    goto :goto_28
.end method

.method public onWirelessChargingStarted()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
