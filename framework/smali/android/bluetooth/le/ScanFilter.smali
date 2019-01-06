.class public final Landroid/bluetooth/le/ScanFilter;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/ScanFilter$1;,
        Landroid/bluetooth/le/ScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/bluetooth/le/ScanFilter;


# instance fields
.field private final mDeviceAddress:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerData:[B

.field private final mManufacturerDataMask:[B

.field private final mManufacturerId:I

.field private final mServiceData:[B

.field private final mServiceDataMask:[B

.field private final mServiceDataUuid:Landroid/os/ParcelUuid;

.field private final mServiceUuid:Landroid/os/ParcelUuid;

.field private final mServiceUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/le/ScanFilter;->EMPTY:Landroid/bluetooth/le/ScanFilter;

    new-instance v0, Landroid/bluetooth/le/ScanFilter$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    iput-object p3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iput-object p4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iput-object p2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iput-object p5, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iput-object p6, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    iput-object p7, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    iput p8, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    iput-object p9, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    iput-object p10, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLandroid/bluetooth/le/ScanFilter;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/bluetooth/le/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V

    return-void
.end method

.method private matchesPartialData([B[B[B)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p3, :cond_8

    array-length v1, p3

    array-length v2, p1

    if-ge v1, v2, :cond_9

    :cond_8
    return v4

    :cond_9
    if-nez p2, :cond_1a

    const/4 v0, 0x0

    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_19

    aget-byte v1, p3, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_16

    return v4

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    return v5

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    array-length v1, p1

    if-ge v0, v1, :cond_2e

    aget-byte v1, p2, v0

    aget-byte v2, p3, v0

    and-int/2addr v1, v2

    aget-byte v2, p2, v0

    aget-byte v3, p1, v0

    and-int/2addr v2, v3

    if-eq v1, v2, :cond_2b

    return v4

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2e
    return v5
.end method

.method private static matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 4

    invoke-static {p2, p0, p1}, Lcom/android/internal/util/BitUtils;->maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public static matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_5

    return v6

    :cond_5
    if-nez p2, :cond_8

    return v5

    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    if-nez p1, :cond_2a

    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {p0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-static {v3, v2, v4}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v3

    if-eqz v3, :cond_c

    return v6

    :cond_2a
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    goto :goto_1b

    :cond_2f
    return v5
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    :cond_11
    return v1

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    iget v3, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    if-ne v2, v3, :cond_73

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-static {v2, v3}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v3, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iget-object v2, v0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_73
    return v1
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerData()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    return-object v0
.end method

.method public getManufacturerDataMask()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    return-object v0
.end method

.method public getManufacturerId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    return v0
.end method

.method public getServiceData()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    return-object v0
.end method

.method public getServiceDataMask()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuidMask()Landroid/os/ParcelUuid;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAllFieldsEmpty()Z
    .registers 2

    sget-object v0, Landroid/bluetooth/le/ScanFilter;->EMPTY:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, p0}, Landroid/bluetooth/le/ScanFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public matches(Landroid/bluetooth/le/ScanResult;)Z
    .registers 8

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return v5

    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_1d

    if-eqz v0, :cond_1c

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    :cond_1c
    return v5

    :cond_1d
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    if-nez v1, :cond_34

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v2, :cond_2b

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_2c

    :cond_2b
    return v5

    :cond_2c
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-nez v2, :cond_2b

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-nez v2, :cond_2b

    :cond_34
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v2, :cond_47

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_47

    return v5

    :cond_47
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/bluetooth/le/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5c

    return v5

    :cond_5c
    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_71

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    iget-object v4, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v4}, Landroid/bluetooth/le/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v2

    if-nez v2, :cond_71

    return v5

    :cond_71
    iget v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    if-ltz v2, :cond_86

    iget-object v2, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    iget-object v3, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    iget v4, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-virtual {v1, v4}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Landroid/bluetooth/le/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v2

    if-nez v2, :cond_86

    return v5

    :cond_86
    const/4 v2, 0x1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BluetoothLeScanFilter [mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServiceDataUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mServiceDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mManufacturerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mManufacturerDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_b8

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-nez v0, :cond_bb

    move v0, v1

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_24
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_be

    move v0, v1

    :goto_29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_c1

    move v0, v1

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_46
    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_c4

    move v0, v1

    :goto_4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_85

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-nez v0, :cond_c6

    move v0, v1

    :goto_5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    if-eqz v0, :cond_85

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    if-nez v0, :cond_c8

    move v0, v1

    :goto_73
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    if-eqz v0, :cond_85

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_85
    iget v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-nez v0, :cond_ca

    move v0, v1

    :goto_8f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    if-eqz v0, :cond_b7

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    if-nez v0, :cond_cc

    :goto_a5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    if-eqz v0, :cond_b7

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/le/ScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_b7
    return-void

    :cond_b8
    move v0, v2

    goto/16 :goto_7

    :cond_bb
    move v0, v2

    goto/16 :goto_18

    :cond_be
    move v0, v2

    goto/16 :goto_29

    :cond_c1
    move v0, v2

    goto/16 :goto_3a

    :cond_c4
    move v0, v2

    goto :goto_4b

    :cond_c6
    move v0, v2

    goto :goto_5c

    :cond_c8
    move v0, v2

    goto :goto_73

    :cond_ca
    move v0, v2

    goto :goto_8f

    :cond_cc
    move v1, v2

    goto :goto_a5
.end method
