.class public Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;
.super Ljava/lang/Object;
.source "MiuiDozeScreenBrightnessController.java"

# interfaces
.implements Lcom/android/keyguard/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

.field private static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mDozeTriggers:Lcom/android/keyguard/doze/DozeTriggers;

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/doze/DozeHost;

.field private mLight:Z

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mListenLightSensorTimeout:Lcom/android/keyguard/util/AlarmTimeout;

.field private final mMachine:Lcom/android/keyguard/doze/DozeMachine;

.field private final mOffTimeout:Lcom/android/keyguard/util/AlarmTimeout;

.field private mRegistered:Z

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mService:Lcom/android/keyguard/doze/DozeMachine$Service;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/systemui/doze/DozeHost;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mHost:Lcom/android/systemui/doze/DozeHost;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mLight:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/doze/DozeMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/util/AlarmTimeout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mOffTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/doze/DozeMachine$Service;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->INITIALIZED:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

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
    sput-object v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mLight:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->checkToScreenOff(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/keyguard/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/keyguard/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/keyguard/doze/DozeMachine$Service;Lcom/android/systemui/doze/DozeHost;Landroid/hardware/SensorManager;Lcom/android/keyguard/doze/DozeTriggers;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;-><init>(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    iput-object p4, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    iput-object p5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p6, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p7, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mDozeTriggers:Lcom/android/keyguard/doze/DozeTriggers;

    new-instance v0, Lcom/android/keyguard/util/AlarmTimeout;

    new-instance v1, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;-><init>(BLjava/lang/Object;)V

    const-string/jumbo v2, "OffAlarmTimeout"

    invoke-direct {v0, p3, v1, v2, p1}, Lcom/android/keyguard/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mOffTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2655

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    new-instance v0, Lcom/android/keyguard/util/AlarmTimeout;

    new-instance v1, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;-><init>(BLjava/lang/Object;)V

    const-string/jumbo v2, "onListenLightSensorTimeout"

    invoke-direct {v0, p3, v1, v2, p1}, Lcom/android/keyguard/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mListenLightSensorTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    return-void
.end method

.method private checkToScreenOff(Z)V
    .locals 7

    xor-int/lit8 v1, p1, 0x1

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    invoke-virtual {v5}, Lcom/android/keyguard/doze/DozeMachine;->getState()Lcom/android/keyguard/doze/DozeMachine$State;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    :goto_0
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_4

    const/4 v3, 0x1

    :goto_1
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-eqz p1, :cond_6

    if-nez v2, :cond_0

    if-eqz v3, :cond_6

    :cond_0
    sget-boolean v5, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Brightness Light, unpausing AOD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-interface {v5, v6}, Lcom/android/keyguard/doze/DozeMachine$Service;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    sget-boolean v5, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Brightness Dark, pausing AOD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-interface {v5, v6}, Lcom/android/keyguard/doze/DozeMachine$Service;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    goto :goto_3
.end method

.method private onListenLightSensorTimeout()V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mRegistered:Z

    :cond_0
    return-void
.end method

.method private onOffTimeout()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mLight:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->checkToScreenOff(Z)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_keyguard_doze_MiuiDozeScreenBrightnessController-mthref-0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->onOffTimeout()V

    return-void
.end method

.method synthetic -com_android_keyguard_doze_MiuiDozeScreenBrightnessController-mthref-1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->onListenLightSensorTimeout()V

    return-void
.end method

.method public transitionTo(Lcom/android/keyguard/doze/DozeMachine$State;Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mListenLightSensorTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    const-wide/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/keyguard/util/AlarmTimeout;->schedule(JI)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mOffTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/keyguard/util/AlarmTimeout;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mListenLightSensorTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/keyguard/util/AlarmTimeout;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->mRegistered:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
