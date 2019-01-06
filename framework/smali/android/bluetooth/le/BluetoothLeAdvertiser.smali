.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x672

.field private static final MAX_LEGACY_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAdvertiser"


# instance fields
.field private final mAdvertisingSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/le/AdvertisingSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            "Landroid/bluetooth/le/IAdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLegacyAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/IBluetoothManager;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private byteLength([B)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    array-length v0, p1

    goto :goto_3
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V
    .registers 5

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;

    invoke-direct {v0, p0, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$5;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .registers 13

    const/4 v8, 0x0

    if-nez p1, :cond_4

    return v8

    :cond_4
    if-eqz p2, :cond_2d

    const/4 v4, 0x3

    :goto_7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_50

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_2f

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2d
    const/4 v4, 0x0

    goto :goto_7

    :cond_2f
    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_38

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_3b
    if-eqz v2, :cond_42

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    :cond_42
    if-eqz v3, :cond_49

    mul-int/lit8 v8, v3, 0x4

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    :cond_49
    if-eqz v1, :cond_50

    mul-int/lit8 v8, v1, 0x10

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    :cond_50
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelUuid;

    invoke-static {v5}, Landroid/bluetooth/BluetoothUuid;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v8

    array-length v7, v8

    add-int/lit8 v9, v7, 0x2

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {p0, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v8

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    goto :goto_5c

    :cond_80
    const/4 v0, 0x0

    :goto_81
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_9f

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {p0, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v4, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    :cond_9f
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v8

    if-eqz v8, :cond_a7

    add-int/lit8 v4, v4, 0x3

    :cond_a7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v8

    if-eqz v8, :cond_c2

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c2

    iget-object v8, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    :cond_c2
    return v4
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 19

    iget-object v13, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v13

    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    if-nez p4, :cond_16

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v1

    monitor-exit v13

    throw v1

    :cond_16
    :try_start_16
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v10

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v10}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_37

    :cond_2f
    const/4 v1, 0x1

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_13

    monitor-exit v13

    return-void

    :cond_37
    :try_start_37
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x3

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_13

    monitor-exit v13

    return-void

    :cond_49
    :try_start_49
    new-instance v11, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-direct {v11}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-virtual {v11, v10}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    if-nez v1, :cond_99

    const/16 v1, 0x640

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    :cond_64
    :goto_64
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-nez v1, :cond_b3

    const/16 v1, -0x15

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    :cond_6f
    :goto_6f
    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v12

    if-lez v12, :cond_7b

    const/16 v1, 0xa

    if-ge v12, v1, :cond_d8

    const/4 v7, 0x1

    :cond_7b
    :goto_7b
    move-object/from16 v0, p4

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;

    move-result-object v9

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    move-object/from16 v0, p4

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->build()Landroid/bluetooth/le/AdvertisingSetParameters;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V
    :try_end_97
    .catchall {:try_start_49 .. :try_end_97} :catchall_13

    monitor-exit v13

    return-void

    :cond_99
    :try_start_99
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a6

    const/16 v1, 0x190

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_64

    :cond_a6
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_64

    const/16 v1, 0xa0

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_64

    :cond_b3
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c0

    const/16 v1, -0xf

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_6f

    :cond_c0
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_cc

    const/4 v1, -0x7

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_6f

    :cond_cc
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6f

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_6f

    :cond_d8
    div-int/lit8 v7, v12, 0xa
    :try_end_da
    .catchall {:try_start_99 .. :try_end_da} :catchall_13

    goto :goto_7b
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 19

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .registers 30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v4}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    if-nez p8, :cond_12

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "callback cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isConnectable()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy()Z

    move-result v4

    if-eqz v4, :cond_47

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_31

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Legacy advertising data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_31
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_e4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Legacy scan response data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isLeCodedPhySupported()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isLe2MPhySupported()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getPrimaryPhy()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getSecondaryPhy()I

    move-result v16

    const/4 v4, 0x3

    if-ne v15, v4, :cond_6f

    xor-int/lit8 v4, v18, 0x1

    if-eqz v4, :cond_6f

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported primary PHY selected"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6f
    const/4 v4, 0x3

    move/from16 v0, v16

    if-ne v0, v4, :cond_78

    xor-int/lit8 v4, v18, 0x1

    if-nez v4, :cond_81

    :cond_78
    const/4 v4, 0x2

    move/from16 v0, v16

    if-ne v0, v4, :cond_8a

    xor-int/lit8 v4, v17, 0x1

    if-eqz v4, :cond_8a

    :cond_81
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unsupported secondary PHY selected"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getLeMaximumAdvertisingDataLength()I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    if-le v4, v14, :cond_a5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Advertising data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    if-le v4, v14, :cond_b9

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Scan response data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v4

    if-le v4, v14, :cond_cd

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Periodic advertising data too big"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_cd
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v19

    if-eqz p4, :cond_e4

    xor-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_e4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Controller does not support LE Periodic Advertising"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e4
    if-ltz p7, :cond_ec

    const/16 v4, 0xff

    move/from16 v0, p7

    if-le v0, v4, :cond_108

    :cond_ec
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maxExtendedAdvertisingEvents out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_108
    if-eqz p7, :cond_11f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11f

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Can\'t use maxExtendedAdvertisingEvents with controller that don\'t support LE Extended Advertising"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_11f
    if-ltz p6, :cond_128

    const v4, 0xffff

    move/from16 v0, p6

    if-le v0, v4, :cond_144

    :cond_128
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "duration out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_144
    :try_start_144
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v4}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_14b
    .catch Landroid/os/RemoteException; {:try_start_144 .. :try_end_14b} :catch_16b

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    move-object/from16 v0, p8

    invoke-interface {v4, v0, v11}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_180

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "callback instance already associated with advertising"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_16b
    move-exception v12

    const-string/jumbo v4, "BluetoothLeAdvertiser"

    const-string/jumbo v5, "Failed to get Bluetooth gatt - "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    return-void

    :cond_180
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    :try_start_18e
    invoke-interface/range {v3 .. v11}, Landroid/bluetooth/IBluetoothGatt;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V
    :try_end_191
    .catch Landroid/os/RemoteException; {:try_start_18e .. :try_end_191} :catch_192

    return-void

    :catch_192
    move-exception v12

    const-string/jumbo v4, "BluetoothLeAdvertiser"

    const-string/jumbo v5, "Failed to start advertising set - "

    invoke-static {v4, v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 17

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .registers 18

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .registers 6

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v2

    if-nez p1, :cond_11

    :try_start_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callback cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_11
    :try_start_11
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSetCallback;
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_e

    if-nez v0, :cond_1d

    monitor-exit v2

    return-void

    :cond_1d
    :try_start_1d
    invoke-virtual {p0, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_e

    monitor-exit v2

    return-void
.end method

.method public stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .registers 10

    :try_start_0
    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v3

    const-string/jumbo v5, "BluetoothLeAdvertiser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopAdvertisingSet(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_38

    const/16 v5, 0xc

    if-eq v3, v5, :cond_4c

    const/16 v5, 0xf

    if-eq v3, v5, :cond_4c

    const/16 v5, 0xd

    if-eq v3, v5, :cond_4c

    const/16 v5, 0xb

    if-eq v3, v5, :cond_4c

    :cond_38
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "BT Adapter is not turned ON"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_41} :catch_41

    :catch_41
    move-exception v1

    const-string/jumbo v5, "BluetoothLeAdvertiser"

    const-string/jumbo v6, "Failed to stop Advertisement:"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_4c
    if-nez p1, :cond_57

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "callback cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_57
    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/le/IAdvertisingSetCallback;

    if-nez v4, :cond_62

    return-void

    :cond_62
    :try_start_62
    iget-object v5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v5}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_6b} :catch_6c

    :goto_6b
    return-void

    :catch_6c
    move-exception v0

    const-string/jumbo v5, "BluetoothLeAdvertiser"

    const-string/jumbo v6, "Failed to stop advertising - "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6b
.end method

.method wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .registers 4

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V

    return-object v0
.end method

.method wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;
    .registers 4

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-object v0
.end method
