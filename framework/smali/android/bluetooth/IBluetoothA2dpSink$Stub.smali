.class public abstract Landroid/bluetooth/IBluetoothA2dpSink$Stub;
.super Landroid/os/Binder;
.source "IBluetoothA2dpSink.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothA2dpSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothA2dpSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothA2dpSink$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothA2dpSink"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getAudioConfig:I = 0x6

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getPriority:I = 0x8

.field static final TRANSACTION_isA2dpPlaying:I = 0x9

.field static final TRANSACTION_setPriority:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dpSink;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothA2dpSink"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothA2dpSink;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothA2dpSink;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothA2dpSink$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_138

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_a
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_11
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_33

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_25
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2f

    move v7, v8

    :cond_2f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :cond_33
    const/4 v0, 0x0

    goto :goto_25

    :sswitch_35
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_57

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_49
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_53

    move v7, v8

    :cond_53
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :cond_57
    const/4 v0, 0x0

    goto :goto_49

    :sswitch_59
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v8

    :sswitch_6a
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v8

    :sswitch_7f
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9e

    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_93
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :cond_9e
    const/4 v0, 0x0

    goto :goto_93

    :sswitch_a0
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_c4

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_b4
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_c6

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v8}, Landroid/bluetooth/BluetoothAudioConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c3
    return v8

    :cond_c4
    const/4 v0, 0x0

    goto :goto_b4

    :cond_c6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c3

    :sswitch_ca
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f0

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_ec

    move v7, v8

    :cond_ec
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :cond_f0
    const/4 v0, 0x0

    goto :goto_de

    :sswitch_f2
    const-string/jumbo v7, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_111

    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_106
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :cond_111
    const/4 v0, 0x0

    goto :goto_106

    :sswitch_113
    const-string/jumbo v9, "android.bluetooth.IBluetoothA2dpSink"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_135

    sget-object v9, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_127
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothA2dpSink$Stub;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_131

    move v7, v8

    :cond_131
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :cond_135
    const/4 v0, 0x0

    goto :goto_127

    nop

    :sswitch_data_138
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_35
        0x3 -> :sswitch_59
        0x4 -> :sswitch_6a
        0x5 -> :sswitch_7f
        0x6 -> :sswitch_a0
        0x7 -> :sswitch_ca
        0x8 -> :sswitch_f2
        0x9 -> :sswitch_113
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
