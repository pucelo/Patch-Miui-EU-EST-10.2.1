.class public final Landroid/bluetooth/BluetoothInputHost;
.super Ljava/lang/Object;
.source "BluetoothInputHost.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothInputHost$1;,
        Landroid/bluetooth/BluetoothInputHost$2;,
        Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.inputhost.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ERROR_RSP_INVALID_PARAM:B = 0x4t

.field public static final ERROR_RSP_INVALID_RPT_ID:B = 0x2t

.field public static final ERROR_RSP_NOT_READY:B = 0x1t

.field public static final ERROR_RSP_SUCCESS:B = 0x0t

.field public static final ERROR_RSP_UNKNOWN:B = 0xet

.field public static final ERROR_RSP_UNSUPPORTED_REQ:B = 0x3t

.field public static final PROTOCOL_BOOT_MODE:B = 0x0t

.field public static final PROTOCOL_REPORT_MODE:B = 0x1t

.field public static final REPORT_TYPE_FEATURE:B = 0x3t

.field public static final REPORT_TYPE_INPUT:B = 0x1t

.field public static final REPORT_TYPE_OUTPUT:B = 0x2t

.field public static final SUBCLASS1_COMBO:B = -0x40t

.field public static final SUBCLASS1_KEYBOARD:B = 0x40t

.field public static final SUBCLASS1_MOUSE:B = -0x80t

.field public static final SUBCLASS1_NONE:B = 0x0t

.field public static final SUBCLASS2_CARD_READER:B = 0x6t

.field public static final SUBCLASS2_DIGITIZER_TABLED:B = 0x5t

.field public static final SUBCLASS2_GAMEPAD:B = 0x2t

.field public static final SUBCLASS2_JOYSTICK:B = 0x1t

.field public static final SUBCLASS2_REMOTE_CONTROL:B = 0x3t

.field public static final SUBCLASS2_SENSING_DEVICE:B = 0x4t

.field public static final SUBCLASS2_UNCATEGORIZED:B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothInputHost;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    return-object v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/bluetooth/BluetoothInputHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/bluetooth/BluetoothInputHost$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothInputHost$1;-><init>(Landroid/bluetooth/BluetoothInputHost;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v2, Landroid/bluetooth/BluetoothInputHost$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothInputHost$2;-><init>(Landroid/bluetooth/BluetoothInputHost;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "BluetoothInputHost"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothInputHost;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_30

    :try_start_2b
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_34

    :cond_30
    :goto_30
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothInputHost;->doBind()Z

    return-void

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30
.end method


# virtual methods
.method close()V
    .registers 8

    const/4 v6, 0x0

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "close()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    if-eqz v2, :cond_16

    :try_start_11
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_2b

    :cond_16
    :goto_16
    iget-object v4, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    :try_start_19
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v3, :cond_27

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_3a

    :try_start_20
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_27} :catch_30
    .catchall {:try_start_20 .. :try_end_27} :catchall_3a

    :cond_27
    :goto_27
    monitor-exit v4

    iput-object v6, p0, Landroid/bluetooth/BluetoothInputHost;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16

    :catch_30
    move-exception v1

    :try_start_31
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "close: could not unbind HID Dev service: "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3a

    goto :goto_27

    :catchall_3a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v2, :cond_2e

    :try_start_1e
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_23

    move-result v1

    :goto_22
    return v1

    :catch_23
    move-exception v0

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_2e
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v2, :cond_2e

    :try_start_1e
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_23

    move-result v1

    :goto_22
    return v1

    :catch_23
    move-exception v0

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_2e
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method doBind()Z
    .registers 7

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothInputHost;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_45

    :cond_2b
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth HID Device Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_45
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Bound to HID Device Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2
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

    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConnectedDevices()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v1, :cond_21

    :try_start_c
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothInputHost;->getConnectedDevices()Ljava/util/List;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v2

    return-object v2

    :catch_11
    move-exception v0

    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_21
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 7

    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getConnectionState(): device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v1, :cond_2e

    :try_start_1d
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothInputHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_22

    move-result v2

    return v2

    :catch_22
    move-exception v0

    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    const/4 v2, 0x0

    return v2

    :cond_2e
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDevicesMatchingConnectionStates(): states="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v1, :cond_36

    :try_start_21
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothInputHost;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_26

    move-result-object v2

    return-object v2

    :catch_26
    move-exception v0

    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_36
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method public registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceCallback;)Z
    .registers 13

    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerApp(): sdp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " inQos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " outQos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    if-eqz p1, :cond_3f

    if-nez p4, :cond_41

    :cond_3f
    const/4 v2, 0x0

    return v2

    :cond_41
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v0, :cond_62

    :try_start_45
    new-instance v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;-><init>()V

    new-instance v5, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;

    invoke-direct {v5, p4}, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothHidDeviceCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothInputHost;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_55} :catch_57

    move-result v7

    :goto_56
    return v7

    :catch_57
    move-exception v6

    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :cond_62
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56
.end method

.method public replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z
    .registers 11

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "replyReport(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v2, :cond_44

    :try_start_34
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothInputHost;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_39

    move-result v1

    :goto_38
    return v1

    :catch_39
    move-exception v0

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_44
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public reportError(Landroid/bluetooth/BluetoothDevice;B)Z
    .registers 9

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportError(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v2, :cond_39

    :try_start_29
    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothInputHost;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2e

    move-result v1

    :goto_2d
    return v1

    :catch_2e
    move-exception v0

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_39
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    .registers 9

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v2, :cond_15

    :try_start_5
    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetoothInputHost;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    move-result v1

    :goto_9
    return v1

    :catch_a
    move-exception v0

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_15
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public unplug(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unplug(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v2, :cond_2e

    :try_start_1e
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputHost;->unplug(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_23

    move-result v1

    :goto_22
    return v1

    :catch_23
    move-exception v0

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_2e
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    .registers 7

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterApp()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v2, :cond_1d

    :try_start_d
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputHost;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    move-result v1

    :goto_11
    return v1

    :catch_12
    move-exception v0

    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_1d
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
