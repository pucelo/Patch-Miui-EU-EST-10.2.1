.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addService:I = 0x2f

.field static final TRANSACTION_beginReliableWrite:I = 0x24

.field static final TRANSACTION_clearServices:I = 0x31

.field static final TRANSACTION_clientConnect:I = 0x17

.field static final TRANSACTION_clientDisconnect:I = 0x18

.field static final TRANSACTION_clientReadPhy:I = 0x1a

.field static final TRANSACTION_clientSetPreferredPhy:I = 0x19

.field static final TRANSACTION_configureMTU:I = 0x27

.field static final TRANSACTION_connectionParameterUpdate:I = 0x28

.field static final TRANSACTION_disconnectAll:I = 0x34

.field static final TRANSACTION_discoverServiceByUuid:I = 0x1d

.field static final TRANSACTION_discoverServices:I = 0x1c

.field static final TRANSACTION_enableAdvertisingSet:I = 0xc

.field static final TRANSACTION_endReliableWrite:I = 0x25

.field static final TRANSACTION_flushPendingBatchResults:I = 0x8

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_getOwnAddress:I = 0xb

.field static final TRANSACTION_numHwTrackFiltersAvailable:I = 0x36

.field static final TRANSACTION_readCharacteristic:I = 0x1e

.field static final TRANSACTION_readDescriptor:I = 0x21

.field static final TRANSACTION_readRemoteRssi:I = 0x26

.field static final TRANSACTION_readUsingCharacteristicUuid:I = 0x1f

.field static final TRANSACTION_refreshDevice:I = 0x1b

.field static final TRANSACTION_registerClient:I = 0x15

.field static final TRANSACTION_registerForNotification:I = 0x23

.field static final TRANSACTION_registerScanner:I = 0x2

.field static final TRANSACTION_registerServer:I = 0x29

.field static final TRANSACTION_registerStatisticsClient:I = 0x37

.field static final TRANSACTION_registerSync:I = 0x13

.field static final TRANSACTION_removeService:I = 0x30

.field static final TRANSACTION_sendNotification:I = 0x33

.field static final TRANSACTION_sendResponse:I = 0x32

.field static final TRANSACTION_serverConnect:I = 0x2b

.field static final TRANSACTION_serverDisconnect:I = 0x2c

.field static final TRANSACTION_serverReadPhy:I = 0x2e

.field static final TRANSACTION_serverSetPreferredPhy:I = 0x2d

.field static final TRANSACTION_setAdvertisingData:I = 0xd

.field static final TRANSACTION_setAdvertisingParameters:I = 0xf

.field static final TRANSACTION_setPeriodicAdvertisingData:I = 0x11

.field static final TRANSACTION_setPeriodicAdvertisingEnable:I = 0x12

.field static final TRANSACTION_setPeriodicAdvertisingParameters:I = 0x10

.field static final TRANSACTION_setScanResponseData:I = 0xe

.field static final TRANSACTION_startAdvertisingSet:I = 0x9

.field static final TRANSACTION_startScan:I = 0x4

.field static final TRANSACTION_startScanForIntent:I = 0x5

.field static final TRANSACTION_stopAdvertisingSet:I = 0xa

.field static final TRANSACTION_stopScan:I = 0x7

.field static final TRANSACTION_stopScanForIntent:I = 0x6

.field static final TRANSACTION_unregAll:I = 0x35

.field static final TRANSACTION_unregisterClient:I = 0x16

.field static final TRANSACTION_unregisterScanner:I = 0x3

.field static final TRANSACTION_unregisterServer:I = 0x2a

.field static final TRANSACTION_unregisterStatisticsClient:I = 0x38

.field static final TRANSACTION_unregisterSync:I = 0x14

.field static final TRANSACTION_writeCharacteristic:I = 0x20

