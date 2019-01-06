.class public final Landroid/bluetooth/BluetoothPbapClient;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothPbapClient$1;,
        Landroid/bluetooth/BluetoothPbapClient$2;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = false

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapClient"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothPbapClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothPbapClient;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/bluetooth/BluetoothPbapClient;)Z
    .registers 2

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->doBind()Z

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/bluetooth/BluetoothPbapClient$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothPbapClient$1;-><init>(Landroid/bluetooth/BluetoothPbapClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v2, Landroid/bluetooth/BluetoothPbapClient$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothPbapClient$2;-><init>(Landroid/bluetooth/BluetoothPbapClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothPbapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_28

    :try_start_23
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2c

    :cond_28
    :goto_28
    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->doBind()Z

    return-void

    :catch_2c
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method private doBind()Z
    .registers 7

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothPbapClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    :cond_2b
    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth PBAP Client Service with "

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

    invoke-static {v1}, Landroid/bluetooth/BluetoothPbapClient;->log(Ljava/lang/String;)V

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

    const-string/jumbo v0, "BluetoothPbapClient"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_30

    move-result-object v1

    if-eqz v1, :cond_e

    :try_start_9
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_25
    .catchall {:try_start_9 .. :try_end_e} :catchall_30

    :cond_e
    :goto_e
    :try_start_e
    iget-object v4, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_30

    :try_start_11
    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_3e

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    :try_start_16
    iput-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    iget-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothPbapClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_33
    .catchall {:try_start_16 .. :try_end_1f} :catchall_3e

    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v4

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothPbapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_30

    monitor-exit p0

    return-void

    :catch_25
    move-exception v0

    :try_start_26
    const-string/jumbo v3, "BluetoothPbapClient"

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
    const-string/jumbo v3, "BluetoothPbapClient"

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
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    if-eqz v1, :cond_27

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_27

    :try_start_11
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    move-result v2

    return v2

    :catch_16
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_27
    if-nez v1, :cond_32

    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v4
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    if-eqz v1, :cond_27

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_27

    :try_start_11
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    const/4 v2, 0x1

    return v2

    :catch_16
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_27
    if-nez v1, :cond_32

    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v4
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbapClient;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
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

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    if-eqz v1, :cond_25

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    :try_start_a
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectedDevices()Ljava/util/List;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    return-object v2

    :catch_f
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_25
    if-nez v1, :cond_30

    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    if-eqz v1, :cond_27

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_27

    :try_start_11
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    move-result v2

    return v2

    :catch_16
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_27
    if-nez v1, :cond_32

    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
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

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    if-eqz v1, :cond_25

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    :try_start_a
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    return-object v2

    :catch_f
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_25
    if-nez v1, :cond_30

    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    if-eqz v1, :cond_27

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_27

    :try_start_11
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    move-result v2

    return v2

    :catch_16
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_27
    if-nez v1, :cond_32

    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return v4
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient;->mService:Landroid/bluetooth/IBluetoothPbapClient;

    if-eqz v1, :cond_2e

    invoke-direct {p0}, Landroid/bluetooth/BluetoothPbapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-static {p1}, Landroid/bluetooth/BluetoothPbapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz p2, :cond_18

    const/16 v2, 0x64

    if-eq p2, v2, :cond_18

    return v4

    :cond_18
    :try_start_18
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result v2

    return v2

    :catch_1d
    move-exception v0

    const-string/jumbo v2, "BluetoothPbapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2e
    if-nez v1, :cond_39

    const-string/jumbo v2, "BluetoothPbapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return v4
.end method
