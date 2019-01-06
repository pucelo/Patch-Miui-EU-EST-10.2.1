.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSLatencies"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;


# instance fields
.field public aCount:I

.field public aaaaCount:I

.field public latenciesMs:[I

.field public queryCount:I

.field public returnCode:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 2

    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    if-nez v0, :cond_11

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    sput-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    :cond_11
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v3

    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_10
    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    if-eqz v4, :cond_1c

    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1c
    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    if-eqz v4, :cond_28

    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_28
    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    if-eqz v4, :cond_34

    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    const/4 v5, 0x4

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_34
    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    if-eqz v4, :cond_40

    iget v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_40
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v4, v4

    if-lez v4, :cond_63

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_4b
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5c

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    aget v1, v4, v2

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_5c
    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    :cond_63
    return v3
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    sparse-switch v6, :sswitch_data_aa

    invoke-static {p1, v6}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_1

    return-object p0

    :sswitch_f
    return-object p0

    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    goto :goto_1

    :sswitch_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    goto :goto_1

    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    goto :goto_1

    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    goto :goto_1

    :sswitch_2c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    goto :goto_1

    :sswitch_33
    const/16 v7, 0x30

    invoke-static {p1, v7}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-nez v7, :cond_5a

    const/4 v1, 0x0

    :goto_3e
    add-int v7, v1, v0

    new-array v4, v7, [I

    if-eqz v1, :cond_49

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    invoke-static {v7, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_49
    :goto_49
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_5e

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5a
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v7

    goto :goto_3e

    :cond_5e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    goto :goto_1

    :sswitch_67
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_74
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_80

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_80
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-nez v7, :cond_9f

    const/4 v1, 0x0

    :goto_88
    add-int v7, v1, v0

    new-array v4, v7, [I

    if-eqz v1, :cond_93

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    invoke-static {v7, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_93
    :goto_93
    array-length v7, v4

    if-ge v1, v7, :cond_a3

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_93

    :cond_9f
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v7

    goto :goto_88

    :cond_a3
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_1

    :sswitch_data_aa
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_10
        0x10 -> :sswitch_17
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_25
        0x28 -> :sswitch_2c
        0x30 -> :sswitch_33
        0x32 -> :sswitch_67
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->type:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    if-eqz v1, :cond_14

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->returnCode:I

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_14
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->queryCount:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1e
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aCount:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_28
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    if-eqz v1, :cond_32

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->aaaaCount:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_32
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v1

    if-lez v1, :cond_4c

    const/4 v0, 0x0

    :goto_3c
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4c

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;->latenciesMs:[I

    aget v1, v1, v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_4c
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
