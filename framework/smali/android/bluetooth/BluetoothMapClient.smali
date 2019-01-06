.class public final Landroid/bluetooth/BluetoothMapClient;
.super Ljava/lang/Object;
.source "BluetoothMapClient.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothMapClient$1;,
        Landroid/bluetooth/BluetoothMapClient$2;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_MESSAGE_DELIVERED_SUCCESSFULLY:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_DELIVERED_SUCCESSFULLY"

.field public static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_RECEIVED"

.field public static final ACTION_MESSAGE_SENT_SUCCESSFULLY:Ljava/lang/String; = "android.bluetooth.mapmce.profile.action.MESSAGE_SENT_SUCCESSFULLY"

.field private static final DBG:Z

.field public static final EXTRA_MESSAGE_HANDLE:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.MESSAGE_HANDLE"

.field public static final EXTRA_SENDER_CONTACT_NAME:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_NAME"

.field public static final EXTRA_SENDER_CONTACT_URI:Ljava/lang/String; = "android.bluetooth.mapmce.profile.extra.SENDER_CONTACT_URI"

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapClient"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothMapClient;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    return v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothMapClient;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    return-object v0
.end method

.method static synthetic -get5(Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothMapClient;Landroid/bluetooth/IBluetoothMapClient;)Landroid/bluetooth/IBluetoothMapClient;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "BluetoothMapClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    const-string/jumbo v0, "BluetoothMapClient"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/bluetooth/BluetoothMapClient$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothMapClient$1;-><init>(Landroid/bluetooth/BluetoothMapClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v2, Landroid/bluetooth/BluetoothMapClient$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothMapClient$2;-><init>(Landroid/bluetooth/BluetoothMapClient;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "Create BluetoothMapClient proxy object"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iput-object p1, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothMapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_35

    :try_start_30
    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_39

    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMapClient;->doBind()Z

    return-void

    :catch_39
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35
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
    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "BluetoothMapClient"

    const-string/jumbo v2, "Bluetooth is Not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
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


# virtual methods
.method public close()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/bluetooth/BluetoothMapClient;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_e

    :try_start_9
    iget-object v3, p0, Landroid/bluetooth/BluetoothMapClient;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_23

    :cond_e
    :goto_e
    iget-object v4, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    :try_start_11
    iget-object v3, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_39

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    :try_start_16
    iput-object v3, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    iget-object v3, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_2e
    .catchall {:try_start_16 .. :try_end_1f} :catchall_39

    :cond_1f
    :goto_1f
    monitor-exit v4

    iput-object v6, p0, Landroid/bluetooth/BluetoothMapClient;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void

    :catch_23
    move-exception v0

    const-string/jumbo v3, "BluetoothMapClient"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :catch_2e
    move-exception v2

    :try_start_2f
    const-string/jumbo v3, "BluetoothMapClient"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_39

    goto :goto_1f

    :catchall_39
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_2c

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "connect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "for MAPS MCE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_42

    :try_start_30
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_35

    move-result v2

    return v2

    :catch_35
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_40
    const/4 v2, 0x0

    return v2

    :cond_42
    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_40

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_25

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disconnect("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_4a

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_4a

    :try_start_35
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_3a

    move-result v2

    return v2

    :catch_3a
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    if-nez v1, :cond_55

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    const/4 v2, 0x0

    return v2
.end method

.method doBind()Z
    .registers 7

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothMapClient;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v0, :cond_2b

    iget-object v2, p0, Landroid/bluetooth/BluetoothMapClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothMapClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    :cond_2b
    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth MAP MCE Service with "

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
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMapClient;->close()V
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

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "getConnectedDevices()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_32

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_32

    :try_start_17
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMapClient;->getConnectedDevices()Ljava/util/List;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1c

    move-result-object v2

    return-object v2

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_32
    if-nez v1, :cond_3d

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8

    const/4 v5, 0x0

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getConnectionState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_4c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :try_start_36
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3b

    move-result v2

    return v2

    :catch_3b
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4c
    if-nez v1, :cond_57

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return v5
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

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "getDevicesMatchingStates()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_32

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_32

    :try_start_17
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1c

    move-result-object v2

    return-object v2

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_32
    if-nez v1, :cond_3d

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8

    const/4 v5, 0x0

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPriority("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_4c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :try_start_36
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3b

    move-result v2

    return v2

    :catch_3b
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4c
    if-nez v1, :cond_57

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return v5
.end method

.method public getUnreadMessages(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    const/4 v5, 0x0

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_26

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUnreadMessages("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_4c

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_4c

    :try_start_36
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMapClient;->getUnreadMessages(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3b

    move-result v2

    return v2

    :catch_3b
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4c
    return v5
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->VDBG:Z

    if-eqz v2, :cond_25

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isConnected("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_3b

    :try_start_29
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMapClient;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2c} :catch_2e

    move-result v2

    return v2

    :catch_2e
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    :goto_39
    const/4 v2, 0x0

    return v2

    :cond_3b
    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_39

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .registers 14

    const/4 v7, 0x0

    sget-boolean v1, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v1, :cond_35

    const-string/jumbo v1, "BluetoothMapClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    iget-object v0, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v0, :cond_60

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_60

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_4a
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothMapClient;->sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4d} :catch_4f

    move-result v1

    return v1

    :catch_4f
    move-exception v6

    const-string/jumbo v1, "BluetoothMapClient"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_60
    return v7
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 9

    const/4 v5, 0x0

    sget-boolean v2, Landroid/bluetooth/BluetoothMapClient;->DBG:Z

    if-eqz v2, :cond_31

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPriority("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v1, p0, Landroid/bluetooth/BluetoothMapClient;->mService:Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_5e

    invoke-direct {p0}, Landroid/bluetooth/BluetoothMapClient;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-static {p1}, Landroid/bluetooth/BluetoothMapClient;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_5e

    if-eqz p2, :cond_48

    const/16 v2, 0x64

    if-eq p2, v2, :cond_48

    return v5

    :cond_48
    :try_start_48
    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4b} :catch_4d

    move-result v2

    return v2

    :catch_4d
    move-exception v0

    const-string/jumbo v2, "BluetoothMapClient"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5e
    if-nez v1, :cond_69

    const-string/jumbo v2, "BluetoothMapClient"

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return v5
.end method
