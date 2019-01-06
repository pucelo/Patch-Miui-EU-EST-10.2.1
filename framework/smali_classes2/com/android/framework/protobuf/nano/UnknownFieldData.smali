.class final Lcom/android/framework/protobuf/nano/UnknownFieldData;
.super Ljava/lang/Object;
.source "UnknownFieldData.java"


# instance fields
.field final bytes:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    iput-object p2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    return-void
.end method


# virtual methods
.method computeSerializedSize()I
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    instance-of v2, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    if-nez v2, :cond_a

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    iget v2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    if-ne v2, v3, :cond_1b

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    :cond_1b
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x11

    iget v1, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method

.method writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method
