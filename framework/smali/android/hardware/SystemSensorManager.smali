.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$BaseEventQueue;,
        Landroid/hardware/SystemSensorManager$InjectEventQueue;,
        Landroid/hardware/SystemSensorManager$SensorEventQueue;,
        Landroid/hardware/SystemSensorManager$TriggerEventQueue;
    }
.end annotation


# static fields
.field private static final DEBUG_DYNAMIC_SENSOR:Z = true

.field private static final MAX_LISTENER_COUNT:I = 0x80

.field private static final MIN_DIRECT_CHANNEL_BUFFER_SIZE:I = 0x68

.field private static sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sNativeClassInited:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDynamicSensorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorManager$DynamicSensorCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicSensorListDirty:Z

.field private mFullDynamicSensorsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandleToSensor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;

.field private final mNativeInstance:J

.field private final mSensorListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/SensorEventListener;",
            "Landroid/hardware/SystemSensorManager$SensorEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdkLevel:I

.field private final mTriggerListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/TriggerEventListener;",
            "Landroid/hardware/SystemSensorManager$TriggerEventQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/SystemSensorManager;)J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    return-wide v0
.end method

.method static synthetic -get3(Landroid/hardware/SystemSensorManager;)I
    .registers 2

    iget v0, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    return v0
.end method

.method static synthetic -set0(Landroid/hardware/SystemSensorManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/SystemSensorManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    iput-boolean v3, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    sget-object v3, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_33
    sget-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    if-nez v2, :cond_3d

    const/4 v2, 0x1

    sput-boolean v2, Landroid/hardware/SystemSensorManager;->sNativeClassInited:Z

    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_63

    :cond_3d
    monitor-exit v3

    iput-object p2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, p0, Landroid/hardware/SystemSensorManager;->mTargetSdkLevel:I

    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v0, 0x0

    :goto_55
    new-instance v1, Landroid/hardware/Sensor;

    invoke-direct {v1}, Landroid/hardware/Sensor;-><init>()V

    iget-wide v2, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v2, v3, v1, v0}, Landroid/hardware/SystemSensorManager;->nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z

    move-result v2

    if-nez v2, :cond_66

    return-void

    :catchall_63
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_66
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_55
.end method

.method private cleanupSensorConnection(Landroid/hardware/Sensor;)V
    .registers 11

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_61

    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_17
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/TriggerEventListener;

    const-string/jumbo v5, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removed trigger listener"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/hardware/TriggerEventListener;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " due to sensor disconnection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-virtual {p0, v1, p1, v5}, Landroid/hardware/SystemSensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    :try_end_5b
    .catchall {:try_start_17 .. :try_end_5b} :catchall_5c

    goto :goto_26

    :catchall_5c
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_5f
    monitor-exit v6

    return-void

    :cond_61
    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_64
    new-instance v3, Ljava/util/HashMap;

    iget-object v5, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    const-string/jumbo v5, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removed event listener"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " due to sensor disconnection"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SystemSensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_a7
    .catchall {:try_start_64 .. :try_end_a7} :catchall_a8

    goto :goto_73

    :catchall_a8
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_25

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    if-le v4, v3, :cond_34

    :cond_25
    const/4 v0, 0x1

    if-eqz p4, :cond_31

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_70

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    if-ge v4, v3, :cond_70

    :cond_56
    const/4 v0, 0x1

    if-eqz p3, :cond_62

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    if-eqz p2, :cond_6d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_70
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    if-ne v4, v3, :cond_a3

    if-eqz p2, :cond_9d

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9d
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_a3
    return v0
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeConfigDirectChannel(JIII)I
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I
.end method

.method private static native nativeDestroyDirectChannel(JI)V
.end method

