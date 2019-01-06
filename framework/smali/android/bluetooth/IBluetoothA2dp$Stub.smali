.class public abstract Landroid/bluetooth/IBluetoothA2dp$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dp.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dp"

.field static final TRANSACTION_adjustAvrcpAbsoluteVolume:I = 0x9

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disableOptionalCodecs:I = 0xf

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_enableOptionalCodecs:I = 0xe

.field static final TRANSACTION_getCodecStatus:I = 0xc

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getOptionalCodecsEnabled:I = 0x11

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_isA2dpPlaying:I = 0xb

.field static final TRANSACTION_isAvrcpAbsoluteVolumeSupported:I = 0x8

.field static final TRANSACTION_setAvrcpAbsoluteVolume:I = 0xa

.field static final TRANSACTION_setCodecConfigPreference:I = 0xd

.field static final TRANSACTION_setOptionalCodecsEnabled:I = 0x12

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_supportsOptionalCodecs:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothA2dp"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dp;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothA2dp;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_204

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    :sswitch_8
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v9, 0x1

    return v9

    :sswitch_10
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_33

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_24
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_35

    const/4 v9, 0x1

    :goto_2e
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_33
    const/4 v2, 0x0

    goto :goto_24

    :cond_35
    const/4 v9, 0x0

    goto :goto_2e

    :sswitch_37
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5a

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_4b
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_5c

    const/4 v9, 0x1

    :goto_55
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_5a
    const/4 v2, 0x0

    goto :goto_4b

    :cond_5c
    const/4 v9, 0x0

    goto :goto_55

    :sswitch_5e
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_70
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v9, 0x1

    return v9

    :sswitch_86
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_a6

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_9a
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_a6
    const/4 v2, 0x0

    goto :goto_9a

    :sswitch_a8
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_cf

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_d1

    const/4 v9, 0x1

    :goto_ca
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_cf
    const/4 v2, 0x0

    goto :goto_bc

    :cond_d1
    const/4 v9, 0x0

    goto :goto_ca

    :sswitch_d3
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f3

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_e7
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_f3
    const/4 v2, 0x0

    goto :goto_e7

    :sswitch_f5
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_10a

    const/4 v9, 0x1

    :goto_105
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_10a
    const/4 v9, 0x0

    goto :goto_105

    :sswitch_10c
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->adjustAvrcpAbsoluteVolume(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_11b
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setAvrcpAbsoluteVolume(I)V

    const/4 v9, 0x1

    return v9

    :sswitch_12a
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_14d

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_13e
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_14f

    const/4 v9, 0x1

    :goto_148
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_14d
    const/4 v2, 0x0

    goto :goto_13e

    :cond_14f
    const/4 v9, 0x0

    goto :goto_148

    :sswitch_151
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_16a

    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {v6, p3, v9}, Landroid/bluetooth/BluetoothCodecStatus;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_168
    const/4 v9, 0x1

    return v9

    :cond_16a
    const/4 v9, 0x0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_168

    :sswitch_16f
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_188

    sget-object v9, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothCodecConfig;

    :goto_183
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setCodecConfigPreference(Landroid/bluetooth/BluetoothCodecConfig;)V

    const/4 v9, 0x1

    return v9

    :cond_188
    const/4 v1, 0x0

    goto :goto_183

    :sswitch_18a
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->enableOptionalCodecs()V

    const/4 v9, 0x1

    return v9

    :sswitch_195
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->disableOptionalCodecs()V

    const/4 v9, 0x1

    return v9

    :sswitch_1a0
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1c0

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_1b4
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_1c0
    const/4 v2, 0x0

    goto :goto_1b4

    :sswitch_1c2
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1e2

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_1d6
    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    return v9

    :cond_1e2
    const/4 v2, 0x0

    goto :goto_1d6

    :sswitch_1e4
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dp"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_201

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    :goto_1f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/bluetooth/IBluetoothA2dp$Stub;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    const/4 v9, 0x1

    return v9

    :cond_201
    const/4 v2, 0x0

    goto :goto_1f8

    nop

    :sswitch_data_204
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_37
        0x3 -> :sswitch_5e
        0x4 -> :sswitch_70
        0x5 -> :sswitch_86
        0x6 -> :sswitch_a8
        0x7 -> :sswitch_d3
        0x8 -> :sswitch_f5
        0x9 -> :sswitch_10c
        0xa -> :sswitch_11b
        0xb -> :sswitch_12a
        0xc -> :sswitch_151
        0xd -> :sswitch_16f
        0xe -> :sswitch_18a
        0xf -> :sswitch_195
        0x10 -> :sswitch_1a0
        0x11 -> :sswitch_1c2
        0x12 -> :sswitch_1e4
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
