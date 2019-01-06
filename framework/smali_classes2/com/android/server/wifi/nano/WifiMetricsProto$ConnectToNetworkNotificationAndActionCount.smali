.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectToNetworkNotificationAndActionCount"
.end annotation


# static fields
.field public static final ACTION_CONNECT_TO_NETWORK:I = 0x2

.field public static final ACTION_PICK_WIFI_NETWORK:I = 0x3

.field public static final ACTION_PICK_WIFI_NETWORK_AFTER_CONNECT_FAILURE:I = 0x4

.field public static final ACTION_UNKNOWN:I = 0x0

.field public static final ACTION_USER_DISMISSED_NOTIFICATION:I = 0x1

.field public static final NOTIFICATION_CONNECTED_TO_NETWORK:I = 0x3

.field public static final NOTIFICATION_CONNECTING_TO_NETWORK:I = 0x2

.field public static final NOTIFICATION_FAILED_TO_CONNECT:I = 0x4

.field public static final NOTIFICATION_RECOMMEND_NETWORK:I = 0x1

.field public static final NOTIFICATION_UNKNOWN:I = 0x0

.field public static final RECOMMENDER_OPEN:I = 0x1

.field public static final RECOMMENDER_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;


# instance fields
.field public action:I

.field public count:I

.field public notification:I

.field public recommender:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .registers 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v0, :cond_11

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    :cond_11
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->notification:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->action:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->recommender:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->count:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 4

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->notification:I

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->notification:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->action:I

    if-eqz v1, :cond_1c

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->action:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->recommender:I

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->recommender:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->count:I

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->count:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_38

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    goto :goto_0

    :pswitch_17
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->notification:I

    goto :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_5c

    goto :goto_0

    :pswitch_22
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->action:I

    goto :goto_0

    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_6a

    goto :goto_0

    :pswitch_2d
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->recommender:I

    goto :goto_0

    :sswitch_30
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->count:I

    goto :goto_0

    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_1a
        0x18 -> :sswitch_25
        0x20 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->notification:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->notification:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->action:I

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->action:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_14
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->recommender:I

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->recommender:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->count:I

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->count:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_28
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
