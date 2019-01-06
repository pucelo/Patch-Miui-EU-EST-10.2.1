.class public final Landroid/bluetooth/BluetoothDun;
.super Ljava/lang/Object;
.source "BluetoothDun.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothDun$1;,
        Landroid/bluetooth/BluetoothDun$2;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "codeaurora.bluetooth.dun.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothDun"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDunService:Landroid/bluetooth/IBluetoothDun;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothDun;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothDun;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/IBluetoothDun;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothDun;Landroid/bluetooth/IBluetoothDun;)Landroid/bluetooth/IBluetoothDun;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/bluetooth/BluetoothDun$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothDun$1;-><init>(Landroid/bluetooth/BluetoothDun;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDun;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v1, Landroid/bluetooth/BluetoothDun$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothDun$2;-><init>(Landroid/bluetooth/BluetoothDun;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    :try_start_1b
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_26} :catch_33

    :goto_26
    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "BluetoothDun() call bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDun;->doBind()Z

    return-void

    :catch_33
    move-exception v0

    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Unable to register BluetoothStateChangeCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method private isEnabled()Z
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "BluetoothDun"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method close()V
    .registers 7

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothDun;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDun;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_10

    :try_start_b
    iget-object v3, p0, Landroid/bluetooth/BluetoothDun;->mStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_23

    :cond_10
    :goto_10
    iget-object v4, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    :try_start_13
    iget-object v3, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_39

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    :try_start_18
    iput-object v3, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_2e
    .catchall {:try_start_18 .. :try_end_21} :catchall_39

    :cond_21
    :goto_21
    monitor-exit v4

    return-void

    :catch_23
    move-exception v1

    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v4, "Unable to unregister BluetoothStateChangeCallback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :catch_2e
    move-exception v2

    :try_start_2f
    const-string/jumbo v3, "BluetoothDun"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_21

    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_3d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDun;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDun;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :try_start_11
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDun;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    return v1

    :catch_18
    move-exception v0

    const-string/jumbo v1, "BluetoothDun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    if-nez v1, :cond_4a

    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return v4
.end method

.method doBind()Z
    .registers 7

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothDun;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Landroid/bluetooth/BluetoothDun;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDun;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    :cond_2b
    const-string/jumbo v2, "BluetoothDun"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth Dun Service with "

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
    .registers 1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDun;->close()V

    return-void
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

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_3b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDun;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDun;->getConnectedDevices()Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    :catch_11
    move-exception v0

    const-string/jumbo v1, "BluetoothDun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_3b
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    if-nez v1, :cond_48

    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_3d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDun;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDun;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_3d

    :try_start_11
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDun;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_18

    move-result v1

    return v1

    :catch_18
    move-exception v0

    const-string/jumbo v1, "BluetoothDun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3d
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    if-nez v1, :cond_4a

    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
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

    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    if-eqz v1, :cond_3b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDun;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3b

    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDun;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    return-object v1

    :catch_11
    move-exception v0

    const-string/jumbo v1, "BluetoothDun"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Stack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_3b
    iget-object v1, p0, Landroid/bluetooth/BluetoothDun;->mDunService:Landroid/bluetooth/IBluetoothDun;

    if-nez v1, :cond_48

    const-string/jumbo v1, "BluetoothDun"

    const-string/jumbo v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method
