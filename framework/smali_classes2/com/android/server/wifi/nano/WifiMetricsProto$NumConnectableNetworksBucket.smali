.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NumConnectableNetworksBucket"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;


# instance fields
.field public count:I

.field public numConnectableNetworks:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .registers 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v0, :cond_11

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    :cond_11
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 4

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    if-eqz v1, :cond_1c

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    goto :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    goto :goto_0

    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_16
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->numConnectableNetworks:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_14
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