.field static final TRANSACTION_writeDescriptor:I = 0x22


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothGatt;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 67
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_8a4

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_8
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :sswitch_12
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v48

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v60

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v5, 0x1

    return v5

    :sswitch_32
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/le/IScannerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;

    move-result-object v45

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_60

    sget-object v5, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/os/WorkSource;

    :goto_52
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_60
    const/16 v55, 0x0

    goto :goto_52

    :sswitch_63
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterScanner(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_79
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bb

    sget-object v5, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/le/ScanSettings;

    :goto_95
    sget-object v5, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v61

    move-object/from16 v0, p2

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_bb
    const/4 v7, 0x0

    goto :goto_95

    :sswitch_bd
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ff

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/PendingIntent;

    :goto_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_102

    sget-object v5, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/le/ScanSettings;

    :goto_e5
    sget-object v5, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v7, v8, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_ff
    const/16 v42, 0x0

    goto :goto_d5

    :cond_102
    const/4 v7, 0x0

    goto :goto_e5

    :sswitch_104
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12e

    sget-object v5, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/app/PendingIntent;

    :goto_11c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScanForIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_12e
    const/16 v42, 0x0

    goto :goto_11c

    :sswitch_131
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_147
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->flushPendingBatchResults(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_15d
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1cf

    sget-object v5, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/le/AdvertisingSetParameters;

    :goto_175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d1

    sget-object v5, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/le/AdvertiseData;

    :goto_185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d3

    sget-object v5, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/bluetooth/le/AdvertiseData;

    :goto_195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d5

    sget-object v5, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    :goto_1a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d7

    sget-object v5, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/bluetooth/le/AdvertiseData;

    :goto_1b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v19

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v19}, Landroid/bluetooth/IBluetoothGatt$Stub;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_1cf
    const/4 v12, 0x0

    goto :goto_175

    :cond_1d1
    const/4 v13, 0x0

    goto :goto_185

    :cond_1d3
    const/4 v14, 0x0

    goto :goto_195

    :cond_1d5
    const/4 v15, 0x0

    goto :goto_1a5

    :cond_1d7
    const/16 v16, 0x0

    goto :goto_1b5

    :sswitch_1da
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_1f6
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->getOwnAddress(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_20c
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_238

    const/16 v56, 0x1

    :goto_220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v29

    move/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->enableAdvertisingSet(IZII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_238
    const/16 v56, 0x0

    goto :goto_220

    :sswitch_23b
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_261

    sget-object v5, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/le/AdvertiseData;

    :goto_257
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_261
    const/4 v13, 0x0

    goto :goto_257

    :sswitch_263
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_289

    sget-object v5, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/le/AdvertiseData;

    :goto_27f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_289
    const/4 v13, 0x0

    goto :goto_27f

    :sswitch_28b
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b3

    sget-object v5, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/bluetooth/le/AdvertisingSetParameters;

    :goto_2a7
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_2b3
    const/16 v53, 0x0

    goto :goto_2a7

    :sswitch_2b6
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2de

    sget-object v5, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    :goto_2d2
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_2de
    const/16 v54, 0x0

    goto :goto_2d2

    :sswitch_2e1
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_307

    sget-object v5, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/le/AdvertiseData;

    :goto_2fd
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_307
    const/4 v13, 0x0

    goto :goto_2fd

    :sswitch_309
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_329

    const/16 v56, 0x1

    :goto_31d
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingEnable(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_329
    const/16 v56, 0x0

    goto :goto_31d

    :sswitch_32c
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_366

    sget-object v5, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/bluetooth/le/ScanResult;

    :goto_344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v49

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v49

    move/from16 v3, v29

    move-object/from16 v4, v57

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_366
    const/16 v46, 0x0

    goto :goto_344

    :sswitch_369
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_385
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b3

    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/os/ParcelUuid;

    :goto_39d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_3b3
    const/16 v47, 0x0

    goto :goto_39d

    :sswitch_3b6
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_3cc
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_402

    const/16 v23, 0x1

    :goto_3e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_405

    const/16 v25, 0x1

    :goto_3f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v20, p0

    move/from16 v21, v6

    move/from16 v26, v17

    invoke-virtual/range {v20 .. v26}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;ZIZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_402
    const/16 v23, 0x0

    goto :goto_3e4

    :cond_405
    const/16 v25, 0x0

    goto :goto_3f0

    :sswitch_408
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_424
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    move-object/from16 v26, p0

    move/from16 v27, v6

    move-object/from16 v28, v22

    move/from16 v30, v24

    invoke-virtual/range {v26 .. v31}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientSetPreferredPhy(ILjava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_450
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientReadPhy(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_46c
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_488
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_4a4
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d2

    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/ParcelUuid;

    :goto_4c4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v6, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_4d2
    const/16 v35, 0x0

    goto :goto_4c4

    :sswitch_4d5
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_4fd
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_53d

    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/ParcelUuid;

    :goto_51d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v32, p0

    move/from16 v33, v6

    move-object/from16 v34, v22

    move/from16 v36, v24

    move/from16 v37, v31

    move/from16 v38, v17

    invoke-virtual/range {v32 .. v38}, Landroid/bluetooth/IBluetoothGatt$Stub;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_53d
    const/16 v35, 0x0

    goto :goto_51d

    :sswitch_540
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v32

    move-object/from16 v26, p0

    move/from16 v27, v6

    move-object/from16 v28, v22

    move/from16 v30, v24

    invoke-virtual/range {v26 .. v32}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;III[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_570
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_598
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v41

    move-object/from16 v36, p0

    move/from16 v37, v6

    move-object/from16 v38, v22

    move/from16 v39, v29

    move/from16 v40, v24

    invoke-virtual/range {v36 .. v41}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_5c6
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f2

    const/16 v40, 0x1

    :goto_5e2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v29

    move/from16 v3, v40

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_5f2
    const/16 v40, 0x0

    goto :goto_5e2

    :sswitch_5f5
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_611
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_637

    const/16 v23, 0x1

    :goto_629
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v6, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_637
    const/16 v23, 0x0

    goto :goto_629

    :sswitch_63a
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_656
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v29

    invoke-virtual {v0, v6, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->configureMTU(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_678
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v29

    invoke-virtual {v0, v6, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->connectionParameterUpdate(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_69a
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6c8

    sget-object v5, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/os/ParcelUuid;

    :goto_6b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v52

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_6c8
    const/16 v47, 0x0

    goto :goto_6b2

    :sswitch_6cb
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_6e1
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_70d

    const/16 v23, 0x1

    :goto_6f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_70d
    const/16 v23, 0x0

    goto :goto_6f9

    :sswitch_710
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_72c
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    move-object/from16 v26, p0

    move/from16 v27, v6

    move-object/from16 v28, v22

    move/from16 v30, v24

    invoke-virtual/range {v26 .. v31}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverSetPreferredPhy(ILjava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_758
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverReadPhy(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_774
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_79c

    sget-object v5, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/bluetooth/BluetoothGattService;

    :goto_790
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->addService(ILandroid/bluetooth/BluetoothGattService;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_79c
    const/16 v50, 0x0

    goto :goto_790

    :sswitch_79f
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v49

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v6, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_7bb
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_7d1
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v32

    move-object/from16 v26, p0

    move/from16 v27, v6

    move-object/from16 v28, v22

    move/from16 v30, v24

    invoke-virtual/range {v26 .. v32}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_801
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_831

    const/16 v40, 0x1

    :goto_81d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v41

    move-object/from16 v36, p0

    move/from16 v37, v6

    move-object/from16 v38, v22

    move/from16 v39, v29

    invoke-virtual/range {v36 .. v41}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IZ[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :cond_831
    const/16 v40, 0x0

    goto :goto_81d

    :sswitch_834
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->disconnectAll()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_844
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregAll()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_854
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->numHwTrackFiltersAvailable()I

    move-result v59

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    return v5

    :sswitch_86c
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/le/IScannerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerStatisticsClient(Landroid/bluetooth/le/IScannerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_888
    const-string/jumbo v5, "android.bluetooth.IBluetoothGatt"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/le/IScannerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterStatisticsClient(Landroid/bluetooth/le/IScannerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :sswitch_data_8a4
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_32
        0x3 -> :sswitch_63
        0x4 -> :sswitch_79
        0x5 -> :sswitch_bd
        0x6 -> :sswitch_104
        0x7 -> :sswitch_131
        0x8 -> :sswitch_147
        0x9 -> :sswitch_15d
        0xa -> :sswitch_1da
        0xb -> :sswitch_1f6
        0xc -> :sswitch_20c
        0xd -> :sswitch_23b
        0xe -> :sswitch_263
        0xf -> :sswitch_28b
        0x10 -> :sswitch_2b6
        0x11 -> :sswitch_2e1
        0x12 -> :sswitch_309
        0x13 -> :sswitch_32c
        0x14 -> :sswitch_369
        0x15 -> :sswitch_385
        0x16 -> :sswitch_3b6
        0x17 -> :sswitch_3cc
        0x18 -> :sswitch_408
        0x19 -> :sswitch_424
        0x1a -> :sswitch_450
        0x1b -> :sswitch_46c
        0x1c -> :sswitch_488
        0x1d -> :sswitch_4a4
        0x1e -> :sswitch_4d5
        0x1f -> :sswitch_4fd
        0x20 -> :sswitch_540
        0x21 -> :sswitch_570
        0x22 -> :sswitch_598
        0x23 -> :sswitch_5c6
        0x24 -> :sswitch_5f5
        0x25 -> :sswitch_611
        0x26 -> :sswitch_63a
        0x27 -> :sswitch_656
        0x28 -> :sswitch_678
        0x29 -> :sswitch_69a
        0x2a -> :sswitch_6cb
        0x2b -> :sswitch_6e1
        0x2c -> :sswitch_710
        0x2d -> :sswitch_72c
        0x2e -> :sswitch_758
        0x2f -> :sswitch_774
        0x30 -> :sswitch_79f
        0x31 -> :sswitch_7bb
        0x32 -> :sswitch_7d1
        0x33 -> :sswitch_801
        0x34 -> :sswitch_834
        0x35 -> :sswitch_844
        0x36 -> :sswitch_854
        0x37 -> :sswitch_86c
        0x38 -> :sswitch_888
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
