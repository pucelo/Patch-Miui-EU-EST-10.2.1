.class public Lcom/android/keyguard/doze/DozePauser;
.super Ljava/lang/Object;
.source "DozePauser.java"

# interfaces
.implements Lcom/android/keyguard/doze/DozeMachine$Part;


# static fields
.field private static final synthetic -com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mMachine:Lcom/android/keyguard/doze/DozeMachine;

.field private final mPauseTimeout:Lcom/android/keyguard/util/AlarmTimeout;

.field private final mPolicy:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;


# direct methods
.method private static synthetic -getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/doze/DozePauser;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/doze/DozePauser;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

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

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v1}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

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
    sput-object v0, Lcom/android/keyguard/doze/DozePauser;->-com-android-keyguard-doze-DozeMachine$StateSwitchesValues:[I

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

    const-class v0, Lcom/android/keyguard/doze/DozePauser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/doze/DozePauser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/keyguard/doze/DozeMachine;Landroid/app/AlarmManager;Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/doze/DozePauser;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    new-instance v0, Lcom/android/keyguard/util/AlarmTimeout;

    new-instance v1, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/keyguard/doze/-$Lambda$LPp-I_aaQk3CKXn7JUvi-PIbjx4;-><init>(BLjava/lang/Object;)V

    sget-object v2, Lcom/android/keyguard/doze/DozePauser;->TAG:Ljava/lang/String;

    invoke-direct {v0, p3, v1, v2, p1}, Lcom/android/keyguard/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/DozePauser;->mPauseTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    iput-object p4, p0, Lcom/android/keyguard/doze/DozePauser;->mPolicy:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    return-void
.end method

.method private onTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/doze/DozePauser;->mMachine:Lcom/android/keyguard/doze/DozeMachine;

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_keyguard_doze_DozePauser-mthref-0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozePauser;->onTimeout()V

    return-void
.end method

.method public transitionTo(Lcom/android/keyguard/doze/DozeMachine$State;Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/doze/DozePauser;->-getcom-android-keyguard-doze-DozeMachine$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/keyguard/doze/DozeMachine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozePauser;->mPauseTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/keyguard/util/AlarmTimeout;->cancel()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/doze/DozePauser;->mPauseTimeout:Lcom/android/keyguard/util/AlarmTimeout;

    iget-object v1, p0, Lcom/android/keyguard/doze/DozePauser;->mPolicy:Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;

    iget-wide v2, v1, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->proxScreenOffDelayMs:J

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/keyguard/util/AlarmTimeout;->schedule(JI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
