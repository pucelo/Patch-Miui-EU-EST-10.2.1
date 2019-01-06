.class public final Landroid/bluetooth/BluetoothMap;
.super Ljava/lang/Object;
.source "BluetoothMap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothMap$1;,
        Landroid/bluetooth/BluetoothMap$2;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMap"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothMap;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothMap;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothMap;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/IBluetoothMap;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    return-object p1
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/bluetooth/BluetoothMap$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothMap$1;-><init>(Landroid/bluetooth/BluetoothMap;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothMap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v2, Landroid/bluetooth/BluetoothMap$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothMap$2;-><init>(Landroid/bluetooth/BluetoothMap;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Create BluetoothMap proxy object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_31

    :try_start_2c
    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_35

    :cond_31
    :goto_31
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMap;->doBind()Z

    return-void

    :catch_35
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public static doesClassMatchSink(Landroid/bluetooth/BluetoothClass;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    const/4 v0, 0x0

    return v0

    :sswitch_9
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_c
    .sparse-switch
        0x100 -> :sswitch_9
        0x104 -> :sswitch_9
        0x108 -> :sswitch_9
        0x10c -> :sswitch_9
    .end sparse-switch
.end method

.method private isEnabled()Z
    .registers 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    return v1

    :cond_10
    const-string/jumbo v1, "Bluetooth is Not enabled"

    invoke-static {v1}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "BluetoothMap"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_30

    move-result-object v1

    if-eqz v1, :cond_e

    :try_start_9
    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_25
    .catchall {:try_start_9 .. :try_end_e} :catchall_30

    :cond_e
    :goto_e
    :try_start_e
    iget-object v4, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_30

    :try_start_11
    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_3e

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    :try_start_16
    iput-object v3, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_33
    .catchall {:try_start_16 .. :try_end_1f} :catchall_3e

    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v4

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_30

    monitor-exit p0

    return-void

    :catch_25
    move-exception v0

    :try_start_26
    const-string/jumbo v3, "BluetoothMap"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_e

    :catchall_30
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_33
    move-exception v2

    :try_start_34
    const-string/jumbo v3, "BluetoothMap"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3e

    goto :goto_1f

    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v4

    throw v3
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_30
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "not supported for MAPS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disconnect("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_45

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {p1}, Landroid/bluetooth/BluetoothMap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_45

    :try_start_2f
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_34

    move-result v2

    return v2

    :catch_34
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_45
    if-nez v1, :cond_50

    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return v4
.end method

.method doBind()Z
    .registers 7

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    :cond_2b
    const-string/jumbo v2, "BluetoothMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth MAP Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_46
    const/4 v2, 0x1

    return v2
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMap;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_16

    :try_start_5
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMap;->getClient()Landroid/bluetooth/BluetoothDevice;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v2

    return-object v2

    :catch_a
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    return-object v4

    :cond_16
    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "getConnectedDevices()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_10
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMap;->getConnectedDevices()Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    return-object v2

    :catch_15
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getConnectionState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_45

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-static {p1}, Landroid/bluetooth/BluetoothMap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_45

    :try_start_2f
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_34

    move-result v2

    return v2

    :catch_34
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_45
    if-nez v1, :cond_50

    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    return v4
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string/jumbo v2, "getDevicesMatchingStates()"

    invoke-static {v2}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2b

    :try_start_10
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    return-object v2

    :catch_15
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_2b
    if-nez v1, :cond_36

    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_27

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Landroid/bluetooth/BluetoothMap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_27

    :try_start_11
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    move-result v2

    return v2

    :catch_16
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_27
    if-nez v1, :cond_32

    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v4
.end method

.method public getState()I
    .registers 5

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_16

    :try_start_4
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMap;->getState()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    const/4 v2, -0x1

    return v2

    :cond_16
    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 6

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_16

    :try_start_4
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    :catch_9
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    const/4 v2, 0x0

    return v2

    :cond_16
    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPriority("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothMap;->log(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_57

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMap;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-static {p1}, Landroid/bluetooth/BluetoothMap;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_57

    if-eqz p2, :cond_41

    const/16 v2, 0x64

    if-eq p2, v2, :cond_41

    return v4

    :cond_41
    :try_start_41
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_46

    move-result v2

    return v2

    :catch_46
    move-exception v0

    const-string/jumbo v2, "BluetoothMap"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_57
    if-nez v1, :cond_62

    const-string/jumbo v2, "BluetoothMap"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return v4
.end method
