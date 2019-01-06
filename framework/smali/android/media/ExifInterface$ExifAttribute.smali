.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method static synthetic -wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(II[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    iput-object p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/media/ExifInterface$ExifAttribute;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method public static createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_2a

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2a

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-gt v2, v3, :cond_2a

    new-array v1, v5, [B

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v1

    invoke-direct {v2, v5, v3, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2

    :cond_2a
    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v5, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 9

    const/16 v6, 0xc

    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v1

    aget v1, v1, v6

    array-length v4, p0

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    array-length v4, p0

    :goto_15
    if-ge v1, v4, :cond_1f

    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1f
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v4, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 8

    const/16 v5, 0x9

    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v5

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    array-length v3, p0

    :goto_15
    if-ge v2, v3, :cond_1f

    aget v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1f
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 9

    const/16 v6, 0xa

    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v6

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    array-length v3, p0

    :goto_15
    if-ge v2, v3, :cond_28

    aget-object v1, p0, v2

    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_28
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v2, v0

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 9

    const/4 v6, 0x4

    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v1

    aget v1, v1, v6

    array-length v4, p0

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    array-length v4, p0

    :goto_14
    if-ge v1, v4, :cond_1f

    aget-wide v2, p0, v1

    long-to-int v5, v2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1f
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v4, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 9

    const/4 v6, 0x5

    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v6

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    array-length v3, p0

    :goto_14
    if-ge v2, v3, :cond_27

    aget-object v1, p0, v2

    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_27
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 8

    const/4 v5, 0x3

    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v5

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    array-length v3, p0

    :goto_14
    if-ge v2, v3, :cond_1f

    aget v1, p0, v2

    int-to-short v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1f
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 24

    :try_start_0
    new-instance v12, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v12, v3}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v3, :pswitch_data_1a0

    const/4 v3, 0x0

    return-object v3

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    if-ltz v3, :cond_50

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    const/4 v8, 0x1

    if-gt v3, v8, :cond_50

    new-instance v3, Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [C

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-byte v19, v19, v20

    add-int/lit8 v19, v19, 0x30

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    aput-char v19, v8, v20

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([C)V

    return-object v3

    :cond_50
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v8, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v3

    :pswitch_60
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v8

    array-length v8, v8

    if-lt v3, v8, :cond_8b

    const/4 v13, 0x1

    const/4 v10, 0x0

    :goto_6e
    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v3

    array-length v3, v3

    if-ge v10, v3, :cond_84

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v3, v3, v10

    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v8

    aget-byte v8, v8, v10

    if-eq v3, v8, :cond_a3

    const/4 v13, 0x0

    :cond_84
    if-eqz v13, :cond_8b

    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v3

    array-length v11, v3

    :cond_8b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    :goto_90
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v11, v3, :cond_9e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v3, v11

    if-nez v2, :cond_a6

    :cond_9e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_a3
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    :cond_a6
    const/16 v3, 0x20

    if-lt v2, v3, :cond_b1

    int-to-char v3, v2

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_ae
    add-int/lit8 v11, v11, 0x1

    goto :goto_90

    :cond_b1
    const/16 v3, 0x3f

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b6} :catch_b7

    goto :goto_ae

    :catch_b7
    move-exception v9

    const-string/jumbo v3, "ExifInterface"

    const-string/jumbo v8, "IOException occurred during reading a value"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3

    :pswitch_c3
    :try_start_c3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    const/4 v10, 0x0

    :goto_cc
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_db

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v16, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_cc

    :cond_db
    return-object v16

    :pswitch_dc
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [J

    move-object/from16 v17, v0

    const/4 v10, 0x0

    :goto_e5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_f4

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v20

    aput-wide v20, v17, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_e5

    :cond_f4
    return-object v17

    :pswitch_f5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v18, v0

    const/4 v10, 0x0

    :goto_fe
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_117

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v18, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_fe

    :cond_117
    return-object v18

    :pswitch_118
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    const/4 v10, 0x0

    :goto_121
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_130

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    aput v3, v16, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_121

    :cond_130
    return-object v16

    :pswitch_131
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    const/4 v10, 0x0

    :goto_13a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_149

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    aput v3, v16, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_13a

    :cond_149
    return-object v16

    :pswitch_14a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v18, v0

    const/4 v10, 0x0

    :goto_153
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_16e

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    int-to-long v6, v3

    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v18, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_153

    :cond_16e
    return-object v18

    :pswitch_16f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    const/4 v10, 0x0

    :goto_176
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_188

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    aput-wide v20, v15, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_176

    :cond_188
    return-object v15

    :pswitch_189
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    const/4 v10, 0x0

    :goto_190
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_19f

    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v20

    aput-wide v20, v15, v10
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_19c} :catch_b7

    add-int/lit8 v10, v10, 0x1

    goto :goto_190

    :cond_19f
    return-object v15

    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_60
        :pswitch_c3
        :pswitch_dc
        :pswitch_f5
        :pswitch_17
        :pswitch_60
        :pswitch_118
        :pswitch_131
        :pswitch_14a
        :pswitch_16f
        :pswitch_189
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_11

    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "NULL can\'t be converted to a double value"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_11
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1c

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    return-wide v6

    :cond_1c
    instance-of v5, v4, [J

    if-eqz v5, :cond_33

    move-object v2, v4

    check-cast v2, [J

    array-length v5, v2

    if-ne v5, v7, :cond_2a

    aget-wide v6, v2, v6

    long-to-double v6, v6

    return-wide v6

    :cond_2a
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_33
    instance-of v5, v4, [I

    if-eqz v5, :cond_4a

    move-object v1, v4

    check-cast v1, [I

    array-length v5, v1

    if-ne v5, v7, :cond_41

    aget v5, v1, v6

    int-to-double v6, v5

    return-wide v6

    :cond_41
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4a
    instance-of v5, v4, [D

    if-eqz v5, :cond_60

    move-object v0, v4

    check-cast v0, [D

    array-length v5, v0

    if-ne v5, v7, :cond_57

    aget-wide v6, v0, v6

    return-wide v6

    :cond_57
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_60
    instance-of v5, v4, [Landroid/media/ExifInterface$Rational;

    if-eqz v5, :cond_7a

    move-object v3, v4

    check-cast v3, [Landroid/media/ExifInterface$Rational;

    array-length v5, v3

    if-ne v5, v7, :cond_71

    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v6

    return-wide v6

    :cond_71
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7a
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "Couldn\'t find a double value"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "NULL can\'t be converted to a integer value"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_11
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1c

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_1c
    instance-of v3, v2, [J

    if-eqz v3, :cond_33

    move-object v1, v2

    check-cast v1, [J

    array-length v3, v1

    if-ne v3, v5, :cond_2a

    aget-wide v4, v1, v4

    long-to-int v3, v4

    return v3

    :cond_2a
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "There are more than one component"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_33
    instance-of v3, v2, [I

    if-eqz v3, :cond_49

    move-object v0, v2

    check-cast v0, [I

    array-length v3, v0

    if-ne v3, v5, :cond_40

    aget v3, v0, v4

    return v3

    :cond_40
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "There are more than one component"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_49
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "Couldn\'t find a integer value"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    return-object v8

    :cond_8
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_f

    check-cast v6, Ljava/lang/String;

    return-object v6

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v7, v6, [J

    if-eqz v7, :cond_37

    move-object v2, v6

    check-cast v2, [J

    const/4 v4, 0x0

    :goto_1c
    array-length v7, v2

    if-ge v4, v7, :cond_32

    aget-wide v8, v2, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    array-length v8, v2

    if-eq v7, v8, :cond_2f

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_37
    instance-of v7, v6, [I

    if-eqz v7, :cond_5a

    move-object v1, v6

    check-cast v1, [I

    const/4 v4, 0x0

    :goto_3f
    array-length v7, v1

    if-ge v4, v7, :cond_55

    aget v7, v1, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    array-length v8, v1

    if-eq v7, v8, :cond_52

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_5a
    instance-of v7, v6, [D

    if-eqz v7, :cond_7d

    move-object v0, v6

    check-cast v0, [D

    const/4 v4, 0x0

    :goto_62
    array-length v7, v0

    if-ge v4, v7, :cond_78

    aget-wide v8, v0, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    array-length v8, v0

    if-eq v7, v8, :cond_75

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    :cond_78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_7d
    instance-of v7, v6, [Landroid/media/ExifInterface$Rational;

    if-eqz v7, :cond_ae

    move-object v3, v6

    check-cast v3, [Landroid/media/ExifInterface$Rational;

    const/4 v4, 0x0

    :goto_85
    array-length v7, v3

    if-ge v4, v7, :cond_a9

    aget-object v7, v3, v4

    iget-wide v8, v7, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v7, v3, v4

    iget-wide v8, v7, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    array-length v8, v3

    if-eq v7, v8, :cond_a6

    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a6
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    :cond_a9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_ae
    return-object v8
.end method

.method public size()I
    .registers 3

    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-get3()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
