.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkStats"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;


# instance fields
.field public durationMs:J

.field public everValidated:Z

.field public ipSupport:I

.field public noConnectivityReports:I

.field public portalFound:Z

.field public validationAttempts:I

.field public validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 2

    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    if-nez v0, :cond_11

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    sput-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    :cond_11
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    iput-boolean v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    iput-boolean v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 9

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v2

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_14

    iget-wide v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const/4 v3, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_14
    iget v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    if-eqz v3, :cond_20

    iget v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_20
    iget-boolean v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    if-eqz v3, :cond_2c

    iget-boolean v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2c
    iget-boolean v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    if-eqz v3, :cond_38

    iget-boolean v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_38
    iget v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    if-eqz v3, :cond_44

    iget v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_44
    iget v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    if-eqz v3, :cond_50

    iget v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_50
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    if-lez v3, :cond_6e

    const/4 v1, 0x0

    :goto_5a
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    if-ge v1, v3, :cond_6e

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v0, v3, v1

    if-eqz v0, :cond_6b

    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_6e
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    if-lez v3, :cond_8d

    const/4 v1, 0x0

    :goto_78
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v3

    if-ge v1, v3, :cond_8d

    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v0, v3, v1

    if-eqz v0, :cond_8a

    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_8d
    return v2
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;
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

    move-result v3

    sparse-switch v3, :sswitch_data_c0

    invoke-static {p1, v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_1

    return-object p0

    :sswitch_f
    return-object p0

    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    goto :goto_1

    :sswitch_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    packed-switch v4, :pswitch_data_e6

    goto :goto_1

    :pswitch_1f
    iput v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    goto :goto_1

    :sswitch_22
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    goto :goto_1

    :sswitch_29
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    goto :goto_1

    :sswitch_30
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    goto :goto_1

    :sswitch_37
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    goto :goto_1

    :sswitch_3e
    const/16 v5, 0x3a

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v5, :cond_6b

    const/4 v1, 0x0

    :goto_49
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_54

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_54
    :goto_54
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6f

    new-instance v5, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v5}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_6b
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v5

    goto :goto_49

    :cond_6f
    new-instance v5, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v5}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    goto :goto_1

    :sswitch_7e
    const/16 v5, 0x42

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v5, :cond_ab

    const/4 v1, 0x0

    :goto_89
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_94

    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_94
    :goto_94
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_af

    new-instance v5, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v5}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_94

    :cond_ab
    iget-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v1, v5

    goto :goto_89

    :cond_af
    new-instance v5, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v5}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    goto/16 :goto_1

    nop

    :sswitch_data_c0
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_10
        0x10 -> :sswitch_17
        0x18 -> :sswitch_22
        0x20 -> :sswitch_29
        0x28 -> :sswitch_30
        0x30 -> :sswitch_37
        0x3a -> :sswitch_3e
        0x42 -> :sswitch_7e
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->durationMs:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_e
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    if-eqz v2, :cond_18

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->ipSupport:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_18
    iget-boolean v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    if-eqz v2, :cond_22

    iget-boolean v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->everValidated:Z

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_22
    iget-boolean v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->portalFound:Z

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_2c
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    if-eqz v2, :cond_36

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->noConnectivityReports:I

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_36
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    if-eqz v2, :cond_40

    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationAttempts:I

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_40
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-lez v2, :cond_5c

    const/4 v1, 0x0

    :goto_4a
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationEvents:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v0, v2, v1

    if-eqz v0, :cond_59

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_5c
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v2, :cond_79

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-lez v2, :cond_79

    const/4 v1, 0x0

    :goto_66
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v2

    if-ge v1, v2, :cond_79

    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkStats;->validationStates:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    aget-object v0, v2, v1

    if-eqz v0, :cond_76

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    :cond_79
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
