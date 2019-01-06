.class public final Lcom/android/internal/util/BitUtils;
.super Ljava/lang/Object;
.source "BitUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitAt(I)J
    .registers 3

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    return-wide v0
.end method

.method public static bytesToBEInt([B)I
    .registers 3

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static bytesToLEInt([B)I
    .registers 2

    invoke-static {p0}, Lcom/android/internal/util/BitUtils;->bytesToBEInt([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static flagsToString(ILjava/util/function/IntFunction;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/IntFunction",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-eqz p0, :cond_25

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v2, v4, v3

    not-int v3, v2

    and-int/2addr p0, v3

    if-lez v1, :cond_19

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-interface {p1, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_25
    const-string/jumbo v3, "["

    const-string/jumbo v4, "]"

    invoke-static {v0, v3, v4}, Landroid/text/TextUtils;->wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getUint16(Ljava/nio/ByteBuffer;I)I
    .registers 3

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v0

    return v0
.end method

.method public static getUint32(Ljava/nio/ByteBuffer;I)J
    .registers 4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUint8(Ljava/nio/ByteBuffer;I)I
    .registers 3

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v0

    return v0
.end method

.method public static isBitSet(JI)Z
    .registers 7

    invoke-static {p2}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static maskedEquals(BBB)Z
    .registers 5

    and-int v0, p0, p2

    and-int v1, p1, p2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static maskedEquals(JJJ)Z
    .registers 10

    and-long v0, p0, p4

    and-long v2, p2, p4

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 9

    if-nez p2, :cond_7

    invoke-static {p0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_7
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static maskedEquals([B[B[B)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_b

    :cond_6
    if-ne p0, p1, :cond_9

    :goto_8
    return v1

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_b
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_1d

    move v3, v1

    :goto_10
    const-string/jumbo v4, "Inputs must be of same size"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p2, :cond_1f

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    :cond_1d
    move v3, v2

    goto :goto_10

    :cond_1f
    array-length v3, p0

    array-length v4, p2

    if-ne v3, v4, :cond_3b

    move v3, v1

    :goto_24
    const-string/jumbo v4, "Mask must be of same size as inputs"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_2b
    array-length v3, p2

    if-ge v0, v3, :cond_40

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    aget-byte v5, p2, v0

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(BBB)Z

    move-result v3

    if-nez v3, :cond_3d

    return v2

    :cond_3b
    move v3, v2

    goto :goto_24

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_40
    return v1
.end method

.method public static packBits([I)J
    .registers 9

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    array-length v4, p0

    :goto_4
    if-ge v1, v4, :cond_f

    aget v0, p0, v1

    const/4 v5, 0x1

    shl-int/2addr v5, v0

    int-to-long v6, v5

    or-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-wide v2
.end method

.method public static put(Ljava/nio/ByteBuffer;I[B)V
    .registers 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public static uint16(S)I
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static uint32(I)J
    .registers 5

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static uint8(B)I
    .registers 2

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static unpackBits(J)[I
    .registers 12

    const-wide/16 v8, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    new-array v3, v4, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    :goto_b
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-lez v5, :cond_21

    and-long v6, p0, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_22

    add-int/lit8 v1, v2, 0x1

    aput v0, v3, v2

    :goto_1b
    const/4 v5, 0x1

    shr-long/2addr p0, v5

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_b

    :cond_21
    return-object v3

    :cond_22
    move v1, v2

    goto :goto_1b
.end method
