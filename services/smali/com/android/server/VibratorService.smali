.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$1;,
        Lcom/android/server/VibratorService$2;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$Vibration;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$VibratorShellCommand;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:[Landroid/os/VibrationEffect;

.field private final mH:Landroid/os/Handler;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mSupportsAmplitudeControl:Z

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/VibratorService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/VibratorService;JIII)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/VibratorService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/VibratorService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 13

    const/4 v10, -0x1

    const/4 v9, 0x1

    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    iput v10, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    new-instance v7, Lcom/android/server/VibratorService$1;

    invoke-direct {v7, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    new-instance v7, Lcom/android/server/VibratorService$2;

    invoke-direct {v7, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "power"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string/jumbo v7, "*vibrator*"

    invoke-virtual {v4, v9, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v7, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string/jumbo v7, "appops"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const-string/jumbo v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0084

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e003d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x112000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070051

    invoke-static {v7, v8}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/VibratorService;->createEffect([J)Landroid/os/VibrationEffect;

    move-result-object v0

    const/4 v7, 0x4

    new-array v7, v7, [J

    fill-array-data v7, :array_ea

    invoke-static {v7, v10}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107001b

    invoke-static {v7, v8}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/VibratorService;->createEffect([J)Landroid/os/VibrationEffect;

    move-result-object v5

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/os/VibrationEffect;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    aput-object v2, v7, v9

    const/4 v8, 0x2

    aput-object v5, v7, v8

    iput-object v7, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    return-void

    :array_ea
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 10

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v0, v1, :cond_f

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/VibratorService$VibrationInfo;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get2(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private static createEffect([J)Landroid/os/VibrationEffect;
    .registers 5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_9

    :cond_8
    return-object v1

    :cond_9
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    aget-wide v0, p0, v3

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_13
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    return-void
.end method

.method private doVibratorExists()Z
    .registers 2

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_22

    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit v3

    return-void

    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private doVibratorOn(JIII)V
    .registers 11

    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, -0x1

    if-ne p3, v3, :cond_8

    :try_start_6
    iget p3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    :cond_8
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_31

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v3, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v2, :cond_37

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_31
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_39

    :cond_37
    monitor-exit v4

    return-void

    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .registers 16

    iget-object v13, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v13

    :try_start_3
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v9

    check-cast v9, Landroid/os/VibrationEffect$Prebaked;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_2b

    invoke-virtual {v9}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v10

    const-wide/16 v4, 0x0

    cmp-long v1, v10, v4

    if-lez v1, :cond_2b

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-direct {p0, v1, v10, v11}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_75

    monitor-exit v13

    return-wide v10

    :cond_2b
    :try_start_2b
    invoke-virtual {v9}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_75

    move-result v1

    if-nez v1, :cond_35

    const-wide/16 v4, 0x0

    monitor-exit v13

    return-wide v4

    :cond_35
    :try_start_35
    invoke-virtual {v9}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v8

    if-ltz v8, :cond_40

    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    array-length v1, v1

    if-lt v8, v1, :cond_4d

    :cond_40
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_75

    const-wide/16 v4, 0x0

    monitor-exit v13

    return-wide v4

    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    aget-object v1, v1, v8

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/VibratorService;->mFallbackEffects:[Landroid/os/VibrationEffect;

    aget-object v3, v1, v8

    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_71
    .catchall {:try_start_4d .. :try_end_71} :catchall_75

    monitor-exit v13

    const-wide/16 v4, 0x0

    return-wide v4

    :catchall_75
    move-exception v1

    monitor-exit v13

    throw v1
.end method

.method private doVibratorSetAmplitude(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    :cond_7
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .registers 9

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v2, v6, v3, v4, v5}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2a

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v2, v3, v6, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2b

    move-result v1

    :cond_2a
    :goto_2a
    return v1

    :catch_2b
    move-exception v0

    const-string/jumbo v2, "VibratorService"

    const-string/jumbo v3, "Failed to get appop mode for vibration!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto :goto_2a
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_8

    return-object v3

    :cond_8
    array-length v3, v0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_17

    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    return-object v2
.end method

.method private isAllowedToVibrate(Lcom/android/server/VibratorService$Vibration;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    return v2

    :cond_f
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    if-nez v0, :cond_14

    return v3

    :cond_14
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_24

    :cond_23
    return v2

    :cond_24
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_23

    return v3
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .registers 4

    const/4 v2, 0x0

    instance-of v1, p0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v1, :cond_10

    move-object v0, p0

    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v1

    if-ltz v1, :cond_10

    const/4 v1, 0x1

    return v1

    :cond_10
    return v2
.end method

.method private noteVibratorOffLocked()V
    .registers 4

    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v1, :cond_e

    :try_start_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_f

    :goto_b
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    :cond_e
    return-void

    :catch_f
    move-exception v0

    goto :goto_b
.end method

.method private noteVibratorOnLocked(IJ)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private reportFinishVibrationLocked()V
    .registers 8

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_24

    :try_start_5
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v4}, Lcom/android/server/VibratorService$Vibration;->-get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v1, v2, v5, v3, v4}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1d} :catch_25

    :goto_1d
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    iput-object v6, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    :cond_24
    return-void

    :catch_25
    move-exception v0

    goto :goto_1d
.end method

.method private shouldVibrateForRingtone()Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_when_ringing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_25

    if-eqz v1, :cond_23

    :goto_22
    return v2

    :cond_23
    move v2, v3

    goto :goto_22

    :cond_25
    if-ne v1, v2, :cond_28

    :goto_27
    return v2

    :cond_28
    move v2, v3

    goto :goto_27
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 12

    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v1

    instance-of v1, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v1, :cond_30

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v5

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v1

    instance-of v1, v1, Landroid/os/VibrationEffect$Waveform;

    if-eqz v1, :cond_53

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v7

    check-cast v7, Landroid/os/VibrationEffect$Waveform;

    new-instance v1, Lcom/android/server/VibratorService$VibrateThread;

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get5(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-direct {v1, p0, v7, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_2f

    :cond_53
    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v1

    instance-of v1, v1, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v1, :cond_6d

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v8

    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2f

    :cond_6d
    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Unknown vibration type, ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrate(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2e

    const-string/jumbo v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Would be an error: vibrate from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get4(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void

    :cond_2f
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V

    return-void
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v0

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_10
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .registers 13

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_4
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "vibrate_input_devices"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_11} :catch_6a

    move-result v7

    if-lez v7, :cond_5a

    const/4 v5, 0x1

    :goto_15
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v5, v7, :cond_1c

    const/4 v0, 0x1

    iput-boolean v5, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    :cond_1c
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v7, :cond_5c

    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v7, :cond_2d

    iput-boolean v11, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v8, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v7, p0, v8}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    :cond_2d
    :goto_2d
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v7, :cond_69

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v7}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    const/4 v2, 0x0

    :goto_3d
    array-length v7, v3

    if-ge v2, v7, :cond_68

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v8, v3, v2

    invoke-virtual {v7, v8}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_57

    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_5a
    const/4 v5, 0x0

    goto :goto_15

    :cond_5c
    iget-boolean v7, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v7, :cond_2d

    iput-boolean v10, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v7, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v7, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    goto :goto_2d

    :cond_68
    return v11

    :cond_69
    return v0

    :catch_6a
    move-exception v4

    goto :goto_15
.end method

.method private updateLowPowerModeLocked()Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v0, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_11

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v1, 0x1

    return v1

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrators()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v1

    if-nez v0, :cond_f

    if-eqz v1, :cond_12

    :cond_f
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v3

    return-void

    :catchall_14
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private verifyIncomingUid(I)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .registers 5

    const/4 v3, 0x0

    if-nez p0, :cond_d

    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_12

    const/4 v1, 0x1

    return v1

    :catch_12
    move-exception v0

    const-string/jumbo v1, "VibratorService"

    const-string/jumbo v2, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformEffect(JJ)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.VIBRATE"

    const-string/jumbo v4, "cancelVibrate"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_e
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v2}, Lcom/android/server/VibratorService$Vibration;->-get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_24

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_2b

    move-result-wide v0

    :try_start_1e
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    :try_start_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2b

    :cond_24
    monitor-exit v3

    return-void

    :catchall_26
    move-exception v2

    :try_start_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "VibratorService"

    invoke-static {v2, v3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_c

    return-void

    :cond_c
    const-string/jumbo v2, "Previous vibrations:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_15
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorService$VibrationInfo;

    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_35

    goto :goto_1b

    :catchall_35
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_38
    :try_start_38
    invoke-static {p1, p2, p3}, Lcom/android/server/VibratorServiceInjector;->dumpVibrations(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    monitor-exit v3

    return-void
.end method

.method public hasAmplitudeControl()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasVibrator()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$VibratorShellCommand;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onVibrationFinished()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public systemReady()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/VibratorService$3;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_input_devices"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/VibratorService$4;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/server/VibratorServiceInjector;->init(Lcom/android/server/VibratorService;Landroid/content/Context;)V

    return-void
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    .registers 21

    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.VIBRATE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Requires VIBRATE permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_14
    if-nez p5, :cond_20

    const-string/jumbo v3, "VibratorService"

    const-string/jumbo v4, "token must not be null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v3

    if-nez v3, :cond_2a

    return-void

    :cond_2a
    iget-object v7, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/VibratorServiceInjector;->shouldVibrateForMiui(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;Landroid/content/Context;)Landroid/os/VibrationEffect;

    move-result-object p3

    if-nez p3, :cond_3d

    return-void

    :cond_3d
    iget-object v4, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_40
    move-object/from16 v0, p3

    instance-of v3, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v3

    instance-of v3, v3, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_79

    move-object/from16 v0, p3

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    move-object v14, v0

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v10

    check-cast v10, Landroid/os/VibrationEffect$OneShot;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v14}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/VibratorService$Vibration;->hasLongerTimeout(J)Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-virtual {v14}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    invoke-virtual {v10}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I
    :try_end_74
    .catchall {:try_start_40 .. :try_end_74} :catchall_91

    move-result v5

    if-ne v3, v5, :cond_79

    monitor-exit v4

    return-void

    :cond_79
    monitor-exit v4

    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v3

    if-nez v3, :cond_94

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v3, :cond_94

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-static {v3}, Lcom/android/server/VibratorService$Vibration;->-get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v3

    if-eqz v3, :cond_94

    return-void

    :catchall_91
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_94
    new-instance v2, Lcom/android/server/VibratorService$Vibration;

    const/4 v9, 0x0

    move-object v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V

    move-object/from16 v0, p3

    instance-of v3, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_b1

    const/4 v3, 0x0

    :try_start_ac
    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_b1} :catch_c6

    :cond_b1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_b5
    iget-object v4, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_cb

    :try_start_b8
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_c1
    .catchall {:try_start_b8 .. :try_end_c1} :catchall_c8

    :try_start_c1
    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_cb

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_c6
    move-exception v11

    return-void

    :catchall_c8
    move-exception v3

    :try_start_c9
    monitor-exit v4

    throw v3
    :try_end_cb
    .catchall {:try_start_c9 .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception v3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
