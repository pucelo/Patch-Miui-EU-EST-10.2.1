.class public Lcom/android/keyguard/doze/DozeUi;
.super Ljava/lang/Object;
.source "DozeUi.java"

# interfaces
.implements Lcom/android/keyguard/doze/DozeMachine$Part;


# static fields
.field private static final synthetic -com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/doze/DozeHost;

.field private mLastTimeTickElapsed:J

.field private final mMachine:Lcom/android/keyguard/doze/DozeMachine;

.field private final mTimeTicker:Lcom/android/keyguard/util/AlarmTimeout;

.field private final mWakeLock:Lcom/android/keyguard/util/wakelock/WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/doze/DozeUi;)Lcom/android/keyguard/doze/DozeMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/doze/DozeUi;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/doze/DozeUi;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_PULSE_DONE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_REQUEST_PULSE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->FINISH:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->INITIALIZED:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

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
    sput-object v0, Lcom/android/keyguard/doze/DozeUi;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

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

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/keyguard/doze/DozeMachine;Lcom/android/keyguard/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/doze/DozeUi;->mLastTimeTickElapsed:J

    iput-object p1, p0, Lcom/android/keyguard/doze/DozeUi;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/keyguard/doze/DozeUi;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    iput-object p4, p0, Lcom/android/keyguard/doze/DozeUi;->mWakeLock:Lcom/android/keyguard/util/wakelock/WakeLock;

    iput-object p5, p0, Lcom/android/keyguard/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iput-object p6, p0, Lcom/android/keyguard/doze/DozeUi;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/util/AlarmTimeout;

    new-instance v1, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;-><init>(BLjava/lang/Object;)V

    const-string/jumbo v2, "doze_time_tick"

    invoke-direct {v0, p2, v1, v2, p6}, Lcom/android/keyguard/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mTimeTicker:Lcom/android/keyguard/util/AlarmTimeout;

    return-void
.end method

.method static synthetic lambda$-com_android_keyguard_doze_DozeUi_5246()V
    .locals 0

    return-void
.end method

.method private onTimeTick()V
    .locals 3

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeUi;->verifyLastTimeTick()V

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeUi;->mWakeLock:Lcom/android/keyguard/util/wakelock/WakeLock;

    sget-object v2, Lcom/android/keyguard/doze/-$Lambda$--x31UV8vn8BZOUl4p5pH9eIxRA;->$INST$0:Lcom/android/keyguard/doze/-$Lambda$--x31UV8vn8BZOUl4p5pH9eIxRA;

    invoke-interface {v1, v2}, Lcom/android/keyguard/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeUi;->scheduleTimeTick()V

    return-void
.end method

.method private pulseWhileDozing(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/keyguard/doze/DozeUi$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/doze/DozeUi$1;-><init>(Lcom/android/keyguard/doze/DozeUi;)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method private roundToNextMinute(J)J
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private scheduleTimeTick()V
    .locals 6

    iget-object v2, p0, Lcom/android/keyguard/doze/DozeUi;->mTimeTicker:Lcom/android/keyguard/util/AlarmTimeout;

    invoke-virtual {v2}, Lcom/android/keyguard/util/AlarmTimeout;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/doze/DozeUi;->roundToNextMinute(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    iget-object v2, p0, Lcom/android/keyguard/doze/DozeUi;->mTimeTicker:Lcom/android/keyguard/util/AlarmTimeout;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/keyguard/util/AlarmTimeout;->schedule(JI)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/doze/DozeUi;->mLastTimeTickElapsed:J

    return-void
.end method

.method private unscheduleTimeTick()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mTimeTicker:Lcom/android/keyguard/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/keyguard/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeUi;->verifyLastTimeTick()V

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mTimeTicker:Lcom/android/keyguard/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/keyguard/util/AlarmTimeout;->cancel()V

    return-void
.end method

.method private updateAnimateWakeup(Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/doze/DozeUi;->-getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private verifyLastTimeTick()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/doze/DozeUi;->mLastTimeTickElapsed:J

    sub-long v2, v4, v6

    const-wide/32 v4, 0x15f90

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeUi;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeLog;->traceMissedTick(Ljava/lang/String;)V

    const-string/jumbo v1, "DozeMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Missed AOD time tick by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -com_android_keyguard_doze_DozeUi-mthref-0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeUi;->onTimeTick()V

    return-void
.end method

.method public transitionTo(Lcom/android/keyguard/doze/DozeMachine$State;Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 2

    invoke-static {}, Lcom/android/keyguard/doze/DozeUi;->-getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/keyguard/doze/DozeUi;->updateAnimateWakeup(Lcom/android/keyguard/doze/DozeMachine$State;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    :cond_0
    :pswitch_2
    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeUi;->scheduleTimeTick()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/doze/DozeMachine;->getPulseReason()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/doze/DozeUi;->pulseWhileDozing(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->startDozing()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
