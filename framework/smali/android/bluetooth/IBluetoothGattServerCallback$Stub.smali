.class public abstract Landroid/bluetooth/IBluetoothGattServerCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGattServerCallback.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGattServerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGattServerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGattServerCallback"

.field static final TRANSACTION_onCharacteristicReadRequest:I = 0x4

.field static final TRANSACTION_onCharacteristicWriteRequest:I = 0x6

.field static final TRANSACTION_onConnectionUpdated:I = 0xd

.field static final TRANSACTION_onDescriptorReadRequest:I = 0x5

.field static final TRANSACTION_onDescriptorWriteRequest:I = 0x7

.field static final TRANSACTION_onExecuteWrite:I = 0x8

.field static final TRANSACTION_onMtuChanged:I = 0xa

.field static final TRANSACTION_onNotificationSent:I = 0x9

.field static final TRANSACTION_onPhyRead:I = 0xc

.field static final TRANSACTION_onPhyUpdate:I = 0xb

.field static final TRANSACTION_onServerConnectionState:I = 0x2

.field static final TRANSACTION_onServerRegistered:I = 0x1

.field static final TRANSACTION_onServiceAdded:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothGattServerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_20a

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_8
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_12
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerRegistered(II)V

    const/4 v4, 0x1

    return v4

    :sswitch_2b
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_54

    const/16 v27, 0x1

    :goto_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServerConnectionState(IIZLjava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :cond_54
    const/16 v27, 0x0

    goto :goto_43

    :sswitch_57
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7e

    sget-object v4, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/bluetooth/BluetoothGattService;

    :goto_73
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V

    const/4 v4, 0x1

    return v4

    :cond_7e
    const/16 v26, 0x0

    goto :goto_73

    :sswitch_81
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a7

    const/4 v8, 0x1

    :goto_9c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicReadRequest(Ljava/lang/String;IIZI)V

    const/4 v4, 0x1

    return v4

    :cond_a7
    const/4 v8, 0x0

    goto :goto_9c

    :sswitch_a9
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_cf

    const/4 v8, 0x1

    :goto_c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorReadRequest(Ljava/lang/String;IIZI)V

    const/4 v4, 0x1

    return v4

    :cond_cf
    const/4 v8, 0x0

    goto :goto_c4

    :sswitch_d1
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10a

    const/4 v15, 0x1

    :goto_f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10c

    const/16 v16, 0x1

    :goto_f8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    move-object/from16 v10, p0

    move-object v11, v5

    move v12, v6

    move v13, v7

    invoke-virtual/range {v10 .. v18}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V

    const/4 v4, 0x1

    return v4

    :cond_10a
    const/4 v15, 0x0

    goto :goto_f0

    :cond_10c
    const/16 v16, 0x0

    goto :goto_f8

    :sswitch_10f
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_148

    const/4 v15, 0x1

    :goto_12e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14a

    const/16 v16, 0x1

    :goto_136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    move-object/from16 v10, p0

    move-object v11, v5

    move v12, v6

    move v13, v7

    invoke-virtual/range {v10 .. v18}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V

    const/4 v4, 0x1

    return v4

    :cond_148
    const/4 v15, 0x0

    goto :goto_12e

    :cond_14a
    const/16 v16, 0x0

    goto :goto_136

    :sswitch_14d
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16e

    const/16 v27, 0x1

    :goto_165
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v5, v6, v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onExecuteWrite(Ljava/lang/String;IZ)V

    const/4 v4, 0x1

    return v4

    :cond_16e
    const/16 v27, 0x0

    goto :goto_165

    :sswitch_171
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onNotificationSent(Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

    :sswitch_188
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onMtuChanged(Ljava/lang/String;I)V

    const/4 v4, 0x1

    return v4

    :sswitch_19f
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v14}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onPhyUpdate(Ljava/lang/String;III)V

    const/4 v4, 0x1

    return v4

    :sswitch_1be
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v14}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onPhyRead(Ljava/lang/String;III)V

    const/4 v4, 0x1

    return v4

    :sswitch_1dd
    const-string/jumbo v4, "android.bluetooth.IBluetoothGattServerCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v14

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->onConnectionUpdated(Ljava/lang/String;IIII)V

    const/4 v4, 0x1

    return v4

    :sswitch_data_20a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_57
        0x4 -> :sswitch_81
        0x5 -> :sswitch_a9
        0x6 -> :sswitch_d1
        0x7 -> :sswitch_10f
        0x8 -> :sswitch_14d
        0x9 -> :sswitch_171
        0xa -> :sswitch_188
        0xb -> :sswitch_19f
        0xc -> :sswitch_1be
        0xd -> :sswitch_1dd
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
