.class public Landroid/hardware/location/ActivityRecognitionHardware;
.super Landroid/hardware/location/IActivityRecognitionHardware$Stub;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ActivityRecognitionHardware$Event;,
        Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

.field private static final EVENT_TYPE_COUNT:I = 0x3

.field private static final EVENT_TYPE_DISABLED:I = 0x0

.field private static final EVENT_TYPE_ENABLED:I = 0x1

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final INVALID_ACTIVITY_TYPE:I = -0x1

.field private static final NATIVE_SUCCESS_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityRecognitionHW"

.field private static sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

.field private static final sSingletonInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

.field private final mSupportedActivities:[Ljava/lang/String;

.field private final mSupportedActivitiesCount:I

.field private final mSupportedActivitiesEnabledEvents:[[I


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/location/ActivityRecognitionHardware;)I
    .registers 2

    iget v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    return v0
.end method

.method static synthetic -get3(Landroid/hardware/location/ActivityRecognitionHardware;)[[I
    .registers 2

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/location/ActivityRecognitionHardware;II)I
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ActivityRecognitionHW"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardware$Stub;-><init>()V

    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware$SinkList;)V

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeInitialize()V

    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->fetchSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesCount:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    return-void
.end method

.method private checkPermissions()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    const-string/jumbo v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ActivityRecognitionHardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fetchSupportedActivities()[Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeGetSupportedActivities()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    return-object v1
.end method

.method private getActivityName(I)Ljava/lang/String;
    .registers 7

    const/4 v4, 0x0

    if-ltz p1, :cond_8

    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_2a

    :cond_8
    const-string/jumbo v1, "Invalid ActivityType: %d, SupportedActivities: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ActivityRecognitionHW"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_2a
    iget-object v1, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v1, v1, p1

    return-object v1
.end method

.method private getActivityType(Ljava/lang/String;)I
    .registers 6

    const/4 v3, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v3

    :cond_8
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_1c

    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    return v3
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;
    .registers 3

    sget-object v1, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    if-nez v0, :cond_e

    new-instance v0, Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {v0, p0}, Landroid/hardware/location/ActivityRecognitionHardware;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;

    :cond_e
    sget-object v0, Landroid/hardware/location/ActivityRecognitionHardware;->sSingletonInstance:Landroid/hardware/location/ActivityRecognitionHardware;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSupported()Z
    .registers 1

    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeIsSupported()Z

    move-result v0

    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDisableActivityEvent(II)I
.end method

.method private native nativeEnableActivityEvent(IIJ)I
.end method

.method private native nativeFlush()I
.end method

.method private native nativeGetSupportedActivities()[Ljava/lang/String;
.end method

.method private native nativeInitialize()V
.end method

.method private static native nativeIsSupported()Z
.end method

.method private native nativeRelease()V
.end method

.method private onActivityChanged([Landroid/hardware/location/ActivityRecognitionHardware$Event;)V
    .registers 16

    if-eqz p1, :cond_5

    array-length v9, p1

    if-nez v9, :cond_13

    :cond_5
    sget-boolean v9, Landroid/hardware/location/ActivityRecognitionHardware;->DEBUG:Z

    if-eqz v9, :cond_12

    const-string/jumbo v9, "ActivityRecognitionHW"

    const-string/jumbo v10, "No events to broadcast for onActivityChanged."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void

    :cond_13
    array-length v5, p1

    new-array v2, v5, [Landroid/hardware/location/ActivityRecognitionEvent;

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v5, :cond_2f

    aget-object v4, p1, v6

    iget v9, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->activity:I

    invoke-direct {p0, v9}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/hardware/location/ActivityRecognitionEvent;

    iget v10, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->type:I

    iget-wide v12, v4, Landroid/hardware/location/ActivityRecognitionHardware$Event;->timestamp:J

    invoke-direct {v9, v1, v10, v12, v13}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    aput-object v9, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_2f
    new-instance v0, Landroid/hardware/location/ActivityChangedEvent;

    invoke-direct {v0, v2}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v9}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->beginBroadcast()I

    move-result v8

    const/4 v6, 0x0

    :goto_3b
    if-ge v6, v8, :cond_56

    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v9, v6}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    :try_start_45
    invoke-interface {v7, v0}, Landroid/hardware/location/IActivityRecognitionHardwareSink;->onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_4b

    :goto_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :catch_4b
    move-exception v3

    const-string/jumbo v9, "ActivityRecognitionHW"

    const-string/jumbo v10, "Error delivering activity changed event."

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :cond_56
    iget-object v9, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v9}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method public disableActivityEvent(Ljava/lang/String;I)Z
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    return v3

    :cond_c
    invoke-direct {p0, v0, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeDisableActivityEvent(II)I

    move-result v1

    if-nez v1, :cond_1a

    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object v2, v2, v0

    aput v3, v2, p2

    const/4 v2, 0x1

    return v2

    :cond_1a
    return v3
.end method

.method public enableActivityEvent(Ljava/lang/String;IJ)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_d

    return v3

    :cond_d
    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeEnableActivityEvent(IIJ)I

    move-result v1

    if-nez v1, :cond_1a

    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivitiesEnabledEvents:[[I

    aget-object v2, v2, v0

    aput v4, v2, p2

    return v4

    :cond_1a
    return v3
.end method

.method public flush()Z
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->nativeFlush()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method public getSupportedActivities()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSupportedActivities:[Ljava/lang/String;

    return-object v0
.end method

.method public isActivitySupported(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware;->getActivityType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
    .registers 3

    invoke-direct {p0}, Landroid/hardware/location/ActivityRecognitionHardware;->checkPermissions()V

    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware;->mSinks:Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    invoke-virtual {v0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0
.end method
