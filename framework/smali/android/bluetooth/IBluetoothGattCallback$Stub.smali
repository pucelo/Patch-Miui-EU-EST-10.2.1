.class public abstract Landroid/bluetooth/IBluetoothGattCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattCallback"

.field static final TRANSACTION_onCharacteristicRead:I = 0x6

.field static final TRANSACTION_onCharacteristicWrite:I = 0x7

.field static final TRANSACTION_onClientConnectionState:I = 0x2

.field static final TRANSACTION_onClientRegistered:I = 0x1

.field static final TRANSACTION_onConfigureMTU:I = 0xd

.field static final TRANSACTION_onConnectionUpdated:I = 0xe

.field static final TRANSACTION_onDescriptorRead:I = 0x9

.field static final TRANSACTION_onDescriptorWrite:I = 0xa

.field static final TRANSACTION_onExecuteWrite:I = 0x8

.field static final TRANSACTION_onNotify:I = 0xb

.field static final TRANSACTION_onPhyRead:I = 0x4

.field static final TRANSACTION_onPhyUpdate:I = 0x3

.field static final TRANSACTION_onReadRemoteRssi:I = 0xc

.field static final TRANSACTION_onSearchComplete:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_16e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_8
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_10
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v6, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientRegistered(II)V

    const/4 v0, 0x1

    return v0

    :sswitch_23
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_41

    const/4 v8, 0x1

    :goto_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v6, v2, v8, v10}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onClientConnectionState(IIZLjava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_41
    const/4 v8, 0x0

    goto :goto_38

    :sswitch_43
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onPhyUpdate(Ljava/lang/String;III)V

    const/4 v0, 0x1

    return v0

    :sswitch_5e
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onPhyRead(Ljava/lang/String;III)V

    const/4 v0, 0x1

    return v0

    :sswitch_79
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v7, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V

    const/4 v0, 0x1

    return v0

    :sswitch_92
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual {p0, v1, v2, v3, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicRead(Ljava/lang/String;II[B)V

    const/4 v0, 0x1

    return v0

    :sswitch_ad
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onCharacteristicWrite(Ljava/lang/String;II)V

    const/4 v0, 0x1

    return v0

    :sswitch_c4
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onExecuteWrite(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0

    :sswitch_d7
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual {p0, v1, v2, v3, v11}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorRead(Ljava/lang/String;II[B)V

    const/4 v0, 0x1

    return v0

    :sswitch_f2
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onDescriptorWrite(Ljava/lang/String;II)V

    const/4 v0, 0x1

    return v0

    :sswitch_109
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    invoke-virtual {p0, v1, v2, v9}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onNotify(Ljava/lang/String;I[B)V

    const/4 v0, 0x1

    return v0

    :sswitch_120
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onReadRemoteRssi(Ljava/lang/String;II)V

    const/4 v0, 0x1

    return v0

    :sswitch_137
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConfigureMTU(Ljava/lang/String;II)V

    const/4 v0, 0x1

    return v0

    :sswitch_14e
    const-string/jumbo v0, "android.bluetooth.IBluetoothGattCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->onConnectionUpdated(Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    return v0

    :sswitch_data_16e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_43
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_79
        0x6 -> :sswitch_92
        0x7 -> :sswitch_ad
        0x8 -> :sswitch_c4
        0x9 -> :sswitch_d7
        0xa -> :sswitch_f2
        0xb -> :sswitch_109
        0xc -> :sswitch_120
        0xd -> :sswitch_137
        0xe -> :sswitch_14e
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
