.class final Landroid/bluetooth/le/AdvertiseData$1;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/bluetooth/le/AdvertiseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;
    .registers 18

    new-instance v1, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_27

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_17
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_27

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/ParcelUuid;

    invoke-virtual {v1, v11}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    goto :goto_17

    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v2, 0x0

    :goto_2c
    if-ge v2, v6, :cond_4a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_47

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-array v3, v4, [B

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v1, v5, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_4a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const/4 v2, 0x0

    :goto_4f
    if-ge v2, v9, :cond_77

    const-class v14, Landroid/os/ParcelUuid;

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelUuid;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_74

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-array v7, v8, [B

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual {v1, v10, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_77
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_92

    const/4 v14, 0x1

    :goto_7f
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_94

    const/4 v14, 0x1

    :goto_8a
    invoke-virtual {v1, v14}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-virtual {v1}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v14

    return-object v14

    :cond_92
    const/4 v14, 0x0

    goto :goto_7f

    :cond_94
    const/4 v14, 0x0

    goto :goto_8a
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/bluetooth/le/AdvertiseData;
    .registers 3

    new-array v0, p1, [Landroid/bluetooth/le/AdvertiseData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->newArray(I)[Landroid/bluetooth/le/AdvertiseData;

    move-result-object v0

    return-object v0
.end method
