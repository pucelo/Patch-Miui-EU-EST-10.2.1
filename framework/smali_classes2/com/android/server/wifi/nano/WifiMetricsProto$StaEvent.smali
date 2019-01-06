.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;
    }
.end annotation


# static fields
.field public static final AUTH_FAILURE_EAP_FAILURE:I = 0x4

.field public static final AUTH_FAILURE_NONE:I = 0x1

.field public static final AUTH_FAILURE_TIMEOUT:I = 0x2

.field public static final AUTH_FAILURE_UNKNOWN:I = 0x0

.field public static final AUTH_FAILURE_WRONG_PSWD:I = 0x3

.field public static final DISCONNECT_API:I = 0x1

.field public static final DISCONNECT_GENERIC:I = 0x2

.field public static final DISCONNECT_P2P_DISCONNECT_WIFI_REQUEST:I = 0x5

.field public static final DISCONNECT_RESET_SIM_NETWORKS:I = 0x6

.field public static final DISCONNECT_ROAM_WATCHDOG_TIMER:I = 0x4

.field public static final DISCONNECT_UNKNOWN:I = 0x0

.field public static final DISCONNECT_UNWANTED:I = 0x3

.field public static final STATE_ASSOCIATED:I = 0x6

.field public static final STATE_ASSOCIATING:I = 0x5

.field public static final STATE_AUTHENTICATING:I = 0x4

.field public static final STATE_COMPLETED:I = 0x9

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DORMANT:I = 0xa

.field public static final STATE_FOUR_WAY_HANDSHAKE:I = 0x7

.field public static final STATE_GROUP_HANDSHAKE:I = 0x8

.field public static final STATE_INACTIVE:I = 0x2

.field public static final STATE_INTERFACE_DISABLED:I = 0x1

.field public static final STATE_INVALID:I = 0xc

.field public static final STATE_SCANNING:I = 0x3

.field public static final STATE_UNINITIALIZED:I = 0xb

.field public static final TYPE_ASSOCIATION_REJECTION_EVENT:I = 0x1

.field public static final TYPE_AUTHENTICATION_FAILURE_EVENT:I = 0x2

.field public static final TYPE_CMD_ASSOCIATED_BSSID:I = 0x6

.field public static final TYPE_CMD_IP_CONFIGURATION_LOST:I = 0x8

.field public static final TYPE_CMD_IP_CONFIGURATION_SUCCESSFUL:I = 0x7

.field public static final TYPE_CMD_IP_REACHABILITY_LOST:I = 0x9

.field public static final TYPE_CMD_START_CONNECT:I = 0xb

.field public static final TYPE_CMD_START_ROAM:I = 0xc

.field public static final TYPE_CMD_TARGET_BSSID:I = 0xa

.field public static final TYPE_CONNECT_NETWORK:I = 0xd

.field public static final TYPE_FRAMEWORK_DISCONNECT:I = 0xf

.field public static final TYPE_NETWORK_AGENT_VALID_NETWORK:I = 0xe

.field public static final TYPE_NETWORK_CONNECTION_EVENT:I = 0x3

.field public static final TYPE_NETWORK_DISCONNECTION_EVENT:I = 0x4

.field public static final TYPE_SUPPLICANT_STATE_CHANGE_EVENT:I = 0x5

.field public static final TYPE_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;


# instance fields
.field public associationTimedOut:Z

.field public authFailureReason:I

.field public configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

.field public frameworkDisconnectReason:I

.field public lastFreq:I

.field public lastLinkSpeed:I

.field public lastRssi:I

.field public localGen:Z

.field public reason:I

.field public startTimeMillis:J

.field public status:I

.field public supplicantStateChangesBitmask:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .registers 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-nez v0, :cond_11

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    :cond_11
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    iput v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 7

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    if-eq v1, v3, :cond_1d

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    if-eq v1, v3, :cond_29

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_29
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_35
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_41
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    const/16 v2, -0x7f

    if-eq v1, v2, :cond_4f

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    if-eq v1, v3, :cond_5b

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    if-eq v1, v3, :cond_68

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_68
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    if-eqz v1, :cond_75

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_75
    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_86

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    const/16 v1, 0xa

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_86
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    if-eqz v1, :cond_93

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_93
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    if-eqz v1, :cond_a0

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    const/16 v2, 0xc

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    if-eqz v1, :cond_ad

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_ad
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_80

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_ba

    goto :goto_0

    :pswitch_17
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    goto :goto_0

    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    goto :goto_0

    :sswitch_21
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    goto :goto_0

    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    goto :goto_0

    :sswitch_2f
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-nez v2, :cond_3a

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    :cond_3a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_40
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    goto :goto_0

    :sswitch_47
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    goto :goto_0

    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    goto :goto_0

    :sswitch_55
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    goto :goto_0

    :sswitch_5c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    goto :goto_0

    :sswitch_63
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_de

    goto :goto_0

    :pswitch_6b
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    goto :goto_0

    :sswitch_6e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    goto :goto_0

    :sswitch_75
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_f0

    goto :goto_0

    :pswitch_7d
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    goto :goto_0

    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_1a
        0x18 -> :sswitch_21
        0x20 -> :sswitch_28
        0x2a -> :sswitch_2f
        0x30 -> :sswitch_40
        0x38 -> :sswitch_47
        0x40 -> :sswitch_4e
        0x48 -> :sswitch_55
        0x50 -> :sswitch_5c
        0x58 -> :sswitch_63
        0x60 -> :sswitch_6e
        0x68 -> :sswitch_75
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
        :pswitch_7d
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    if-eq v0, v2, :cond_15

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->reason:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_15
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    if-eq v0, v2, :cond_1f

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->status:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->localGen:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_29
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->configInfo:Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent$ConfigInfo;

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_33
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    const/16 v1, -0x7f

    if-eq v0, v1, :cond_3f

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastRssi:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    if-eq v0, v2, :cond_49

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastLinkSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_49
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    if-eq v0, v2, :cond_54

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->lastFreq:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_54
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    if-eqz v0, :cond_5f

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->supplicantStateChangesBitmask:I

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    :cond_5f
    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6e

    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->startTimeMillis:J

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_6e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    if-eqz v0, :cond_79

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->frameworkDisconnectReason:I

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_79
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    if-eqz v0, :cond_84

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->associationTimedOut:Z

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_84
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    if-eqz v0, :cond_8f

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->authFailureReason:I

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8f
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