.method private static native nativeGetDynamicSensors(JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetSensorAtIndex(JLandroid/hardware/Sensor;I)Z
.end method

.method private static native nativeIsDataInjectionEnabled(J)Z
.end method

.method private static native nativeSetOperationParameter(JII[F[I)I
.end method

.method private setupDynamicSensorBroadcastReceiver()V
    .registers 4

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_20

    new-instance v1, Landroid/hardware/SystemSensorManager$2;

    invoke-direct {v1, p0}, Landroid/hardware/SystemSensorManager$2;-><init>(Landroid/hardware/SystemSensorManager;)V

    iput-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "dynamic_sensor_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_20
    return-void
.end method

.method private teardownDynamicSensorBroadcastReceiver()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateDynamicSensorList()V
    .registers 19

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    monitor-enter v15

    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z

    if-eqz v14, :cond_c7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v8}, Landroid/hardware/SystemSensorManager;->nativeGetDynamicSensors(JLjava/util/List;)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    invoke-static {v14, v8, v13, v2, v10}, Landroid/hardware/SystemSensorManager;->diffSortedSensorList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_c2

    const-string/jumbo v14, "SensorManager"

    const-string/jumbo v16, "DYNS dynamic sensor list cached should be updated"

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_47
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_68

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mHandleToSensor:Ljava/util/HashMap;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getHandle()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_65

    goto :goto_47

    :catchall_65
    move-exception v14

    monitor-exit v15

    throw v14

    :cond_68
    :try_start_68
    new-instance v9, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v9, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_81
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ac

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager$DynamicSensorCallback;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_a5

    move-object v7, v9

    :goto_9a
    new-instance v14, Landroid/hardware/SystemSensorManager$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v3, v10}, Landroid/hardware/SystemSensorManager$1;-><init>(Landroid/hardware/SystemSensorManager;Ljava/util/List;Landroid/hardware/SensorManager$DynamicSensorCallback;Ljava/util/List;)V

    invoke-virtual {v7, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_81

    :cond_a5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Handler;

    goto :goto_9a

    :cond_ac
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/hardware/SystemSensorManager;->cleanupSensorConnection(Landroid/hardware/Sensor;)V

    goto :goto_b0

    :cond_c2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/hardware/SystemSensorManager;->mDynamicSensorListDirty:Z
    :try_end_c7
    .catchall {:try_start_68 .. :try_end_c7} :catchall_65

    :cond_c7
    monitor-exit v15

    return-void
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .registers 9

    const/4 v4, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    return v4

    :cond_b
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_e
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    if-eqz v0, :cond_37

    if-nez p2, :cond_32

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeAllSensors()Z

    move-result v1

    :goto_1e
    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->hasSensors()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_30

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_39

    :cond_30
    monitor-exit v3

    return v1

    :cond_32
    :try_start_32
    invoke-virtual {v0, p2, p3}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_39

    move-result v1

    goto :goto_1e

    :cond_37
    monitor-exit v3

    return v4

    :catchall_39
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .registers 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_10

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "channel is closed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_10
    if-ltz p3, :cond_15

    const/4 v3, 0x3

    if-le p3, v3, :cond_1e

    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "rate parameter invalid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    if-nez p2, :cond_2b

    if-eqz p3, :cond_2b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "when sensor is null, rate can only be DIRECT_RATE_STOP"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    if-nez p2, :cond_3e

    const/4 v1, -0x1

    :goto_2e
    iget-wide v4, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v3

    invoke-static {v4, v5, v3, v1, p3}, Landroid/hardware/SystemSensorManager;->nativeConfigDirectChannel(JIII)I

    move-result v0

    if-nez p3, :cond_43

    if-nez v0, :cond_3d

    const/4 v2, 0x1

    :cond_3d
    return v2

    :cond_3e
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    goto :goto_2e

    :cond_43
    if-lez v0, :cond_46

    :goto_45
    return v0

    :cond_46
    move v0, v2

    goto :goto_45
.end method

.method protected createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 17

    if-eqz p1, :cond_5c

    :try_start_2
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_1b

    move-result v5

    invoke-virtual {p1}, Landroid/os/MemoryFile;->length()I

    move-result v0

    const/16 v1, 0x68

    if-ge v0, v1, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Size of MemoryFile has to be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1b
    move-exception v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "MemoryFile object is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-virtual {p1}, Landroid/os/MemoryFile;->length()I

    move-result v0

    int-to-long v2, v0

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    move-result v8

    if-gtz v8, :cond_53

    new-instance v0, Ljava/io/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create MemoryFile direct channel failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_53
    const/4 v9, 0x1

    :goto_54
    new-instance v6, Landroid/hardware/SensorDirectChannel;

    move-object v7, p0

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Landroid/hardware/SensorDirectChannel;-><init>(Landroid/hardware/SensorManager;IIJ)V

    return-object v6

    :cond_5c
    if-eqz p2, :cond_db

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_6f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Format of HardwareBuffer must be BLOB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Height of HardwareBuffer must be 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    const/16 v1, 0x68

    if-ge v0, v1, :cond_90

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Width if HaradwareBuffer must be greater than 104"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getUsage()J

    move-result-wide v0

    const-wide/32 v6, 0x800000

    and-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_a7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HardwareBuffer must set usage flag USAGE_SENSOR_DIRECT_DATA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    int-to-long v2, v0

    iget-wide v6, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    const/4 v10, 0x2

    const/4 v11, -0x1

    move-wide v8, v2

    move-object/from16 v12, p2

    invoke-static/range {v6 .. v12}, Landroid/hardware/SystemSensorManager;->nativeCreateDirectChannel(JJIILandroid/hardware/HardwareBuffer;)I

    move-result v8

    if-gtz v8, :cond_d8

    new-instance v0, Ljava/io/UncheckedIOException;

    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "create HardwareBuffer direct channel failed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_d8
    const/4 v9, 0x2

    goto/16 :goto_54

    :cond_db
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "shared memory object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .registers 5

    if-eqz p1, :cond_b

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-virtual {p1}, Landroid/hardware/SensorDirectChannel;->getNativeHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager;->nativeDestroyDirectChannel(JI)V

    :cond_b
    return-void
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .registers 6

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_f
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_24

    if-nez v0, :cond_1b

    monitor-exit v2

    return v1

    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->flush()I
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_24

    move-result v3

    if-nez v3, :cond_22

    const/4 v1, 0x1

    :cond_22
    monitor-exit v2

    return v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->updateDynamicSensorList()V

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullDynamicSensorsList:Ljava/util/List;

    return-object v0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v4

    if-eqz p1, :cond_54

    :try_start_7
    iget-wide v6, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    invoke-static {v6, v7}, Landroid/hardware/SystemSensorManager;->nativeIsDataInjectionEnabled(J)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string/jumbo v2, "SensorManager"

    const-string/jumbo v5, "Data Injection mode not enabled"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_4f

    monitor-exit v4

    return v3

    :cond_1a
    :try_start_1a
    sget-object v5, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_4f

    if-nez v5, :cond_2d

    :try_start_1e
    new-instance v5, Landroid/hardware/SystemSensorManager$InjectEventQueue;

    iget-object v6, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    iget-object v7, p0, Landroid/hardware/SystemSensorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, p0, v7}, Landroid/hardware/SystemSensorManager$InjectEventQueue;-><init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    sput-object v5, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_2d} :catch_33
    .catchall {:try_start_1e .. :try_end_2d} :catchall_4f

    :cond_2d
    :goto_2d
    :try_start_2d
    sget-object v5, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_4f

    if-eqz v5, :cond_52

    :goto_31
    monitor-exit v4

    return v2

    :catch_33
    move-exception v0

    :try_start_34
    const-string/jumbo v5, "SensorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot create InjectEventQueue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_4f

    goto :goto_2d

    :catchall_4f
    move-exception v2

    monitor-exit v4

    throw v2

    :cond_52
    move v2, v3

    goto :goto_31

    :cond_54
    :try_start_54
    sget-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-eqz v3, :cond_60

    sget-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v3}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    const/4 v3, 0x0

    sput-object v3, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_4f

    :cond_60
    monitor-exit v4

    return v2
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .registers 16

    const/4 v7, 0x0

    sget-object v8, Landroid/hardware/SystemSensorManager;->sLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    if-nez v0, :cond_13

    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v1, "Data injection mode not activated before calling injectSensorData"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_31

    monitor-exit v8

    return v7

    :cond_13
    :try_start_13
    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->injectSensorData(I[FIJ)I

    move-result v6

    if-eqz v6, :cond_2a

    sget-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$InjectEventQueue;->dispose()V

    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SystemSensorManager;->sInjectEventQueue:Landroid/hardware/SystemSensorManager$InjectEventQueue;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    :cond_2a
    if-nez v6, :cond_2f

    const/4 v0, 0x1

    :goto_2d
    monitor-exit v8

    return v0

    :cond_2f
    move v0, v7

    goto :goto_2d

    :catchall_31
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 5

    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v1, "DYNS Register dynamic sensor callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    :cond_1d
    invoke-direct {p0}, Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .registers 13

    const/4 v5, 0x0

    const/16 v3, 0x17d

    invoke-static {v3, p2, p3}, Landroid/util/SeempLog;->record_sensor_rate(ILandroid/hardware/Sensor;I)I

    if-eqz p1, :cond_a

    if-nez p2, :cond_14

    :cond_a
    const-string/jumbo v3, "SensorManager"

    const-string/jumbo v4, "sensor or listener is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_14
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    const-string/jumbo v3, "SensorManager"

    const-string/jumbo v4, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_25
    if-ltz p5, :cond_29

    if-gez p3, :cond_33

    :cond_29
    const-string/jumbo v3, "SensorManager"

    const-string/jumbo v4, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_33
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x80

    if-lt v3, v4, :cond_46

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "register failed, the sensor listeners size has exceeded the maximum limit 128"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_46
    iget-object v4, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_49
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    if-nez v2, :cond_93

    if-eqz p4, :cond_7f

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_82

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_6f
    new-instance v2, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    invoke-direct {v2, p1, v1, p0, v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;-><init>(Landroid/hardware/SensorEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v3

    if-nez v3, :cond_8b

    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V
    :try_end_7d
    .catchall {:try_start_49 .. :try_end_7d} :catchall_99

    monitor-exit v4

    return v5

    :cond_7f
    :try_start_7f
    iget-object v1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    goto :goto_59

    :cond_82
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    :cond_8b
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_90
    .catchall {:try_start_7f .. :try_end_90} :catchall_99

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :cond_93
    :try_start_93
    invoke-virtual {v2, p2, p3, p5}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_99

    move-result v3

    monitor-exit v4

    return v3

    :catchall_99
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 9

    const/4 v5, 0x0

    if-nez p2, :cond_c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sensor cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    if-nez p1, :cond_17

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1f

    return v5

    :cond_1f
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_32

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "request failed, the trigger listeners size has exceeded the maximum limit 128"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_32
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_35
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    if-nez v1, :cond_7a

    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_69

    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_55
    new-instance v1, Landroid/hardware/SystemSensorManager$TriggerEventQueue;

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v1, p1, v2, p0, v0}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;-><init>(Landroid/hardware/TriggerEventListener;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z

    move-result v2

    if-nez v2, :cond_72

    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->dispose()V
    :try_end_67
    .catchall {:try_start_35 .. :try_end_67} :catchall_82

    monitor-exit v3

    return v5

    :cond_69
    :try_start_69
    invoke-virtual {p1}, Landroid/hardware/TriggerEventListener;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_72
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mTriggerListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catchall {:try_start_69 .. :try_end_77} :catchall_82

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_7a
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_7c
    invoke-virtual {v1, p2, v2, v4}, Landroid/hardware/SystemSensorManager$TriggerEventQueue;->addSensor(Landroid/hardware/Sensor;II)Z
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_82

    move-result v2

    monitor-exit v3

    return v2

    :catchall_82
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    :cond_c
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager;->mNativeInstance:J

    iget v3, p1, Landroid/hardware/SensorAdditionalInfo;->type:I

    iget-object v4, p1, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    iget-object v5, p1, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    invoke-static/range {v0 .. v5}, Landroid/hardware/SystemSensorManager;->nativeSetOperationParameter(JII[F[I)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    move v0, v6

    goto :goto_1b
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 4

    const-string/jumbo v0, "SensorManager"

    const-string/jumbo v1, "Removing dynamic sensor listerner"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/SystemSensorManager;->mDynamicSensorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 7

    const/16 v2, 0x17e

    invoke-static {v2, p2}, Landroid/util/SeempLog;->record_sensor(ILandroid/hardware/Sensor;)I

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    return-void

    :cond_f
    iget-object v3, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_12
    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SystemSensorManager$SensorEventQueue;

    if-eqz v0, :cond_34

    if-nez p2, :cond_36

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeAllSensors()Z

    move-result v1

    :goto_22
    if-eqz v1, :cond_34

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->hasSensors()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/hardware/SystemSensorManager;->mSensorListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->dispose()V
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_3c

    :cond_34
    monitor-exit v3

    return-void

    :cond_36
    const/4 v2, 0x1

    :try_start_37
    invoke-virtual {v0, p2, v2}, Landroid/hardware/SystemSensorManager$SensorEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    move-result v1

    goto :goto_22

    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2
.end method
