.class public abstract Landroid/bluetooth/IBluetoothInputDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothInputDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothInputDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothInputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothInputDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothInputDevice"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getIdleTime:I = 0xe

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_getProtocolMode:I = 0x8

.field static final TRANSACTION_getReport:I = 0xb

.field static final TRANSACTION_sendData:I = 0xd

.field static final TRANSACTION_setIdleTime:I = 0xf

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_setProtocolMode:I = 0xa

.field static final TRANSACTION_setReport:I = 0xc

.field static final TRANSACTION_virtualUnplug:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputDevice;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputDevice"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothInputDevice;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothInputDevice;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothInputDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothInputDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_24e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_8
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_33

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_24
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_35

    const/4 v11, 0x1

    :goto_2e
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_33
    const/4 v0, 0x0

    goto :goto_24

    :cond_35
    const/4 v11, 0x0

    goto :goto_2e

    :sswitch_37
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5a

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_4b
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_5c

    const/4 v11, 0x1

    :goto_55
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_5a
    const/4 v0, 0x0

    goto :goto_4b

    :cond_5c
    const/4 v11, 0x0

    goto :goto_55

    :sswitch_5e
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    return v11

    :sswitch_70
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    return v11

    :sswitch_86
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a6

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_9a
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_a6
    const/4 v0, 0x0

    goto :goto_9a

    :sswitch_a8
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_cf

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_d1

    const/4 v11, 0x1

    :goto_ca
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_cf
    const/4 v0, 0x0

    goto :goto_bc

    :cond_d1
    const/4 v11, 0x0

    goto :goto_ca

    :sswitch_d3
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_f3

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_e7
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_f3
    const/4 v0, 0x0

    goto :goto_e7

    :sswitch_f5
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_118

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_109
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_11a

    const/4 v11, 0x1

    :goto_113
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_118
    const/4 v0, 0x0

    goto :goto_109

    :cond_11a
    const/4 v11, 0x0

    goto :goto_113

    :sswitch_11c
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_13f

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_130
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_141

    const/4 v11, 0x1

    :goto_13a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_13f
    const/4 v0, 0x0

    goto :goto_130

    :cond_141
    const/4 v11, 0x0

    goto :goto_13a

    :sswitch_143
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_16a

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_16c

    const/4 v11, 0x1

    :goto_165
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_16a
    const/4 v0, 0x0

    goto :goto_157

    :cond_16c
    const/4 v11, 0x0

    goto :goto_165

    :sswitch_16e
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_19d

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v0, v2, v5, v7}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_19f

    const/4 v11, 0x1

    :goto_198
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_19d
    const/4 v0, 0x0

    goto :goto_182

    :cond_19f
    const/4 v11, 0x0

    goto :goto_198

    :sswitch_1a1
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1cc

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_1b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v2, v6}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1ce

    const/4 v11, 0x1

    :goto_1c7
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_1cc
    const/4 v0, 0x0

    goto :goto_1b5

    :cond_1ce
    const/4 v11, 0x0

    goto :goto_1c7

    :sswitch_1d0
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1f7

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1f9

    const/4 v11, 0x1

    :goto_1f2
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_1f7
    const/4 v0, 0x0

    goto :goto_1e4

    :cond_1f9
    const/4 v11, 0x0

    goto :goto_1f2

    :sswitch_1fb
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_21e

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_20f
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_220

    const/4 v11, 0x1

    :goto_219
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_21e
    const/4 v0, 0x0

    goto :goto_20f

    :cond_220
    const/4 v11, 0x0

    goto :goto_219

    :sswitch_222
    const-string/jumbo v11, "android.bluetooth.IBluetoothInputDevice"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_249

    sget-object v11, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_236
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/bluetooth/IBluetoothInputDevice$Stub;->setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_24b

    const/4 v11, 0x1

    :goto_244
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    return v11

    :cond_249
    const/4 v0, 0x0

    goto :goto_236

    :cond_24b
    const/4 v11, 0x0

    goto :goto_244

    nop

    :sswitch_data_24e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_37
        0x3 -> :sswitch_5e
        0x4 -> :sswitch_70
        0x5 -> :sswitch_86
        0x6 -> :sswitch_a8
        0x7 -> :sswitch_d3
        0x8 -> :sswitch_f5
        0x9 -> :sswitch_11c
        0xa -> :sswitch_143
        0xb -> :sswitch_16e
        0xc -> :sswitch_1a1
        0xd -> :sswitch_1d0
        0xe -> :sswitch_1fb
        0xf -> :sswitch_222
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
