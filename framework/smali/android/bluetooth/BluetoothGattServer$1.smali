.class Landroid/bluetooth/BluetoothGattServer$1;
.super Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.source "BluetoothGattServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothGattServer;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothGattServer;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicReadRequest(Ljava/lang/String;IIZI)V
    .registers 12

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v3, p5}, Landroid/bluetooth/BluetoothGattServer;->getCharacteristicByHandle(I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string/jumbo v3, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCharacteristicReadRequest() no char for handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    :try_start_2d
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v3

    invoke-virtual {v3, v1, p2, p3, v0}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception v2

    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v4, "Unhandled exception in callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V
    .registers 19

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattServer;->getCharacteristicByHandle(I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    if-nez v4, :cond_31

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCharacteristicWriteRequest() no char for handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    :try_start_31
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1

    move v3, p2

    move v5, p5

    move/from16 v6, p6

    move v7, p3

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/bluetooth/BluetoothGattServerCallback;->onCharacteristicWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattCharacteristic;ZZI[B)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v9

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v3, "Unhandled exception in callback"

    invoke-static {v1, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method

.method public onConnectionUpdated(Ljava/lang/String;IIII)V
    .registers 13

    const-string/jumbo v0, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectionUpdated() - Device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " latency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_53

    return-void

    :cond_53
    :try_start_53
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionUpdated(Landroid/bluetooth/BluetoothDevice;IIII)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_60} :catch_61

    :goto_60
    return-void

    :catch_61
    move-exception v6

    const-string/jumbo v0, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method public onDescriptorReadRequest(Ljava/lang/String;IIZI)V
    .registers 12

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v3, p5}, Landroid/bluetooth/BluetoothGattServer;->getDescriptorByHandle(I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string/jumbo v3, "BluetoothGattServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDescriptorReadRequest() no desc for handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    :try_start_2d
    iget-object v3, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v3}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v3

    invoke-virtual {v3, v1, p2, p3, v0}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorReadRequest(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/BluetoothGattDescriptor;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_37

    :goto_36
    return-void

    :catch_37
    move-exception v2

    const-string/jumbo v3, "BluetoothGattServer"

    const-string/jumbo v4, "Unhandled exception in callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method public onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V
    .registers 19

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattServer;->getDescriptorByHandle(I)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    if-nez v4, :cond_31

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDescriptorWriteRequest() no desc for handle "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    :try_start_31
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v1

    move v3, p2

    move v5, p5

    move/from16 v6, p6

    move v7, p3

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Landroid/bluetooth/BluetoothGattServerCallback;->onDescriptorWriteRequest(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothGattDescriptor;ZZI[B)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v9

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v3, "Unhandled exception in callback"

    invoke-static {v1, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method

.method public onExecuteWrite(Ljava/lang/String;IZ)V
    .registers 9

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onExecuteWrite() - device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", transId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "execWrite="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3d

    return-void

    :cond_3d
    :try_start_3d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Landroid/bluetooth/BluetoothGattServerCallback;->onExecuteWrite(Landroid/bluetooth/BluetoothDevice;IZ)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_47

    :goto_46
    return-void

    :catch_47
    move-exception v1

    const-string/jumbo v2, "BluetoothGattServer"

    const-string/jumbo v3, "Unhandled exception in callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method

.method public onMtuChanged(Ljava/lang/String;I)V
    .registers 8

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMtuChanged() - device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mtu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_32

    return-void

    :cond_32
    :try_start_32
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onMtuChanged(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3b} :catch_3c

    :goto_3b
    return-void

    :catch_3c
    move-exception v1

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method public onNotificationSent(Ljava/lang/String;I)V
    .registers 8

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Landroid/bluetooth/BluetoothGattServerCallback;->onNotificationSent(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v1

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public onPhyRead(Ljava/lang/String;III)V
    .registers 10

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPhyUpdate() - device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", txPHy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", rxPHy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3d

    return-void

    :cond_3d
    :try_start_3d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onPhyRead(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_47

    :goto_46
    return-void

    :catch_47
    move-exception v1

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public onPhyUpdate(Ljava/lang/String;III)V
    .registers 10

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPhyUpdate() - device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", txPHy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", rxPHy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_3d

    return-void

    :cond_3d
    :try_start_3d
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v2}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/bluetooth/BluetoothGattServerCallback;->onPhyUpdate(Landroid/bluetooth/BluetoothDevice;III)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_46} :catch_47

    :goto_46
    return-void

    :catch_47
    move-exception v1

    const-string/jumbo v2, "BluetoothGattServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method

.method public onServerConnectionState(IIZLjava/lang/String;)V
    .registers 9

    const-string/jumbo v1, "BluetoothGattServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onServerConnectionState() - status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " serverIf="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_30
    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v1}, Landroid/bluetooth/BluetoothGattServer;->-get0(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz p3, :cond_47

    const/4 v1, 0x2

    :goto_43
    invoke-virtual {v2, v3, p1, v1}, Landroid/bluetooth/BluetoothGattServerCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothDevice;II)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_46} :catch_49

    :goto_46
    return-void

    :cond_47
    const/4 v1, 0x0

    goto :goto_43

    :catch_49
    move-exception v0

    const-string/jumbo v1, "BluetoothGattServer"

    const-string/jumbo v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method

.method public onServerRegistered(II)V
    .registers 6

    const-string/jumbo v0, "BluetoothGattServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServerRegistered() - status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " serverIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-get3(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2c
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0, p2}, Landroid/bluetooth/BluetoothGattServer;->-set1(Landroid/bluetooth/BluetoothGattServer;I)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v0}, Landroid/bluetooth/BluetoothGattServer;->-get3(Landroid/bluetooth/BluetoothGattServer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_4e

    :goto_42
    monitor-exit v1

    return-void

    :cond_44
    :try_start_44
    const-string/jumbo v0, "BluetoothGattServer"

    const-string/jumbo v2, "onServerRegistered: mCallback is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_4e

    goto :goto_42

    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    .registers 16

    const-string/jumbo v10, "BluetoothGattServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onServiceAdded() - handle="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " uuid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGattServer;->-get2(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v10

    if-nez v10, :cond_41

    return-void

    :cond_41
    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGattServer;->-get2(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v9

    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/bluetooth/BluetoothGattServer;->-set0(Landroid/bluetooth/BluetoothGattServer;Landroid/bluetooth/BluetoothGattService;)Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/bluetooth/BluetoothGattService;->setInstanceId(I)V

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    :goto_5d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_9e

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/bluetooth/BluetoothGattCharacteristic;->setInstanceId(I)V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    :goto_7f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_9b

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothGattDescriptor;->setInstanceId(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    :cond_9b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_9e
    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGattServer;->-get4(Landroid/bluetooth/BluetoothGattServer;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_a7
    iget-object v10, p0, Landroid/bluetooth/BluetoothGattServer$1;->this$0:Landroid/bluetooth/BluetoothGattServer;

    invoke-static {v10}, Landroid/bluetooth/BluetoothGattServer;->-get1(Landroid/bluetooth/BluetoothGattServer;)Landroid/bluetooth/BluetoothGattServerCallback;

    move-result-object v10

    invoke-virtual {v10, p1, v9}, Landroid/bluetooth/BluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b0} :catch_b1

    :goto_b0
    return-void

    :catch_b1
    move-exception v0

    const-string/jumbo v10, "BluetoothGattServer"

    const-string/jumbo v11, "Unhandled exception in callback"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b0
.end method
