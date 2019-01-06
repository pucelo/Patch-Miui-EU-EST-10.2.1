.class public final Landroid/bluetooth/BluetoothGattServer;
.super Ljava/lang/Object;
.source "BluetoothGattServer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattServer$1;
    }
.end annotation


# static fields
.field private static final CALLBACK_REG_TIMEOUT:I = 0x2710

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothGattServer"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

.field private mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

.field private mPendingService:Landroid/bluetooth/BluetoothGattService;

.field private mServerIf:I

.field private mServerIfLock:Ljava/lang/Object;

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

.field private mTransport:I


# direct methods
.method static synthetic -get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattService;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mPendingService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothGattServer;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mPendingService:Landroid/bluetooth/BluetoothGattService;

    return-object p1
.end method

.method static synthetic -set1(Landroid/bluetooth/BluetoothGattServer;I)I
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    return p1
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothGatt;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    new-instance v0, Landroid/bluetooth/BluetoothGattServer$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothGattServer$1;-><init>(Landroid/bluetooth/BluetoothGattServer;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    iput p2, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    return-void
.end method

.method private unregisterCallback()V
    .registers 5

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterCallback() - mServerIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_24

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_25

    :cond_24
    return-void

    :cond_25
    const/4 v1, 0x0

    :try_start_26
    iput-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterServer(I)V

    const/4 v1, 0x0

    iput v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method


# virtual methods
.method public addService(Landroid/bluetooth/BluetoothGattService;)Z
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addService() - service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_27

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_28

    :cond_27
    return v4

    :cond_28
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mPendingService:Landroid/bluetooth/BluetoothGattService;

    :try_start_2a
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetoothGatt;->addService(ILandroid/bluetooth/BluetoothGattService;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_33

    const/4 v1, 0x1

    return v1

    :catch_33
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public cancelConnection(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelConnection() - device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_26

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_27

    :cond_26
    return-void

    :cond_27
    :try_start_27
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->serverDisconnect(ILjava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method

.method public clearServices()V
    .registers 4

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, "clearServices()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_11

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_12

    :cond_11
    return-void

    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->clearServices(I)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public close()V
    .registers 3

    const-string/jumbo v0, "BluetoothGattServer"

    const-string/jumbo v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattServer;->unregisterCallback()V

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect() - device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", auto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_33

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v1, :cond_34

    :cond_33
    return v2

    :cond_34
    :try_start_34
    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v5, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_45

    move v1, v2

    :goto_3f
    iget v7, p0, Landroid/bluetooth/BluetoothGattServer;->mTransport:I

    invoke-interface {v4, v5, v6, v1, v7}, Landroid/bluetooth/IBluetoothGatt;->serverConnect(ILjava/lang/String;ZI)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_44} :catch_47

    return v3

    :cond_45
    move v1, v3

    goto :goto_3f

    :catch_47
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method getCharacteristicByHandle(I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 7

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

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

    if-ne v4, p1, :cond_1a

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

.method getDescriptorByHandle(I)Landroid/bluetooth/BluetoothGattDescriptor;
    .registers 9

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

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

    if-ne v6, p1, :cond_2e

    return-object v2

    :cond_41
    const/4 v6, 0x0

    return-object v6
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

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .registers 5

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;
    .registers 7

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-ne v2, p3, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_6

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
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public notifyCharacteristicChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .registers 13

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_a

    :cond_9
    return v8

    :cond_a
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v7

    if-nez v7, :cond_11

    return v8

    :cond_11
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Chracteristic value is empty. Use BluetoothGattCharacteristic#setvalue to update"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :try_start_20
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->sendNotification(ILjava/lang/String;IZ[B)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_34} :catch_36

    const/4 v0, 0x1

    return v0

    :catch_36
    move-exception v6

    const-string/jumbo v0, "BluetoothGattServer"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8
.end method

.method public readPhy(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->serverReadPhy(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method registerCallback(Landroid/bluetooth/BluetoothGattServerCallback;)Z
    .registers 11

    const/4 v8, 0x0

    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v4, "registerCallback()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-nez v3, :cond_18

    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v4, "GATT service not available"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_18
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string/jumbo v3, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerCallback() - UUID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_39
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;

    if-eqz v3, :cond_48

    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v5, "App can register callback only once"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_94

    monitor-exit v4

    return v8

    :cond_48
    :try_start_48
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_94

    :try_start_4a
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v6, p0, Landroid/bluetooth/BluetoothGattServer;->mBluetoothGattServerCallback:Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v3, v5, v6}, Landroid/bluetooth/IBluetoothGatt;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_56} :catch_66
    .catchall {:try_start_4a .. :try_end_56} :catchall_94

    :try_start_56
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIfLock:Ljava/lang/Object;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_5d} :catch_75
    .catchall {:try_start_56 .. :try_end_5d} :catchall_94

    :goto_5d
    :try_start_5d
    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v3, :cond_97

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_94

    monitor-exit v4

    return v8

    :catch_66
    move-exception v0

    :try_start_67
    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v5, ""

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_94

    monitor-exit v4

    return v8

    :catch_75
    move-exception v1

    :try_start_76
    const-string/jumbo v3, "BluetoothGattServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattServer;->mCallback:Landroid/bluetooth/BluetoothGattServerCallback;
    :try_end_93
    .catchall {:try_start_76 .. :try_end_93} :catchall_94

    goto :goto_5d

    :catchall_94
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_97
    const/4 v3, 0x1

    monitor-exit v4

    return v3
.end method

.method public removeService(Landroid/bluetooth/BluetoothGattService;)Z
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeService() - service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v2, :cond_27

    iget v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v2, :cond_28

    :cond_27
    return v5

    :cond_28
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;II)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    if-nez v1, :cond_3b

    return v5

    :cond_3b
    :try_start_3b
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->removeService(II)V

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer;->mServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_4b} :catch_4d

    const/4 v2, 0x1

    return v2

    :catch_4d
    move-exception v0

    const-string/jumbo v2, "BluetoothGattServer"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method public sendResponse(Landroid/bluetooth/BluetoothDevice;III[B)Z
    .registers 15

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    if-nez v0, :cond_a

    :cond_9
    return v8

    :cond_a
    :try_start_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->sendResponse(ILjava/lang/String;III[B)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_1b

    const/4 v0, 0x1

    return v0

    :catch_1b
    move-exception v7

    const-string/jumbo v0, "BluetoothGattServer"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8
.end method

.method public setPreferredPhy(Landroid/bluetooth/BluetoothDevice;III)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGattServer;->mServerIf:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->serverSetPreferredPhy(ILjava/lang/String;III)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v6

    const-string/jumbo v0, "BluetoothGattServer"

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method
