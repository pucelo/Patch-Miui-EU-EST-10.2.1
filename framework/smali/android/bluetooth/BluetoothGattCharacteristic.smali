.class public Landroid/bluetooth/BluetoothGattCharacteristic;
.super Ljava/lang/Object;
.source "BluetoothGattCharacteristic.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothGattCharacteristic$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_FLOAT:I = 0x34

.field public static final FORMAT_SFLOAT:I = 0x32

.field public static final FORMAT_SINT16:I = 0x22

.field public static final FORMAT_SINT32:I = 0x24

.field public static final FORMAT_SINT8:I = 0x21

.field public static final FORMAT_UINT16:I = 0x12

.field public static final FORMAT_UINT32:I = 0x14

.field public static final FORMAT_UINT8:I = 0x11

.field public static final PERMISSION_READ:I = 0x1

.field public static final PERMISSION_READ_ENCRYPTED:I = 0x2

.field public static final PERMISSION_READ_ENCRYPTED_MITM:I = 0x4

.field public static final PERMISSION_WRITE:I = 0x10

.field public static final PERMISSION_WRITE_ENCRYPTED:I = 0x20

.field public static final PERMISSION_WRITE_ENCRYPTED_MITM:I = 0x40

.field public static final PERMISSION_WRITE_SIGNED:I = 0x80

.field public static final PERMISSION_WRITE_SIGNED_MITM:I = 0x100

.field public static final PROPERTY_BROADCAST:I = 0x1

.field public static final PROPERTY_EXTENDED_PROPS:I = 0x80

.field public static final PROPERTY_INDICATE:I = 0x20

.field public static final PROPERTY_NOTIFY:I = 0x10

.field public static final PROPERTY_READ:I = 0x2

.field public static final PROPERTY_SIGNED_WRITE:I = 0x40

.field public static final PROPERTY_WRITE:I = 0x8

.field public static final PROPERTY_WRITE_NO_RESPONSE:I = 0x4

.field public static final WRITE_TYPE_DEFAULT:I = 0x2

.field public static final WRITE_TYPE_NO_RESPONSE:I = 0x1

.field public static final WRITE_TYPE_SIGNED:I = 0x4


# instance fields
.field protected mDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstance:I

.field protected mKeySize:I

.field protected mPermissions:I

.field protected mProperties:I

.field protected mService:Landroid/bluetooth/BluetoothGattService;

.field protected mUuid:Ljava/util/UUID;

.field protected mValue:[B

.field protected mWriteType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothGattCharacteristic$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattCharacteristic$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothGattCharacteristic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    invoke-direct/range {p0 .. p5}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x10

    iput v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    sget-object v3, Landroid/bluetooth/BluetoothGattDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5a

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothGattDescriptor;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_5a
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;II)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;III)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V

    return-void
.end method

