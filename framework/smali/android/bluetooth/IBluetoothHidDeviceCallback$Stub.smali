.class public abstract Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidDeviceCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidDeviceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidDeviceCallback"

.field static final TRANSACTION_onAppStatusChanged:I = 0x1

.field static final TRANSACTION_onConnectionStateChanged:I = 0x2

.field static final TRANSACTION_onGetReport:I = 0x3

.field static final TRANSACTION_onIntrData:I = 0x6

.field static final TRANSACTION_onSetProtocol:I = 0x5

.field static final TRANSACTION_onSetReport:I = 0x4

.field static final TRANSACTION_onVirtualCableUnplug:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidDeviceCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothHidDeviceCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_11c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_9
    const-string/jumbo v9, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_10
    const-string/jumbo v9, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_40

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_42

    sget-object v9, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    :goto_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_44

    const/4 v5, 0x1

    :goto_39
    invoke-virtual {p0, v0, v3, v5}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_40
    const/4 v0, 0x0

    goto :goto_24

    :cond_42
    const/4 v3, 0x0

    goto :goto_32

    :cond_44
    const/4 v5, 0x0

    goto :goto_39

    :sswitch_46
    const-string/jumbo v9, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_65

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_65
    const/4 v0, 0x0

    goto :goto_5a

    :sswitch_67
    const-string/jumbo v9, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8e

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v0, v1, v4, v7}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_8e
    const/4 v0, 0x0

    goto :goto_7b

    :sswitch_90
    const-string/jumbo v9, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b7

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual {p0, v0, v1, v4, v8}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_b7
    const/4 v0, 0x0

    goto :goto_a4

    :sswitch_b9
    const-string/jumbo v9, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d8

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_d8
    const/4 v0, 0x0

    goto :goto_cd

    :sswitch_da
    const-string/jumbo v9, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_fd

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v0, v1, v6}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onIntrData(Landroid/bluetooth/BluetoothDevice;B[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_fd
    const/4 v0, 0x0

    goto :goto_ee

    :sswitch_ff
    const-string/jumbo v9, "android.bluetooth.IBluetoothHidDeviceCallback"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_11a

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_113
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :cond_11a
    const/4 v0, 0x0

    goto :goto_113

    :sswitch_data_11c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_46
        0x3 -> :sswitch_67
        0x4 -> :sswitch_90
        0x5 -> :sswitch_b9
        0x6 -> :sswitch_da
        0x7 -> :sswitch_ff
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
