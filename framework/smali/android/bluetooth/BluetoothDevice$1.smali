.class final Landroid/bluetooth/BluetoothDevice$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {v1}, Landroid/bluetooth/BluetoothDevice;->-set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-class v1, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->-get0()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v2, "sService is not NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->-set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onBrEdrDown()V
    .registers 1

    return-void
.end method
