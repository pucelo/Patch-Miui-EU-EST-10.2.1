.class public Lcom/android/keyguard/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/keyguard/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/doze/DozeTriggers$1;,
        Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

.field private static final DEBUG:Z


# instance fields
.field private final mAllowPulseTriggers:Z

.field private final mBroadcastReceiver:Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;

.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeParameters:Lcom/android/keyguard/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private final mMachine:Lcom/android/keyguard/doze/DozeMachine;

.field private mNotificationPulseTime:J

.field private mPulsePending:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcom/android/keyguard/doze/DozeMachine$Service;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWakeLock:Lcom/android/keyguard/util/wakelock/WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/doze/DozeTriggers;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/doze/DozeTriggers;)Lcom/android/keyguard/doze/DozeMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/doze/DozeTriggers;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/doze/DozeTriggers;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/doze/DozeMachine$State;->values()[Lcom/android/keyguard/doze/DozeMachine$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->FINISH:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->INITIALIZED:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->UNINITIALIZED:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/android/keyguard/doze/DozeTriggers;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/doze/DozeTriggers;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/DozeTriggers;->requestPulse(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/doze/DozeTriggers;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Lcom/android/keyguard/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/keyguard/util/wakelock/WakeLock;ZLcom/android/keyguard/doze/DozeMachine$Service;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/keyguard/doze/DozeTriggers;Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;

    new-instance v0, Lcom/android/keyguard/doze/DozeTriggers$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/doze/DozeTriggers$1;-><init>(Lcom/android/keyguard/doze/DozeTriggers;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    iput-object p1, p0, Lcom/android/keyguard/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/doze/DozeTriggers;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    iput-object p3, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p5, p0, Lcom/android/keyguard/doze/DozeTriggers;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iput-object p6, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeParameters:Lcom/android/keyguard/phone/DozeParameters;

    iput-object p7, p0, Lcom/android/keyguard/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p8, p0, Lcom/android/keyguard/doze/DozeTriggers;->mHandler:Landroid/os/Handler;

    iput-object p9, p0, Lcom/android/keyguard/doze/DozeTriggers;->mWakeLock:Lcom/android/keyguard/util/wakelock/WakeLock;

    iput-boolean p10, p0, Lcom/android/keyguard/doze/DozeTriggers;->mAllowPulseTriggers:Z

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    iput-object p11, p0, Lcom/android/keyguard/doze/DozeTriggers;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    return-void
.end method

.method private canPulse()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeTriggers;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine;->getState()Lcom/android/keyguard/doze/DozeMachine$State;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeTriggers;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine;->getState()Lcom/android/keyguard/doze/DozeMachine$State;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTriggersAtInit()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isBlockingDoze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isProvisioned()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->FINISH:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-interface {v0, v1}, Lcom/android/keyguard/doze/DozeMachine$Service;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    :cond_1
    return-void
.end method

.method private continuePulseRequest(I)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mPulsePending:Z

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeTriggers;->canPulse()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/keyguard/doze/DozeTriggers;->mPulsePending:Z

    iget-object v2, p0, Lcom/android/keyguard/doze/DozeTriggers;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/keyguard/doze/DozeMachine;->getState()Lcom/android/keyguard/doze/DozeMachine$State;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v3}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/keyguard/doze/DozeMachine$State;Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/doze/DozeMachine;->requestPulse(I)V

    return-void
.end method

.method private requestPulse(I)V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->extendPulse()V

    iget-boolean v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mPulsePending:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mAllowPulseTriggers:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeTriggers;->canPulse()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/keyguard/doze/DozeTriggers;->mPulsePending:Z

    iget-object v2, p0, Lcom/android/keyguard/doze/DozeTriggers;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/keyguard/doze/DozeMachine;->getState()Lcom/android/keyguard/doze/DozeMachine$State;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v3}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/keyguard/doze/DozeMachine$State;Z)V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/DozeTriggers;->continuePulseRequest(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v0, " notificationPulseTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/keyguard/doze/DozeTriggers;->mNotificationPulseTime:J

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, " pulsePending="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mPulsePending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "DozeSensors:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public transitionTo(Lcom/android/keyguard/doze/DozeMachine$State;Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/doze/DozeTriggers;->-getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;->register(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeTriggers;->checkTriggersAtInit()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/doze/DozeTriggers$TriggerReceiver;->unregister(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
