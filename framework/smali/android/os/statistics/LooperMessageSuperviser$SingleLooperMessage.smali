.class public Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;
.super Landroid/os/statistics/MicroscopicEvent;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperMessageSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLooperMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_CONFIGURATION_CHANGED:I = 0x7d

.field private static final APPLICATION_OPERATION_MESSAGE_CODES:[I

.field private static final BIND_APPLICATION:I = 0x6e

.field private static final CONFIGURATION_CHANGED:I = 0x76

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MESSAGE_NAME:Ljava/lang/String; = "messageName"

.field private static final FIELD_PLAN_UPTIME:Ljava/lang/String; = "planTime"

.field private static final HIDE_WINDOW:I = 0x6a

.field private static final LAUNCH_ACTIVITY:I = 0x64

.field private static final MULTI_WINDOW_MODE_CHANGED:I = 0x98

.field private static final NEW_INTENT:I = 0x70

.field private static final PAUSE_ACTIVITY:I = 0x65

.field private static final PAUSE_ACTIVITY_FINISHING:I = 0x66

.field private static final PICTURE_IN_PICTURE_MODE_CHANGED:I = 0x99

.field private static final RELAUNCH_ACTIVITY:I = 0x7e

.field private static final RESUME_ACTIVITY:I = 0x6b

.field private static final SEND_RESULT:I = 0x6c

.field private static final SHOW_WINDOW:I = 0x69

.field private static final STOP_ACTIVITY_HIDE:I = 0x68

.field private static final STOP_ACTIVITY_SHOW:I = 0x67

.field private static final WINDOW_OPERATION_MESSAGE_CODES:[I

.field private static activityThreadHandler:Landroid/os/Handler;

.field private static frameDisplayMessageCallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static frameDisplayMessageTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static isFrameDisplayMessageClassLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;

    invoke-direct {v0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage$1;-><init>()V

    sput-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->WINDOW_OPERATION_MESSAGE_CODES:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x6e

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->APPLICATION_OPERATION_MESSAGE_CODES:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x70
        0x76
        0x7d
        0x7e
        0x98
        0x99
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    invoke-direct {v0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;-><init>()V

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method

.method private static isActivityThreadMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->activityThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    invoke-static {}, Landroid/app/ActivityThreadInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->activityThreadHandler:Landroid/os/Handler;

    :cond_b
    sget-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->activityThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2d

    sget-object v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->activityThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget-object v0, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    if-ne v2, v0, :cond_2d

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget-object v0, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    move v0, v1

    goto :goto_2a

    :cond_2d
    move v0, v1

    goto :goto_2a
.end method

.method private static isApplicationOperationMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z
    .registers 4

    const/4 v1, 0x0

    sget-object v2, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->APPLICATION_OPERATION_MESSAGE_CODES:[I

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget v0, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method private static isFrameDisplayMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    if-eqz v4, :cond_10

    iget-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    if-nez v4, :cond_11

    :cond_10
    return v2

    :cond_11
    sget-boolean v4, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isFrameDisplayMessageClassLoaded:Z

    if-nez v4, :cond_29

    :try_start_15
    const-string/jumbo v4, "android.view.Choreographer$FrameDisplayEventReceiver"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->frameDisplayMessageCallbackClass:Ljava/lang/Class;

    const-string/jumbo v4, "android.view.Choreographer$FrameHandler"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->frameDisplayMessageTargetClass:Ljava/lang/Class;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_27} :catch_37
    .catchall {:try_start_15 .. :try_end_27} :catchall_3c

    :goto_27
    sput-boolean v3, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isFrameDisplayMessageClassLoaded:Z

    :cond_29
    iget-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->frameDisplayMessageCallbackClass:Ljava/lang/Class;

    if-ne v4, v5, :cond_36

    iget-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    sget-object v5, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->frameDisplayMessageTargetClass:Ljava/lang/Class;

    if-ne v4, v5, :cond_36

    move v2, v3

    :cond_36
    return v2

    :catch_37
    move-exception v1

    :try_start_38
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_27

    :catchall_3c
    move-exception v2

    sput-boolean v3, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isFrameDisplayMessageClassLoaded:Z

    throw v2
.end method

.method private static isWindowOperationMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z
    .registers 4

    const/4 v1, 0x0

    sget-object v2, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->WINDOW_OPERATION_MESSAGE_CODES:[I

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget v0, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-static {v2, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 8

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->schedGroup:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->runningTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->runnableTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->sleepingTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->endRealTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iput-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isConcerned()Z
    .registers 15

    invoke-static {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isActivityThreadMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-static {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isWindowOperationMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z

    move-result v4

    invoke-static {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isApplicationOperationMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z

    move-result v1

    :cond_10
    invoke-static {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isFrameDisplayMessage(Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;)Z

    move-result v2

    xor-int/lit8 v5, v4, 0x1

    xor-int/lit8 v10, v1, 0x1

    and-int/2addr v5, v10

    xor-int/lit8 v10, v2, 0x1

    and-int v3, v5, v10

    iget-wide v10, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->endUptimeMillis:J

    iget-wide v12, p0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->beginUptimeMillis:J

    sub-long v6, v10, v12

    const-wide v8, 0x7fffffffffffffffL

    if-eqz v3, :cond_31

    move-wide v8, v6

    :cond_2b
    :goto_2b
    cmp-long v5, v6, v8

    if-ltz v5, :cond_41

    const/4 v5, 0x1

    :goto_30
    return v5

    :cond_31
    if-eqz v2, :cond_37

    sget v5, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    int-to-long v8, v5

    goto :goto_2b

    :cond_37
    if-eqz v4, :cond_3c

    const-wide/16 v8, 0x12c

    goto :goto_2b

    :cond_3c
    if-eqz v1, :cond_2b

    const-wide/16 v8, 0x258

    goto :goto_2b

    :cond_41
    const/4 v5, 0x0

    goto :goto_30
.end method

.method public isPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    :goto_10
    iput-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    const/4 v2, 0x0

    iput v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    iput-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    iput-object v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    return-void

    :cond_20
    const-string/jumbo v1, ""

    goto :goto_10
.end method

.method resolveLazyInfo()V
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->isLazyInfoResolved()Z

    move-result v3

    if-eqz v3, :cond_8

    return-void

    :cond_8
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget-object v2, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    if-eqz v3, :cond_5e

    const-string/jumbo v3, "callback="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_37
    iget-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    if-eqz v3, :cond_4a

    const-string/jumbo v3, " target="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4a
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    :cond_56
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    iput-object v4, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageTargetClazz:Ljava/lang/Class;

    iput-object v4, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageCallbackClazz:Ljava/lang/Class;

    return-void

    :cond_5e
    const-string/jumbo v3, "what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageWhat:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_37
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    :try_start_9
    const-string/jumbo v2, "messageName"

    iget-object v3, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "planTime"

    iget-wide v4, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_19
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;

    iget-object v1, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->messageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v2, v0, Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;->planUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
