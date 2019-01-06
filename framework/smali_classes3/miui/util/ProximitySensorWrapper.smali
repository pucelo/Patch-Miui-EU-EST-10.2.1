.class public Lmiui/util/ProximitySensorWrapper;
.super Ljava/lang/Object;
.source "ProximitySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/ProximitySensorWrapper$1;,
        Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    }
.end annotation


# static fields
.field private static final EVENT_FAR:I = 0x1

.field private static final EVENT_TOO_CLOSE:I = 0x0

.field private static final PROXIMITY_THRESHOLD:F = 4.0f

.field public static final STATE_STABLE_DELAY:I = 0x12c


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mProximitySensorChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitySensorState:I

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/util/ProximitySensorWrapper;)I
    .registers 2

    iget v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    return v0
.end method

.method static synthetic -get2(Lmiui/util/ProximitySensorWrapper;)Landroid/hardware/Sensor;
    .registers 2

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/util/ProximitySensorWrapper;I)I
    .registers 2

    iput p1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    return p1
.end method

.method static synthetic -wrap0(Lmiui/util/ProximitySensorWrapper;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/util/ProximitySensorWrapper;->notifyListeners(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    new-instance v0, Lmiui/util/ProximitySensorWrapper$1;

    invoke-direct {v0, p0}, Lmiui/util/ProximitySensorWrapper$1;-><init>(Lmiui/util/ProximitySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/util/ProximitySensorWrapper$2;

    invoke-direct {v0, p0}, Lmiui/util/ProximitySensorWrapper$2;-><init>(Lmiui/util/ProximitySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method private notifyListeners(Z)V
    .registers 6

    iget-object v3, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    invoke-interface {v0, p1}, Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;->onSensorChanged(Z)V
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1c
    monitor-exit v3

    return-void
.end method

.method private unregisterSensorEventListenerLocked()V
    .registers 4

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    .registers 7

    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1d
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit v1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterAllListeners()V
    .registers 3

    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lmiui/util/ProximitySensorWrapper;->unregisterSensorEventListenerLocked()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    .registers 4

    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/util/ProximitySensorWrapper;->unregisterSensorEventListenerLocked()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
