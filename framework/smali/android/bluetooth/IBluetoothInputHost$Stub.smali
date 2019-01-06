.class public abstract Landroid/bluetooth/IBluetoothInputHost$Stub;
.super Landroid/os/Binder;
.source "IBluetoothInputHost.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothInputHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothInputHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothInputHost$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothInputHost"

.field static final TRANSACTION_connect:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x8

.field static final TRANSACTION_getConnectedDevices:I = 0x9

.field static final TRANSACTION_getConnectionState:I = 0xb

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0xa

.field static final TRANSACTION_registerApp:I = 0x1

.field static final TRANSACTION_replyReport:I = 0x4

.field static final TRANSACTION_reportError:I = 0x5

.field static final TRANSACTION_sendReport:I = 0x3

.field static final TRANSACTION_unplug:I = 0x6

.field static final TRANSACTION_unregisterApp:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothInputHost"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothInputHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputHost;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothInputHost;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothInputHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothInputHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_23c

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_8
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :sswitch_12
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_75

    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_77

    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_79

    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7b

    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v6

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/IBluetoothInputHost$Stub;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_7d

    const/4 v1, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_75
    const/4 v2, 0x0

    goto :goto_2a

    :cond_77
    const/4 v3, 0x0

    goto :goto_3a

    :cond_79
    const/4 v4, 0x0

    goto :goto_4a

    :cond_7b
    const/4 v5, 0x0

    goto :goto_5a

    :cond_7d
    const/4 v1, 0x0

    goto :goto_6e

    :sswitch_7f
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_aa

    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    :goto_97
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/bluetooth/IBluetoothInputHost$Stub;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_ac

    const/4 v1, 0x1

    :goto_a3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_aa
    const/4 v2, 0x0

    goto :goto_97

    :cond_ac
    const/4 v1, 0x0

    goto :goto_a3

    :sswitch_ae
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e1

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    :goto_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10, v12}, Landroid/bluetooth/IBluetoothInputHost$Stub;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_e3

    const/4 v1, 0x1

    :goto_da
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_e1
    const/4 v7, 0x0

    goto :goto_c6

    :cond_e3
    const/4 v1, 0x0

    goto :goto_da

    :sswitch_e5
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11c

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    :goto_fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v11, v13}, Landroid/bluetooth/IBluetoothInputHost$Stub;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_11e

    const/4 v1, 0x1

    :goto_115
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_11c
    const/4 v7, 0x0

    goto :goto_fd

    :cond_11e
    const/4 v1, 0x0

    goto :goto_115

    :sswitch_120
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14f

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    :goto_138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Landroid/bluetooth/IBluetoothInputHost$Stub;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_151

    const/4 v1, 0x1

    :goto_148
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_14f
    const/4 v7, 0x0

    goto :goto_138

    :cond_151
    const/4 v1, 0x0

    goto :goto_148

    :sswitch_153
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17e

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    :goto_16b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothInputHost$Stub;->unplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_180

    const/4 v1, 0x1

    :goto_177
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_17e
    const/4 v7, 0x0

    goto :goto_16b

    :cond_180
    const/4 v1, 0x0

    goto :goto_177

    :sswitch_182
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1ad

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    :goto_19a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothInputHost$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1af

    const/4 v1, 0x1

    :goto_1a6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_1ad
    const/4 v7, 0x0

    goto :goto_19a

    :cond_1af
    const/4 v1, 0x0

    goto :goto_1a6

    :sswitch_1b1
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1dc

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    :goto_1c9
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothInputHost$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v16, :cond_1de

    const/4 v1, 0x1

    :goto_1d5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_1dc
    const/4 v7, 0x0

    goto :goto_1c9

    :cond_1de
    const/4 v1, 0x0

    goto :goto_1d5

    :sswitch_1e0
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothInputHost$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v1, 0x1

    return v1

    :sswitch_1f6
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/bluetooth/IBluetoothInputHost$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v1, 0x1

    return v1

    :sswitch_212
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23a

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    :goto_22a
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothInputHost$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    return v1

    :cond_23a
    const/4 v7, 0x0

    goto :goto_22a

    :sswitch_data_23c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_7f
        0x3 -> :sswitch_ae
        0x4 -> :sswitch_e5
        0x5 -> :sswitch_120
        0x6 -> :sswitch_153
        0x7 -> :sswitch_182
        0x8 -> :sswitch_1b1
        0x9 -> :sswitch_1e0
        0xa -> :sswitch_1f6
        0xb -> :sswitch_212
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
