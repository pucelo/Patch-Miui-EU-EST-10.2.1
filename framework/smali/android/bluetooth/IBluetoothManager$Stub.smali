.class public abstract Landroid/bluetooth/IBluetoothManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothManager"

.field static final TRANSACTION_bindBluetoothProfileService:I = 0xb

.field static final TRANSACTION_disable:I = 0x8

.field static final TRANSACTION_enable:I = 0x6

.field static final TRANSACTION_enableNoAutoConnect:I = 0x7

.field static final TRANSACTION_factoryReset:I = 0xf

.field static final TRANSACTION_getAddress:I = 0xd

.field static final TRANSACTION_getBluetoothGatt:I = 0xa

.field static final TRANSACTION_getName:I = 0xe

.field static final TRANSACTION_getState:I = 0x9

.field static final TRANSACTION_isBleAppPresent:I = 0x12

.field static final TRANSACTION_isBleScanAlwaysAvailable:I = 0x10

.field static final TRANSACTION_isEnabled:I = 0x5

.field static final TRANSACTION_registerAdapter:I = 0x1

.field static final TRANSACTION_registerStateChangeCallback:I = 0x3

.field static final TRANSACTION_unbindBluetoothProfileService:I = 0xc

.field static final TRANSACTION_unregisterAdapter:I = 0x2

.field static final TRANSACTION_unregisterStateChangeCallback:I = 0x4

.field static final TRANSACTION_updateBleAppCount:I = 0x11


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothManager"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_21c

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_8
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_12
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_36

    invoke-interface {v10}, Landroid/bluetooth/IBluetooth;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v14, 0x1

    return v14

    :cond_36
    const/4 v14, 0x0

    goto :goto_2f

    :sswitch_38
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManagerCallback;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    :sswitch_50
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    :sswitch_68
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothStateChangeCallback;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothManager$Stub;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    :sswitch_80
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isEnabled()Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_99

    const/4 v14, 0x1

    :goto_92
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_99
    const/4 v14, 0x0

    goto :goto_92

    :sswitch_9b
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/bluetooth/IBluetoothManager$Stub;->enable(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_b8

    const/4 v14, 0x1

    :goto_b1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_b8
    const/4 v14, 0x0

    goto :goto_b1

    :sswitch_ba
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/bluetooth/IBluetoothManager$Stub;->enableNoAutoConnect(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_d7

    const/4 v14, 0x1

    :goto_d0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_d7
    const/4 v14, 0x0

    goto :goto_d0

    :sswitch_d9
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_fd

    const/4 v7, 0x1

    :goto_ec
    invoke-virtual {p0, v5, v7}, Landroid/bluetooth/IBluetoothManager$Stub;->disable(Ljava/lang/String;Z)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_ff

    const/4 v14, 0x1

    :goto_f6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_fd
    const/4 v7, 0x0

    goto :goto_ec

    :cond_ff
    const/4 v14, 0x0

    goto :goto_f6

    :sswitch_101
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getState()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_117
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_133

    invoke-interface {v11}, Landroid/bluetooth/IBluetoothGatt;->asBinder()Landroid/os/IBinder;

    move-result-object v14

    :goto_12c
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v14, 0x1

    return v14

    :cond_133
    const/4 v14, 0x0

    goto :goto_12c

    :sswitch_135
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Landroid/bluetooth/IBluetoothManager$Stub;->bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_15a

    const/4 v14, 0x1

    :goto_153
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_15a
    const/4 v14, 0x0

    goto :goto_153

    :sswitch_15c
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/bluetooth/IBluetoothProfileServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothProfileServiceConnection;

    move-result-object v6

    invoke-virtual {p0, v1, v6}, Landroid/bluetooth/IBluetoothManager$Stub;->unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v14, 0x1

    return v14

    :sswitch_178
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_18e
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1a4
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->factoryReset()Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_1bd

    const/4 v14, 0x1

    :goto_1b6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_1bd
    const/4 v14, 0x0

    goto :goto_1b6

    :sswitch_1bf
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleScanAlwaysAvailable()Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_1d8

    const/4 v14, 0x1

    :goto_1d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_1d8
    const/4 v14, 0x0

    goto :goto_1d1

    :sswitch_1da
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1ff

    const/4 v7, 0x1

    :goto_1ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v4, v7, v8}, Landroid/bluetooth/IBluetoothManager$Stub;->updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_1ff
    const/4 v7, 0x0

    goto :goto_1ed

    :sswitch_201
    const-string/jumbo v14, "android.bluetooth.IBluetoothManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothManager$Stub;->isBleAppPresent()Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_21a

    const/4 v14, 0x1

    :goto_213
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_21a
    const/4 v14, 0x0

    goto :goto_213

    :sswitch_data_21c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_38
        0x3 -> :sswitch_50
        0x4 -> :sswitch_68
        0x5 -> :sswitch_80
        0x6 -> :sswitch_9b
        0x7 -> :sswitch_ba
        0x8 -> :sswitch_d9
        0x9 -> :sswitch_101
        0xa -> :sswitch_117
        0xb -> :sswitch_135
        0xc -> :sswitch_15c
        0xd -> :sswitch_178
        0xe -> :sswitch_18e
        0xf -> :sswitch_1a4
        0x10 -> :sswitch_1bf
        0x11 -> :sswitch_1da
        0x12 -> :sswitch_201
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
