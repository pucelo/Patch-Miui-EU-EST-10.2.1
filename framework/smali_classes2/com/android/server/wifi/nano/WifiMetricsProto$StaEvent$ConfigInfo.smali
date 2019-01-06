.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigInfo"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;


# instance fields
.field public allowedAuthAlgorithms:I

.field public allowedGroupCiphers:I

.field public allowedKeyManagement:I

.field public allowedPairwiseCiphers:I

.field public allowedProtocols:I

.field public hasEverConnected:Z

.field public hiddenSsid:Z

.field public isEphemeral:Z

.field public isPasspoint:Z

.field public scanFreq:I

.field public scanRssi:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .registers 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-nez v0, :cond_11

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    :cond_11
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    .registers 3

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 4

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    if-eqz v1, :cond_1c

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_28
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_34
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    if-eqz v1, :cond_40

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_40
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4c
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    if-eqz v1, :cond_58

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_58
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    if-eqz v1, :cond_65

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_65
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    if-eqz v1, :cond_72

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_72
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    const/16 v2, -0x7f

    if-eq v1, v2, :cond_81

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_81
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8f

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8f
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
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

    sparse-switch v0, :sswitch_data_5c

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    goto :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    goto :goto_0

    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    goto :goto_0

    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    goto :goto_0

    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    goto :goto_0

    :sswitch_32
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    goto :goto_0

    :sswitch_39
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    goto :goto_0

    :sswitch_40
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    goto :goto_0

    :sswitch_47
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    goto :goto_0

    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    goto :goto_0

    :sswitch_55
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    goto :goto_0

    :sswitch_data_5c
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x20 -> :sswitch_24
        0x28 -> :sswitch_2b
        0x30 -> :sswitch_32
        0x38 -> :sswitch_39
        0x40 -> :sswitch_40
        0x48 -> :sswitch_47
        0x50 -> :sswitch_4e
        0x58 -> :sswitch_55
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedKeyManagement:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedProtocols:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_14
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    if-eqz v0, :cond_1e

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedAuthAlgorithms:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_1e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedPairwiseCiphers:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_28
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    if-eqz v0, :cond_32

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->allowedGroupCiphers:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_32
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hiddenSsid:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_3c
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isPasspoint:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_46
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    if-eqz v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->isEphemeral:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_51
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->hasEverConnected:Z

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    const/16 v1, -0x7f

    if-eq v0, v1, :cond_69

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanRssi:I

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_69
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_75

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;->scanFreq:I

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_75
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
