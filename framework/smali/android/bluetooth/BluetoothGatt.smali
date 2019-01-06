.class public final Landroid/bluetooth/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGatt$1;
    }
.end annotation


# static fields
.field static final AUTHENTICATION_MITM:I = 0x2

.field static final AUTHENTICATION_NONE:I = 0x0

.field static final AUTHENTICATION_NO_MITM:I = 0x1

.field private static final AUTH_RETRY_STATE_IDLE:I = 0x0

.field private static final AUTH_RETRY_STATE_MITM:I = 0x2

.field private static final AUTH_RETRY_STATE_NO_MITM:I = 0x1

.field public static final CONNECTION_PRIORITY_BALANCED:I = 0x0

.field public static final CONNECTION_PRIORITY_HIGH:I = 0x1

.field public static final CONNECTION_PRIORITY_LOW_POWER:I = 0x2

.field private static final CONN_STATE_CLOSED:I = 0x4

.field private static final CONN_STATE_CONNECTED:I = 0x2

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final CONN_STATE_IDLE:I = 0x0

.field private static final DBG:Z = true

.field public static final GATT_CONNECTION_CONGESTED:I = 0x8f

.field public static final GATT_FAILURE:I = 0x101

.field public static final GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final GATT_INVALID_OFFSET:I = 0x7

.field public static final GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final GATT_SUCCESS:I = 0x0

.field public static final GATT_WRITE_NOT_PERMITTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothGatt"

.field private static final VDBG:Z


# instance fields
.field private mAuthRetryState:I

.field private mAutoConnect:Z

.field private final mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

.field private volatile mCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mClientIf:I

.field private mConnState:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceBusy:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mOpportunistic:Z

.field private mPhy:I

.field private mService:Landroid/bluetooth/IBluetoothGatt;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field private mTransport:I


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothGatt;)I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    return v0
.end method