.method private bytesToFloat(BB)F
    .registers 11

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v2

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    const/16 v3, 0xc

    invoke-direct {p0, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v1

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v2

    shr-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    int-to-double v2, v1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private bytesToFloat(BBBB)F
    .registers 13

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/16 v2, 0x18

    invoke-direct {p0, v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, p4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method private getTypeLen(I)I
    .registers 3

    and-int/lit8 v0, p1, 0xf

    return v0
.end method

.method private initCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;III)V
    .registers 7

    iput-object p2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    iput p3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    iput p4, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    iput p5, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    goto :goto_1d
.end method

.method private intToSignedBits(II)I
    .registers 6

    const/4 v2, 0x1

    if-gez p1, :cond_10

    add-int/lit8 v0, p2, -0x1

    shl-int v0, v2, v0

    add-int/lit8 v1, p2, -0x1

    shl-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    add-int p1, v0, v1

    :cond_10
    return p1
.end method

.method private unsignedByteToInt(B)I
    .registers 3

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private unsignedBytesToInt(BB)I
    .registers 5

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method private unsignedBytesToInt(BBBB)I
    .registers 7

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-direct {p0, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method private unsignedToSigned(II)I
    .registers 6

    const/4 v2, 0x1

    add-int/lit8 v0, p2, -0x1

    shl-int v0, v2, v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_16

    add-int/lit8 v0, p2, -0x1

    shl-int v0, v2, v0

    add-int/lit8 v1, p2, -0x1

    shl-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    sub-int/2addr v0, v1

    mul-int/lit8 p1, v0, -0x1

    :cond_16
    return p1
.end method


# virtual methods
.method public addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Landroid/bluetooth/BluetoothGattDescriptor;->setCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const/4 v0, 0x1

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;
    .registers 5

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    :cond_1d
    const/4 v2, 0x0

    return-object v2
.end method

.method getDescriptor(Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .registers 6

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v2

    if-ne v2, p2, :cond_6

    return-object v0

    :cond_23
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public getFloatValue(II)Ljava/lang/Float;
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    if-le v0, v1, :cond_c

    return-object v2

    :cond_c
    packed-switch p1, :pswitch_data_42

    :pswitch_f
    return-object v2

    :pswitch_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BB)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_23
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->bytesToFloat(BBBB)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_data_42
    .packed-switch 0x32
        :pswitch_10
        :pswitch_f
        :pswitch_23
    .end packed-switch
.end method

.method public getInstanceId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    return v0
.end method

.method public getIntValue(II)Ljava/lang/Integer;
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v1, v1

    if-le v0, v1, :cond_c

    return-object v2

    :cond_c
    sparse-switch p1, :sswitch_data_a0

    return-object v2

    :sswitch_10
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_1d
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_30
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_4f
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedByteToInt(B)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_62
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BB)I

    move-result v0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_7b
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v3, p2, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v4, p2, 0x3

    aget-byte v3, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedBytesToInt(BBBB)I

    move-result v0

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->unsignedToSigned(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :sswitch_data_a0
    .sparse-switch
        0x11 -> :sswitch_10
        0x12 -> :sswitch_1d
        0x14 -> :sswitch_30
        0x21 -> :sswitch_4f
        0x22 -> :sswitch_62
        0x24 -> :sswitch_7b
    .end sparse-switch
.end method

.method public getKeySize()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    return v0
.end method

.method public getPermissions()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    return v0
.end method

.method public getProperties()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    return v0
.end method

.method public getService()Landroid/bluetooth/BluetoothGattService;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    if-le p1, v2, :cond_b

    :cond_a
    return-object v3

    :cond_b
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    sub-int/2addr v2, p1

    new-array v1, v2, [B

    const/4 v0, 0x0

    :goto_12
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    sub-int/2addr v2, p1

    if-eq v0, v2, :cond_23

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public getUuid()Ljava/util/UUID;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public getValue()[B
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    return-object v0
.end method

.method public getWriteType()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    return v0
.end method

.method public setInstanceId(I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    return-void
.end method

.method public setKeySize(I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    return-void
.end method

.method setService(Landroid/bluetooth/BluetoothGattService;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mService:Landroid/bluetooth/BluetoothGattService;

    return-void
.end method

.method public setValue(III)Z
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v2

    add-int v0, p3, v2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-nez v2, :cond_f

    new-array v2, v0, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    :cond_f
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    if-le v0, v2, :cond_15

    return v3

    :cond_15
    sparse-switch p2, :sswitch_data_72

    return v3

    :sswitch_19
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    :sswitch_1f
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p3

    :goto_26
    const/4 v2, 0x1

    return v2

    :sswitch_28
    const/16 v2, 0x10

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    :sswitch_2e
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p3, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p3

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    move p3, v1

    goto :goto_26

    :sswitch_42
    const/16 v2, 0x20

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    :sswitch_48
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p3, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p3

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 p3, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p3, 0x1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p3

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    move p3, v1

    goto :goto_26

    :sswitch_data_72
    .sparse-switch
        0x11 -> :sswitch_1f
        0x12 -> :sswitch_2e
        0x14 -> :sswitch_48
        0x21 -> :sswitch_19
        0x22 -> :sswitch_28
        0x24 -> :sswitch_42
    .end sparse-switch
.end method

.method public setValue(IIII)Z
    .registers 10

    const/4 v3, 0x0

    invoke-direct {p0, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getTypeLen(I)I

    move-result v2

    add-int v0, p4, v2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    if-nez v2, :cond_f

    new-array v2, v0, [B

    iput-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    :cond_f
    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    array-length v2, v2

    if-le v0, v2, :cond_15

    return v3

    :cond_15
    packed-switch p3, :pswitch_data_7e

    :pswitch_18
    return v3

    :pswitch_19
    const/16 v2, 0xc

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    const/4 v2, 0x4

    invoke-direct {p0, p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p4, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p4

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    shr-int/lit8 v3, p1, 0x8

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v3, v2, v1

    and-int/lit8 v4, p2, 0xf

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    move p4, v1

    :goto_44
    const/4 v2, 0x1

    return v2

    :pswitch_46
    const/16 v2, 0x18

    invoke-direct {p0, p1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p1

    const/16 v2, 0x8

    invoke-direct {p0, p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->intToSignedBits(II)I

    move-result p2

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p4, 0x1

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p4

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 p4, v1, 0x1

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    add-int/lit8 v1, p4, 0x1

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, p4

    iget-object v2, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    aget-byte v3, v2, v1

    and-int/lit16 v4, p2, 0xff

    int-to-byte v4, v4

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    move p4, v1

    goto :goto_44

    :pswitch_data_7e
    .packed-switch 0x32
        :pswitch_19
        :pswitch_18
        :pswitch_46
    .end packed-switch
.end method

.method public setValue(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    const/4 v0, 0x1

    return v0
.end method

.method public setValue([B)Z
    .registers 3

    iput-object p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mValue:[B

    const/4 v0, 0x1

    return v0
.end method

.method public setWriteType(I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mInstance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mPermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mKeySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mWriteType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothGattCharacteristic;->mDescriptors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
