.class public final Lcom/android/server/usb/descriptors/ByteStream;
.super Ljava/lang/Object;
.source "ByteStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteStream"


# instance fields
.field private final mBytes:[B

.field private mIndex:I

.field private mReadCount:I


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_b
    iput-object p1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    return-void
.end method


# virtual methods
.method public advance(I)V
    .registers 8

    if-gez p1, :cond_8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_8
    iget v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    int-to-long v2, v2

    int-to-long v4, p1

    add-long v0, v2, v4

    iget-object v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_21

    iget v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    return-void

    :cond_21
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public available()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getByte()B
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_17

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    aget-byte v0, v0, v1

    return v0

    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getReadCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    return v0
.end method

.method public getUnsignedByte()I
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_19

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public peekByte()B
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    return v0

    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public resetReadCount()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    return-void
.end method

.method public reverse(I)V
    .registers 3

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    if-lt v0, p1, :cond_17

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public unpackUsbInt()I
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_21

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v3

    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    return v4

    :cond_21
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public unpackUsbShort()I
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_13

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    return v2

    :cond_13
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public unpackUsbTriple()I
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v2

    shl-int/lit8 v3, v2, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    return v3

    :cond_1a
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method