.method static synthetic -get10(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get11(Landroid/bluetooth/BluetoothGatt;)I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    return v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothGatt;)I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic -get5(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get6(Landroid/bluetooth/BluetoothGatt;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    return v0
.end method

.method static synthetic -get7(Landroid/bluetooth/BluetoothGatt;)I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    return v0
.end method

.method static synthetic -get8(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method static synthetic -get9(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothGatt;I)I
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return p1
.end method

.method static synthetic -set1(Landroid/bluetooth/BluetoothGatt;I)I
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return p1
.end method

.method static synthetic -set2(Landroid/bluetooth/BluetoothGatt;I)I
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    return p1
.end method

.method static synthetic -set3(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGatt;->runOrQueueCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;IZI)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    new-instance v0, Landroid/bluetooth/BluetoothGatt$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGatt$1;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    iput p5, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    iput-boolean p4, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return-void
.end method

.method private registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z
    .registers 9

    const/4 v5, 0x0

    const-string/jumbo v2, "BluetoothGatt"

    const-string/jumbo v3, "registerApp()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-nez v2, :cond_f

    return v5

    :cond_f
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string/jumbo v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerApp() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_31
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3d} :catch_3f

    const/4 v2, 0x1

    return v2

    :catch_3f
    move-exception v0

    const-string/jumbo v2, "BluetoothGatt"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method private runOrQueueCallback(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_13

    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_13
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method

.method private unregisterApp()V
    .registers 5

    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterApp() - mClientIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_24

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_25

    :cond_24
    return-void

    :cond_25
    const/4 v1, 0x0

    :try_start_26
    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method


# virtual methods
.method public abortReliableWrite()V
    .registers 6

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_9

    :cond_8
    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method

.method public abortReliableWrite(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    return-void
.end method

.method public beginReliableWrite()Z
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_a

    :cond_9
    return v4

    :cond_a
    :try_start_a
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->beginReliableWrite(ILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_19

    const/4 v1, 0x1

    return v1

    :catch_19
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public close()V
    .registers 3

    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGatt;->unregisterApp()V

    const/4 v0, 0x4

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return-void
.end method

.method public connect()Z
    .registers 10

    const/4 v8, 0x0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    iget-boolean v5, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    iget v6, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZIZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_17

    const/4 v0, 0x1

    return v0

    :catch_17
    move-exception v7

    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8
.end method

.method connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_30
    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not idle"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_40
    const/4 v0, 0x1

    :try_start_41
    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I
    :try_end_43
    .catchall {:try_start_41 .. :try_end_43} :catchall_3d

    monitor-exit v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    invoke-direct {p0, p2, p3}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_54
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_61

    monitor-exit v0

    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, "Failed to register callback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catchall_61
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_64
    return v4
.end method

.method public disconnect()V
    .registers 5

    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelOpen() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_28

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_29

    :cond_28
    return-void

    :cond_29
    :try_start_29
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->clientDisconnect(ILjava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public discoverServiceByUuid(Ljava/util/UUID;)Z
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "discoverServiceByUuid() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_29

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_2a

    :cond_29
    return v5

    :cond_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :try_start_2f
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_41} :catch_43

    const/4 v1, 0x1

    return v1

    :catch_43
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public discoverServices()Z
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "discoverServices() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_29

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_2a

    :cond_29
    return v4

    :cond_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :try_start_2f
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->discoverServices(ILjava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3c} :catch_3e

    const/4 v1, 0x1

    return v1

    :catch_3e
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public executeReliableWrite()Z
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_b

    :cond_a
    return v5

    :cond_b
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v2

    :try_start_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_2f

    move-result v1

    if-eqz v1, :cond_18

    monitor-exit v2

    return v5

    :cond_18
    const/4 v1, 0x1

    :try_start_19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_2f

    monitor-exit v2

    :try_start_20
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2e} :catch_32

    return v6

    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_32
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v5
.end method

.method getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 8

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v4

    if-ne v4, p2, :cond_1a

    return-object v0

    :cond_2d
    const/4 v4, 0x0

    return-object v4
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .registers 10

    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v6

    if-ne v6, p2, :cond_2e

    return-object v2

    :cond_41
    const/4 v6, 0x0

    return-object v6
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .registers 8

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-ne v2, p4, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p3, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_33
    const/4 v2, 0x0

    return-object v2
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .registers 6

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_29
    const/4 v2, 0x0

    return-object v2
.end method

.method public getServices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_27
    return-object v0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_b

    return v8

    :cond_b
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v3, :cond_13

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v3, :cond_14

    :cond_13
    return v8

    :cond_14
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-nez v2, :cond_1b

    return v8

    :cond_1b
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_22

    return v8

    :cond_22
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v4

    :try_start_25
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_48

    move-result v3

    if-eqz v3, :cond_2f

    monitor-exit v4

    return v8

    :cond_2f
    const/4 v3, 0x1

    :try_start_30
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_48

    monitor-exit v4

    :try_start_37
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;II)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_47} :catch_4b

    return v9

    :catchall_48
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_4b
    move-exception v1

    const-string/jumbo v3, "BluetoothGatt"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v8
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v4, :cond_a

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v4, :cond_b

    :cond_a
    return v9

    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_12

    return v9

    :cond_12
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    if-nez v3, :cond_19

    return v9

    :cond_19
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_20

    return v9

    :cond_20
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v5

    :try_start_23
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_46

    move-result v4

    if-eqz v4, :cond_2d

    monitor-exit v5

    return v9

    :cond_2d
    const/4 v4, 0x1

    :try_start_2e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_46

    monitor-exit v5

    :try_start_35
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v5, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;II)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_45} :catch_49

    return v10

    :catchall_46
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_49
    move-exception v2

    const-string/jumbo v4, "BluetoothGatt"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v9
.end method

