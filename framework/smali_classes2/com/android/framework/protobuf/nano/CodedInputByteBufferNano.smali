.class public final Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# static fields
.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private bufferStart:I

.field private currentLimit:I

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iput p2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iput p2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void
.end method

.method public static decodeZigZag32(I)I
    .registers 3

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .registers 4

    new-instance v0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;-><init>([BII)V

    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 4

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1b

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    :goto_1a
    return-void

    :cond_1b
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSizeAfterLimit:I

    goto :goto_1a
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-eq v0, p1, :cond_9

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_9
    return-void
.end method

.method public getAbsolutePosition()I
    .registers 2

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return v0
.end method

.method public getBuffer()[B
    .registers 2

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    return-object v0
.end method

.method public getBytesUntilLimit()I
    .registers 4

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_9

    const/4 v1, -0x1

    return v1

    :cond_9
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public getData(II)[B
    .registers 7

    const/4 v3, 0x0

    if-nez p2, :cond_6

    sget-object v2, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v2

    :cond_6
    new-array v0, p2, [B

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int v1, v2, p1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getPosition()I
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .registers 3

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public popLimit(I)V
    .registers 2

    iput p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    :cond_7
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr p1, v1

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le p1, v0, :cond_13

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    :cond_13
    iput p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recomputeBufferSizeAfterLimit()V

    return v0
.end method

.method public readBool()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public readBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1d

    if-lez v1, :cond_1d

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v0

    :cond_1d
    if-nez v1, :cond_22

    sget-object v2, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-object v2

    :cond_22
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v2

    return-object v2
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(Lcom/android/framework/protobuf/nano/MessageNano;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-lt v0, v1, :cond_b

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_b
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    if-lt v2, v3, :cond_f

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionDepth:I

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    return-void
.end method

.method readPrimitiveField(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_a6

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :pswitch_26
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_38
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_41
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_53
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_5c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_65
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    return-object v0

    :pswitch_6f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_78
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_81
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_93
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_9c
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_26
        :pswitch_2f
        :pswitch_38
        :pswitch_41
        :pswitch_4a
        :pswitch_53
        :pswitch_5c
        :pswitch_65
        :pswitch_3
        :pswitch_3
        :pswitch_6a
        :pswitch_6f
        :pswitch_78
        :pswitch_81
        :pswitch_8a
        :pswitch_93
        :pswitch_9c
    .end packed-switch
.end method

.method public readRawByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    if-gez p1, :cond_8

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    :cond_8
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v1, v2, :cond_1c

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    :cond_1c
    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_32

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v0

    :cond_32
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1
.end method

.method public readRawLittleEndian32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method public readRawLittleEndian64()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v4

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v5

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v6

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v10, v1

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v2

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v4

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v6

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v7

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_7

    return v2

    :cond_7
    and-int/lit8 v1, v2, 0x7f

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_13

    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    :cond_12
    :goto_12
    return v1

    :cond_13
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_22

    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_12

    :cond_22
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_31

    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_12

    :cond_31
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    if-gez v2, :cond_12

    const/4 v0, 0x0

    :goto_40
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4d

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v3

    if-ltz v3, :cond_4a

    return v1

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_4d
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v3

    throw v3
.end method

.method public readRawVarint64()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_3
    const/16 v4, 0x40

    if-ge v1, v4, :cond_18

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawByte()B

    move-result v0

    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_15

    return-wide v2

    :cond_15
    add-int/lit8 v1, v1, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v4

    throw v4
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v1

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1e

    if-lez v1, :cond_1e

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->buffer:[B

    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sget-object v4, Lcom/android/framework/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-object v0

    :cond_1e
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawBytes(I)[B

    move-result-object v3

    sget-object v4, Lcom/android/framework/protobuf/nano/InternalNano;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v2
.end method

.method public readTag()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    iput v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    if-nez v0, :cond_19

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_19
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->lastTag:I

    return v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSizeCounter()V
    .registers 1

    return-void
.end method

.method public rewindToPosition(I)V
    .registers 6

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_31

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    iget v3, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    if-gez p1, :cond_4d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void
.end method

.method public setRecursionLimit(I)I
    .registers 6

    if-gez p1, :cond_1c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recursion limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    iput p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->recursionLimit:I

    return v0
.end method

.method public setSizeLimit(I)I
    .registers 6

    if-gez p1, :cond_1c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Size limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    iput p1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->sizeLimit:I

    return v0
.end method

.method public skipField(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_34

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    return v2

    :pswitch_11
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian64()J

    return v2

    :pswitch_15
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    return v2

    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipMessage()V

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->checkLastTagWas(I)V

    return v2

    :pswitch_2d
    const/4 v0, 0x0

    return v0

    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawLittleEndian32()I

    return v2

    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_1d
        :pswitch_2d
        :pswitch_2f
    .end packed-switch
.end method

.method public skipMessage()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    :cond_e
    return-void
.end method

.method public skipRawBytes(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_7

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_7
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    if-le v0, v1, :cond_1b

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->currentLimit:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->skipRawBytes(I)V

    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    :cond_1b
    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferSize:I

    iget v1, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_28

    iget v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->bufferPos:I

    return-void

    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method
