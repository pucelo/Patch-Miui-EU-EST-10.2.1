.class public final Landroid/nfc/tech/MifareClassic;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "MifareClassic.java"


# static fields
.field public static final BLOCK_SIZE:I = 0x10

.field public static final KEY_DEFAULT:[B

.field public static final KEY_MIFARE_APPLICATION_DIRECTORY:[B

.field public static final KEY_NFC_FORUM:[B

.field private static final MAX_BLOCK_COUNT:I = 0x100

.field private static final MAX_SECTOR_COUNT:I = 0x28

.field public static final SIZE_1K:I = 0x400

.field public static final SIZE_2K:I = 0x800

.field public static final SIZE_4K:I = 0x1000

.field public static final SIZE_MINI:I = 0x140

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_CLASSIC:I = 0x0

.field public static final TYPE_PLUS:I = 0x1

.field public static final TYPE_PRO:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mIsEmulated:Z

.field private mSize:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x6

    new-array v0, v1, [B

    fill-array-data v0, :array_18

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_20

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_MIFARE_APPLICATION_DIRECTORY:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_28

    sput-object v0, Landroid/nfc/tech/MifareClassic;->KEY_NFC_FORUM:[B

    return-void

    nop

    :array_18
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    nop

    :array_20
    .array-data 1
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
    .end array-data

    nop

    :array_28
    .array-data 1
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
        -0x2dt
        -0x9t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v6, 0x800

    const/16 v5, 0x400

    const/16 v4, 0x1000

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v0

    iput-boolean v2, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v1

    sparse-switch v1, :sswitch_data_72

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tag incorrectly enumerated as MIFARE Classic, SAK = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_38
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    :goto_3c
    return-void

    :sswitch_3d
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    const/16 v1, 0x140

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_3c

    :sswitch_44
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_3c

    :sswitch_49
    iput v3, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_3c

    :sswitch_4e
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_3c

    :sswitch_53
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v6, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_3c

    :sswitch_58
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    iput-boolean v3, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_3c

    :sswitch_5f
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    iput-boolean v3, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    goto :goto_3c

    :sswitch_66
    iput v2, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v5, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_3c

    :sswitch_6b
    const/4 v1, 0x2

    iput v1, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    iput v4, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    goto :goto_3c

    nop

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_38
        0x8 -> :sswitch_38
        0x9 -> :sswitch_3d
        0x10 -> :sswitch_44
        0x11 -> :sswitch_49
        0x18 -> :sswitch_4e
        0x19 -> :sswitch_53
        0x28 -> :sswitch_58
        0x38 -> :sswitch_5f
        0x88 -> :sswitch_66
        0x98 -> :sswitch_6b
        0xb8 -> :sswitch_6b
    .end sparse-switch
.end method

.method private authenticate(I[BZ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/16 v4, 0xc

    new-array v0, v4, [B

    if-eqz p3, :cond_35

    const/16 v4, 0x60

    aput-byte v4, v0, v7

    :goto_13
    invoke-virtual {p0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v8

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getTag()Landroid/nfc/Tag;

    move-result-object v4

    invoke-virtual {v4}, Landroid/nfc/Tag;->getId()[B

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v4, v4, -0x4

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p2, v7, v0, v9, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v4, 0x0

    :try_start_2e
    invoke-virtual {p0, v0, v4}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B
    :try_end_31
    .catch Landroid/nfc/TagLostException; {:try_start_2e .. :try_end_31} :catch_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_3a

    move-result-object v4

    if-eqz v4, :cond_3b

    return v8

    :cond_35
    const/16 v4, 0x61

    aput-byte v4, v0, v7

    goto :goto_13

    :catch_3a
    move-exception v2

    :cond_3b
    return v7

    :catch_3c
    move-exception v1

    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_a

    return-object v2

    :cond_a
    :try_start_a
    new-instance v1, Landroid/nfc/tech/MifareClassic;

    invoke-direct {v1, p0}, Landroid/nfc/tech/MifareClassic;-><init>(Landroid/nfc/Tag;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v0

    return-object v2
.end method

.method private static validateBlock(I)V
    .registers 4

    if-ltz p0, :cond_6

    const/16 v0, 0x100

    if-lt p0, v0, :cond_20

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "block out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private static validateSector(I)V
    .registers 4

    if-ltz p0, :cond_6

    const/16 v0, 0x28

    if-lt p0, v0, :cond_20

    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sector out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private static validateValueOperand(I)V
    .registers 3

    if-gez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value operand negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return-void
.end method


# virtual methods
.method public authenticateSectorWithKeyA(I[B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public authenticateSectorWithKeyB(I[B)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/nfc/tech/MifareClassic;->authenticate(I[BZ)Z

    move-result v0

    return v0
.end method

.method public blockToSector(I)I
    .registers 3

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    const/16 v0, 0x80

    if-ge p1, v0, :cond_a

    div-int/lit8 v0, p1, 0x4

    return v0

    :cond_a
    add-int/lit8 v0, p1, -0x80

    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public bridge synthetic close()V
    .registers 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public decrement(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x40

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public getBlockCount()I
    .registers 2

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    div-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getBlockCountInSector(I)I
    .registers 3

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateSector(I)V

    const/16 v0, 0x20

    if-ge p1, v0, :cond_9

    const/4 v0, 0x4

    return v0

    :cond_9
    const/16 v0, 0x10

    return v0
.end method

.method public getMaxTransceiveLength()I
    .registers 2

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getSectorCount()I
    .registers 2

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    sparse-switch v0, :sswitch_data_12

    const/4 v0, 0x0

    return v0

    :sswitch_7
    const/16 v0, 0x10

    return v0

    :sswitch_a
    const/16 v0, 0x20

    return v0

    :sswitch_d
    const/16 v0, 0x28

    return v0

    :sswitch_10
    const/4 v0, 0x5

    return v0

    :sswitch_data_12
    .sparse-switch
        0x140 -> :sswitch_10
        0x400 -> :sswitch_7
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_d
    .end sparse-switch
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mSize:I

    return v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getTimeout(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/nfc/tech/MifareClassic;->mType:I

    return v0
.end method

.method public increment(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-static {p2}, Landroid/nfc/tech/MifareClassic;->validateValueOperand(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x3f

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isEmulated()Z
    .registers 2

    iget-boolean v0, p0, Landroid/nfc/tech/MifareClassic;->mIsEmulated:Z

    return v0
.end method

.method public readBlock(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/16 v1, 0x30

    aput-byte v1, v0, v3

    int-to-byte v1, p1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic reconnect()V
    .registers 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public restore(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/16 v1, -0x3e

    aput-byte v1, v0, v3

    int-to-byte v1, p1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public sectorToBlock(I)I
    .registers 3

    const/16 v0, 0x20

    if-ge p1, v0, :cond_7

    mul-int/lit8 v0, p1, 0x4

    return v0

    :cond_7
    add-int/lit8 v0, p1, -0x20

    mul-int/lit8 v0, v0, 0x10

    add-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public setTimeout(I)V
    .registers 6

    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/MifareClassic;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcTag;->setTimeout(II)I

    move-result v1

    if-eqz v1, :cond_21

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The supplied timeout is not valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    return-void
.end method

.method public transceive([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public transfer(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    const/4 v1, 0x2

    new-array v0, v1, [B

    const/16 v1, -0x50

    aput-byte v1, v0, v3

    int-to-byte v1, p1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method

.method public writeBlock(I[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->validateBlock(I)V

    invoke-virtual {p0}, Landroid/nfc/tech/MifareClassic;->checkConnected()V

    array-length v1, p2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_15

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "must write 16-bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    array-length v1, p2

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    const/16 v1, -0x60

    aput-byte v1, v0, v3

    int-to-byte v1, p1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    array-length v1, p2

    const/4 v2, 0x2

    invoke-static {p2, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {p0, v0, v3}, Landroid/nfc/tech/MifareClassic;->transceive([BZ)[B

    return-void
.end method
