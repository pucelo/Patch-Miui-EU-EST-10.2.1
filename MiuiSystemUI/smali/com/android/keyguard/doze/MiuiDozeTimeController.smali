.class public Lcom/android/keyguard/doze/MiuiDozeTimeController;
.super Ljava/lang/Object;
.source "MiuiDozeTimeController.java"

# interfaces
.implements Lcom/android/keyguard/doze/DozeMachine$Part;


# static fields
.field private static final synthetic -com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

.field private static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDozeTriggers:Lcom/android/keyguard/doze/DozeTriggers;

.field private final mHideDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

.field private mHideTime:J

.field private final mMachine:Lcom/android/keyguard/doze/DozeMachine;

.field private mService:Lcom/android/keyguard/doze/DozeMachine$Service;

.field private final mShowDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

.field private mShowTime:J

.field private mTimeSet:Z


# direct methods
.method private static synthetic -getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

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
    sput-object v0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/doze/MiuiDozeTimeController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/keyguard/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/keyguard/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/keyguard/doze/DozeTriggers;Lcom/android/keyguard/doze/DozeMachine$Service;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mTimeSet:Z

    iput-object p1, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    iput-object p5, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mDozeTriggers:Lcom/android/keyguard/doze/DozeTriggers;

    iput-object p6, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    new-instance v2, Lcom/android/keyguard/util/AlarmTimeout;

    new-instance v3, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;

    const/4 v4, 0x5

    invoke-direct {v3, v4, p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;-><init>(BLjava/lang/Object;)V

    const-string/jumbo v4, "DarkenAlarmTimeout"

    invoke-direct {v2, p4, v3, v4, p2}, Lcom/android/keyguard/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    new-instance v2, Lcom/android/keyguard/util/AlarmTimeout;

    new-instance v3, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;

    const/4 v4, 0x6

    invoke-direct {v3, v4, p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;-><init>(BLjava/lang/Object;)V

    const-string/jumbo v4, "OffAlarmTimeout"

    invoke-direct {v2, p4, v3, v4, p2}, Lcom/android/keyguard/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    iget-object v2, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "aod_mode_time"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mTimeSet:Z

    iget-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mTimeSet:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->checkTime()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private checkTime()V
    .locals 14

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowTime:J

    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideTime:J

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "aod_start"

    const/16 v11, 0x168

    const/4 v12, -0x2

    invoke-static {v5, v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    int-to-long v10, v5

    const-wide/32 v12, 0xea60

    mul-long v6, v10, v12

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "aod_end"

    const/16 v11, 0x5a0

    const/4 v12, -0x2

    invoke-static {v5, v10, v11, v12}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    int-to-long v10, v5

    const-wide/32 v12, 0xea60

    mul-long v2, v10, v12

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v5, v1, 0x3c

    add-int/2addr v5, v4

    int-to-long v10, v5

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long v8, v10, v12

    cmp-long v5, v6, v2

    if-gtz v5, :cond_4

    cmp-long v5, v8, v6

    if-ltz v5, :cond_0

    cmp-long v5, v8, v2

    if-lez v5, :cond_3

    :cond_0
    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    sub-long v10, v6, v8

    :goto_0
    iput-wide v10, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowTime:J

    :cond_1
    :goto_1
    return-void

    :cond_2
    sub-long v10, v6, v8

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    goto :goto_0

    :cond_3
    sub-long v10, v2, v8

    iput-wide v10, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideTime:J

    goto :goto_1

    :cond_4
    cmp-long v5, v6, v2

    if-lez v5, :cond_1

    cmp-long v5, v8, v6

    if-gez v5, :cond_6

    cmp-long v5, v8, v2

    if-lez v5, :cond_6

    cmp-long v5, v6, v8

    if-lez v5, :cond_5

    sub-long v10, v6, v8

    :goto_2
    iput-wide v10, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowTime:J

    goto :goto_1

    :cond_5
    sub-long v10, v6, v8

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    goto :goto_2

    :cond_6
    cmp-long v5, v2, v8

    if-lez v5, :cond_7

    sub-long v10, v2, v8

    :goto_3
    iput-wide v10, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideTime:J

    goto :goto_1

    :cond_7
    const-wide/32 v10, 0x5265c00

    add-long/2addr v10, v2

    sub-long/2addr v10, v8

    goto :goto_3
.end method

.method private hideDoze()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->onShowDoze(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->checkTime()V

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    iget-wide v2, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowTime:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/keyguard/util/AlarmTimeout;->schedule(JI)V

    return-void
.end method

.method private onShowDoze(Z)V
    .locals 8

    sget-boolean v5, Lcom/android/keyguard/doze/MiuiDozeTimeController;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/keyguard/doze/MiuiDozeTimeController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onShowDoze:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

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

    const/4 v1, 0x1

    :goto_2
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v4, v5, :cond_6

    const/4 v0, 0x1

    :goto_3
    if-eqz p1, :cond_7

    if-eqz v0, :cond_2

    sget-boolean v5, Lcom/android/keyguard/doze/MiuiDozeTimeController;->DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/keyguard/doze/MiuiDozeTimeController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Show, unpausing AOD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-interface {v5, v6}, Lcom/android/keyguard/doze/DozeMachine$Service;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-nez v2, :cond_8

    if-eqz v3, :cond_2

    :cond_8
    sget-boolean v5, Lcom/android/keyguard/doze/MiuiDozeTimeController;->DEBUG:Z

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/keyguard/doze/MiuiDozeTimeController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Hide, pausing AOD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-interface {v5, v6}, Lcom/android/keyguard/doze/DozeMachine$Service;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    goto :goto_4
.end method

.method private showDoze()V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->onShowDoze(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->checkTime()V

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    iget-wide v2, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideTime:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/keyguard/util/AlarmTimeout;->schedule(JI)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_keyguard_doze_MiuiDozeTimeController-mthref-0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->showDoze()V

    return-void
.end method

.method synthetic -com_android_keyguard_doze_MiuiDozeTimeController-mthref-1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->hideDoze()V

    return-void
.end method

.method public transitionTo(Lcom/android/keyguard/doze/DozeMachine$State;Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mTimeSet:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/doze/MiuiDozeTimeController;->-getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-wide v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    iget-wide v2, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowTime:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/keyguard/util/AlarmTimeout;->schedule(JI)V

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-interface {v0, v1}, Lcom/android/keyguard/doze/DozeMachine$Service;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    iget-wide v2, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideTime:J

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/keyguard/util/AlarmTimeout;->schedule(JI)V

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mService:Lcom/android/keyguard/doze/DozeMachine$Service;

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-interface {v0, v1}, Lcom/android/keyguard/doze/DozeMachine$Service;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mShowDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/keyguard/util/AlarmTimeout;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/doze/MiuiDozeTimeController;->mHideDozeTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/keyguard/util/AlarmTimeout;->cancel()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
