.class public Lcom/miui/whetstone/steganography/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"


# static fields
.field public static final HEADER_SIZE:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToLong([B)J
    .registers 5

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    return-wide v2
.end method

.method public static createHeader(J)[B
    .registers 10

    const/16 v7, 0x5d

    const/16 v6, 0x5b

    const/4 v4, 0x0

    const/16 v5, 0xc

    new-array v1, v5, [B

    const/4 v2, 0x0

    const/4 v2, 0x1

    aput-byte v6, v1, v4

    add-int/lit8 v3, v2, 0x1

    aput-byte v6, v1, v2

    invoke-static {p0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->longToBytes(J)[B

    move-result-object v5

    array-length v6, v5

    :goto_16
    if-ge v4, v6, :cond_22

    aget-byte v0, v5, v4

    add-int/lit8 v2, v3, 0x1

    aput-byte v0, v1, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_16

    :cond_22
    add-int/lit8 v2, v3, 0x1

    aput-byte v7, v1, v3

    add-int/lit8 v3, v2, 0x1

    aput-byte v7, v1, v2

    return-object v1
.end method

.method public static decode(Landroid/graphics/Bitmap;)[B
    .registers 6

    const/16 v4, 0xc

    const/4 v2, 0x0

    invoke-static {p0, v2, v4}, Lcom/miui/whetstone/steganography/BitmapEncoder;->decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B

    move-result-object v0

    const/4 v2, 0x2

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/steganography/BitmapEncoder;->bytesToLong([B)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {p0, v4, v1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B

    move-result-object v2

    return-object v2
.end method

.method private static decodeBitmapToByteArray(Landroid/graphics/Bitmap;II)[B
    .registers 16

    new-array v3, p2, [B

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x3

    new-array v0, v10, [I

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v5, :cond_63

    const/4 v8, 0x0

    :goto_13
    if-ge v8, v7, :cond_5e

    invoke-virtual {p0, v8, v9}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    const/4 v11, 0x0

    aput v10, v0, v11

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    aput v10, v0, v11

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    const/4 v11, 0x2

    aput v10, v0, v11

    const/4 v6, 0x0

    :goto_35
    const/4 v10, 0x3

    if-ge v6, v10, :cond_59

    if-lt v2, p1, :cond_4b

    sub-int v11, v2, p1

    aget v10, v0, v6

    const/4 v12, 0x1

    if-ne v10, v12, :cond_64

    sub-int v10, v2, p1

    aget-byte v10, v3, v10

    const/4 v12, 0x1

    shl-int/2addr v12, v1

    or-int/2addr v10, v12

    int-to-byte v10, v10

    :goto_49
    aput-byte v10, v3, v11

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    const/16 v10, 0x8

    if-ne v1, v10, :cond_54

    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    :cond_54
    sub-int v10, v2, p1

    array-length v11, v3

    if-lt v10, v11, :cond_6e

    :cond_59
    sub-int v10, v2, p1

    array-length v11, v3

    if-lt v10, v11, :cond_71

    :cond_5e
    sub-int v10, v2, p1

    array-length v11, v3

    if-lt v10, v11, :cond_74

    :cond_63
    return-object v3

    :cond_64
    sub-int v10, v2, p1

    aget-byte v10, v3, v10

    const/4 v12, 0x1

    shl-int/2addr v12, v1

    not-int v12, v12

    and-int/2addr v10, v12

    int-to-byte v10, v10

    goto :goto_49

    :cond_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_71
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_74
    add-int/lit8 v9, v9, 0x1

    goto :goto_10
.end method

.method public static encode(Landroid/graphics/Bitmap;[B)Landroid/graphics/Bitmap;
    .registers 6

    array-length v1, p1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/miui/whetstone/steganography/BitmapEncoder;->createHeader(J)[B

    move-result-object v0

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_16

    array-length v1, p1

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x18

    rsub-int/lit8 v2, v2, 0x18

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    :cond_16
    invoke-static {p0, v0, p1}, Lcom/miui/whetstone/steganography/BitmapEncoder;->encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static encodeByteArrayIntoBitmap(Landroid/graphics/Bitmap;[B[B)Landroid/graphics/Bitmap;
    .registers 20

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    filled-new-array/range {v14 .. v16}, [I

    move-result-object v2

    const/4 v7, 0x0

    :goto_1d
    move-object/from16 v0, p1

    array-length v14, v0

    move-object/from16 v0, p2

    array-length v15, v0

    add-int/2addr v14, v15

    if-ge v7, v14, :cond_a7

    const/4 v8, 0x0

    :goto_27
    const/16 v14, 0x8

    if-ge v8, v14, :cond_a3

    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v7, v14, :cond_93

    aget-byte v14, p1, v7

    shr-int/2addr v14, v8

    and-int/lit8 v14, v14, 0x1

    aput v14, v2, v3

    :goto_37
    const/4 v14, 0x2

    if-ne v3, v14, :cond_a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    rem-int/lit8 v14, v10, 0x2

    const/4 v15, 0x0

    aget v15, v2, v15

    rsub-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_57

    add-int/lit8 v10, v10, 0x1

    :cond_57
    rem-int/lit8 v14, v5, 0x2

    const/4 v15, 0x1

    aget v15, v2, v15

    rsub-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_62

    add-int/lit8 v5, v5, 0x1

    :cond_62
    rem-int/lit8 v14, v1, 0x2

    const/4 v15, 0x2

    aget v15, v2, v15

    rsub-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_6d

    add-int/lit8 v1, v1, 0x1

    :cond_6d
    const/16 v14, 0x100

    if-ne v10, v14, :cond_73

    const/16 v10, 0xfe

    :cond_73
    const/16 v14, 0x100

    if-ne v5, v14, :cond_79

    const/16 v5, 0xfe

    :cond_79
    const/16 v14, 0x100

    if-ne v1, v14, :cond_7f

    const/16 v1, 0xfe

    :cond_7f
    const/16 v14, 0xff

    invoke-static {v14, v10, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    invoke-virtual {v9, v12, v13, v14}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v11, :cond_8f

    const/4 v12, 0x0

    add-int/lit8 v13, v13, 0x1

    :cond_8f
    const/4 v3, 0x0

    :goto_90
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    :cond_93
    move-object/from16 v0, p1

    array-length v14, v0

    sub-int v14, v7, v14

    aget-byte v14, p2, v14

    shr-int/2addr v14, v8

    and-int/lit8 v14, v14, 0x1

    aput v14, v2, v3

    goto :goto_37

    :cond_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    :cond_a3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1d

    :cond_a7
    return-object v9
.end method

.method private static longToBytes(J)[B
    .registers 4

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static printBinaryString([B)Ljava/lang/String;
    .registers 7

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    array-length v3, p0

    :goto_5
    if-ge v2, v3, :cond_2b

    aget-byte v0, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2b
    return-object v1
.end method
