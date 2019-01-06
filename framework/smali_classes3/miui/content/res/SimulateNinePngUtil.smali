.class public Lmiui/content/res/SimulateNinePngUtil;
.super Ljava/lang/Object;
.source "SimulateNinePngUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;
    }
.end annotation


# static fields
.field private static PNG_HEAD_FORMAT:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lmiui/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    return-void

    :array_a
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computePatchColor([B)I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private static convertByteToIntByBigEndian([BI)I
    .registers 4

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v0, v1, 0x0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private static convertBytesFromIntByBigEndian([BII)V
    .registers 5

    add-int/lit8 v0, p1, 0x0

    ushr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public static convertIntoNinePngData([B)[B
    .registers 12

    const/4 v10, 0x0

    const/16 v8, 0x29

    const/16 v9, 0x21

    if-eqz p0, :cond_a

    array-length v7, p0

    if-ge v7, v8, :cond_b

    :cond_a
    return-object v10

    :cond_b
    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->isPngFormat([B)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_a

    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->isNinePngFormat([B)Z

    move-result v7

    if-eqz v7, :cond_1a

    return-object p0

    :cond_1a
    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->getNinePatchChunk([B)[B

    move-result-object v5

    array-length v7, p0

    add-int/lit8 v7, v7, 0xc

    array-length v8, v5

    add-int/2addr v7, v8

    new-array v3, v7, [B

    const/16 v6, 0x21

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v9, :cond_31

    aget-byte v7, p0, v4

    aput-byte v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_31
    array-length v7, v5

    invoke-static {v3, v9, v7}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    invoke-static {v3}, Lmiui/content/res/SimulateNinePngUtil;->fillNinePngFormatMark([B)V

    const/16 v0, 0x29

    const/4 v4, 0x0

    :goto_3b
    array-length v7, v5

    if-ge v4, v7, :cond_47

    add-int/lit8 v7, v4, 0x29

    aget-byte v8, v5, v4

    aput-byte v8, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :cond_47
    array-length v7, v5

    add-int/lit8 v2, v7, 0x29

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    array-length v7, v5

    add-int/lit8 v7, v7, 0x4

    const/16 v8, 0x25

    invoke-virtual {v1, v3, v8, v7}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-static {v3, v2, v7}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    const/4 v4, 0x0

    :goto_60
    array-length v7, p0

    add-int/lit8 v7, v7, -0x21

    if-ge v4, v7, :cond_71

    add-int/lit8 v7, v2, 0x4

    add-int/2addr v7, v4

    add-int/lit8 v8, v4, 0x21

    aget-byte v8, p0, v8

    aput-byte v8, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_71
    return-object v3
.end method

.method public static convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 8

    const/4 v3, 0x0

    const/16 v6, 0x29

    :try_start_3
    new-array v5, v6, [B

    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_19

    const/4 v5, 0x0

    :cond_c
    :goto_c
    invoke-static {v5}, Lmiui/content/res/SimulateNinePngUtil;->convertIntoNinePngData([B)[B

    move-result-object v2

    if-eqz v2, :cond_18

    new-instance v4, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;

    invoke-direct {v4, p0, v2}, Lmiui/content/res/SimulateNinePngUtil$NinePathInputStream;-><init>(Ljava/io/InputStream;[B)V

    move-object v3, v4

    :cond_18
    :goto_18
    return-object v3

    :cond_19
    array-length v6, v5

    if-ge v1, v6, :cond_c

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_21

    move-result-object v5

    goto :goto_c

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method private static fillNinePngFormatMark([B)V
    .registers 3

    const/16 v0, 0x6e

    const/16 v1, 0x25

    aput-byte v0, p0, v1

    const/16 v0, 0x70

    const/16 v1, 0x26

    aput-byte v0, p0, v1

    const/16 v0, 0x54

    const/16 v1, 0x27

    aput-byte v0, p0, v1

    const/16 v0, 0x63

    const/16 v1, 0x28

    aput-byte v0, p0, v1

    return-void
.end method

.method private static getNinePatchChunk([B)[B
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x10

    invoke-static {p0, v3}, Lmiui/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {p0, v3}, Lmiui/content/res/SimulateNinePngUtil;->convertByteToIntByBigEndian([BI)I

    move-result v1

    const/16 v3, 0x34

    new-array v0, v3, [B

    const/4 v3, 0x0

    aput-byte v4, v0, v3

    aput-byte v5, v0, v4

    aput-byte v5, v0, v5

    const/4 v3, 0x3

    aput-byte v4, v0, v3

    const/16 v3, 0x24

    invoke-static {v0, v3, v2}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    const/16 v3, 0x2c

    invoke-static {v0, v3, v1}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    invoke-static {p0}, Lmiui/content/res/SimulateNinePngUtil;->computePatchColor([B)I

    move-result v3

    const/16 v4, 0x30

    invoke-static {v0, v4, v3}, Lmiui/content/res/SimulateNinePngUtil;->convertBytesFromIntByBigEndian([BII)V

    return-object v0
.end method

.method private static isNinePngFormat([B)Z
    .registers 5

    const/16 v3, 0x28

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    array-length v1, p0

    if-le v1, v3, :cond_27

    const/16 v1, 0x25

    aget-byte v1, p0, v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_27

    const/16 v1, 0x26

    aget-byte v1, p0, v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_27

    const/16 v1, 0x27

    aget-byte v1, p0, v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_27

    aget-byte v1, p0, v3

    const/16 v2, 0x63

    if-ne v1, v2, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method private static isPngFormat([B)Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lmiui/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    array-length v1, v1

    if-ge v0, v1, :cond_13

    aget-byte v1, p0, v0

    sget-object v2, Lmiui/content/res/SimulateNinePngUtil;->PNG_HEAD_FORMAT:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    const/4 v1, 0x1

    return v1
.end method