.method public readPhy()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->clientReadPhy(ILjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public readRemoteRssi()Z
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readRssi() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_29

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_2a

    :cond_29
    return v4

    :cond_2a
    :try_start_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->readRemoteRssi(ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_39

    const/4 v1, 0x1

    return v1

    :catch_39
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public readUsingCharacteristicUuid(Ljava/util/UUID;II)Z
    .registers 14

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_b

    :cond_a
    return v8

    :cond_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_36

    move-result v0

    if-eqz v0, :cond_18

    monitor-exit v1

    return v8

    :cond_18
    const/4 v0, 0x1

    :try_start_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_36

    monitor-exit v1

    :try_start_20
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v6, 0x0

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;III)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_35} :catch_39

    return v9

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_39
    move-exception v7

    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v8
.end method

.method public refresh()Z
    .registers 6

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refresh() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_29

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_2a

    :cond_29
    return v4

    :cond_2a
    :try_start_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->refreshDevice(ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_39

    const/4 v1, 0x1

    return v1

    :catch_39
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public requestConnectionPriority(I)Z
    .registers 7

    const/4 v4, 0x0

    if-ltz p1, :cond_6

    const/4 v1, 0x2

    if-le p1, v1, :cond_f

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "connectionPriority not within valid range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestConnectionPriority() - params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_31

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_32

    :cond_31
    return v4

    :cond_32
    :try_start_32
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Landroid/bluetooth/IBluetoothGatt;->connectionParameterUpdate(ILjava/lang/String;I)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3f} :catch_41

    const/4 v1, 0x1

    return v1

    :catch_41
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public requestMtu(I)Z
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "configureMTU() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mtu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_34

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v1, :cond_35

    :cond_34
    return v4

    :cond_35
    :try_start_35
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Landroid/bluetooth/IBluetoothGatt;->configureMTU(ILjava/lang/String;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_42} :catch_44

    const/4 v1, 0x1

    return v1

    :catch_44
    move-exception v0

    const-string/jumbo v1, "BluetoothGatt"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .registers 11

    const/4 v7, 0x0

    const-string/jumbo v3, "BluetoothGatt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCharacteristicNotification() - uuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v3, :cond_32

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v3, :cond_33

    :cond_32
    return v7

    :cond_33
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-nez v2, :cond_3a

    return v7

    :cond_3a
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_41

    return v7

    :cond_41
    :try_start_41
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    invoke-interface {v3, v4, v5, v6, p2}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IZ)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_50} :catch_52

    const/4 v3, 0x1

    return v3

    :catch_52
    move-exception v1

    const-string/jumbo v3, "BluetoothGatt"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method

.method public setPreferredPhy(III)V
    .registers 11

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->clientSetPreferredPhy(ILjava/lang/String;III)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v6

    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_13

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_13

    return v10

    :cond_13
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_1c

    :cond_1b
    return v10

    :cond_1c
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v9

    if-nez v9, :cond_29

    return v10

    :cond_29
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-nez v7, :cond_30

    return v10

    :cond_30
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_33
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_5e

    move-result v0

    if-eqz v0, :cond_3d

    monitor-exit v1

    return v10

    :cond_3d
    const/4 v0, 0x1

    :try_start_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_5e

    monitor-exit v1

    :try_start_45
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v6

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[B)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_5d} :catch_61

    return v11

    :catchall_5e
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_61
    move-exception v8

    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v10
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_b

    :cond_a
    return v10

    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    if-nez v6, :cond_18

    return v10

    :cond_18
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v9

    if-nez v9, :cond_1f

    return v10

    :cond_1f
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    if-nez v7, :cond_26

    return v10

    :cond_26
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_29
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_50

    move-result v0

    if-eqz v0, :cond_33

    monitor-exit v1

    return v10

    :cond_33
    const/4 v0, 0x1

    :try_start_34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_50

    monitor-exit v1

    :try_start_3b
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v5

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;II[B)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4f} :catch_53

    return v11

    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_53
    move-exception v8

    const-string/jumbo v0, "BluetoothGatt"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v10
.end method
