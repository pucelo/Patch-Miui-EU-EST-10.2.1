.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiAwareLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;
    }
.end annotation


# static fields
.field public static final ALREADY_ENABLED:I = 0xb

.field public static final FOLLOWUP_TX_QUEUE_FULL:I = 0xc

.field public static final INTERNAL_FAILURE:I = 0x2

.field public static final INVALID_ARGS:I = 0x6

.field public static final INVALID_NDP_ID:I = 0x8

.field public static final INVALID_PEER_ID:I = 0x7

.field public static final INVALID_SESSION_ID:I = 0x4

.field public static final NAN_NOT_ALLOWED:I = 0x9

.field public static final NO_OTA_ACK:I = 0xa

.field public static final NO_RESOURCES_AVAILABLE:I = 0x5

.field public static final PROTOCOL_FAILURE:I = 0x3

.field public static final SUCCESS:I = 0x1

.field public static final UNKNOWN:I = 0x0

.field public static final UNKNOWN_HAL_STATUS:I = 0xe

.field public static final UNSUPPORTED_CONCURRENCY_NAN_DISABLED:I = 0xd

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;


# instance fields
.field public availableTimeMs:J

.field public enabledTimeMs:J

.field public histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

.field public histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

.field public maxConcurrentAttachSessionsInApp:I

.field public maxConcurrentDiscoverySessionsInApp:I

.field public maxConcurrentDiscoverySessionsInSystem:I

.field public maxConcurrentNdiInApp:I

.field public maxConcurrentNdiInSystem:I

.field public maxConcurrentNdpInApp:I

.field public maxConcurrentNdpInSystem:I

.field public maxConcurrentNdpPerNdi:I

.field public maxConcurrentPublishInApp:I

.field public maxConcurrentPublishInSystem:I

.field public maxConcurrentSecureNdpInApp:I

.field public maxConcurrentSecureNdpInSystem:I

.field public maxConcurrentSubscribeInApp:I

.field public maxConcurrentSubscribeInSystem:I

.field public ndpCreationTimeMsMax:J

.field public ndpCreationTimeMsMin:J

.field public ndpCreationTimeMsNumSamples:J

.field public ndpCreationTimeMsSum:J

.field public ndpCreationTimeMsSumOfSq:J

.field public numApps:I

.field public numAppsUsingIdentityCallback:I

.field public numAppsWithDiscoverySessionFailureOutOfResources:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .registers 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v0, :cond_11

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    :cond_10
    monitor-exit v1

    :cond_11
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .registers 11

    const-wide/16 v8, 0x0

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v3

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    if-eqz v4, :cond_12

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_12
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    if-eqz v4, :cond_1e

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1e
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    if-eqz v4, :cond_2a

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    const/4 v5, 0x3

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2a
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_48

    const/4 v2, 0x0

    :goto_34
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_48

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v4, v2

    if-eqz v1, :cond_45

    const/4 v4, 0x4

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_48
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    if-eqz v4, :cond_54

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_54
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    if-eqz v4, :cond_60

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    const/4 v5, 0x6

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_60
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    if-eqz v4, :cond_6c

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    const/4 v5, 0x7

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_6c
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    if-eqz v4, :cond_79

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    const/16 v5, 0x8

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_79
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    if-eqz v4, :cond_86

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    const/16 v5, 0x9

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_86
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    if-eqz v4, :cond_93

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    const/16 v5, 0xa

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_93
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v4, :cond_b2

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_b2

    const/4 v2, 0x0

    :goto_9d
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_b2

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v4, v2

    if-eqz v1, :cond_af

    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_af
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    :cond_b2
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v4, :cond_d1

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_d1

    const/4 v2, 0x0

    :goto_bc
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_d1

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v4, v2

    if-eqz v1, :cond_ce

    const/16 v4, 0xc

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_ce
    add-int/lit8 v2, v2, 0x1

    goto :goto_bc

    :cond_d1
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    if-eqz v4, :cond_de

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    const/16 v5, 0xd

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_de
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v4, :cond_fd

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_fd

    const/4 v2, 0x0

    :goto_e8
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_fd

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v4, v2

    if-eqz v1, :cond_fa

    const/16 v4, 0xe

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_e8

    :cond_fd
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v4, :cond_11c

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_11c

    const/4 v2, 0x0

    :goto_107
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_11c

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v4, v2

    if-eqz v1, :cond_119

    const/16 v4, 0xf

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_119
    add-int/lit8 v2, v2, 0x1

    goto :goto_107

    :cond_11c
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    if-eqz v4, :cond_129

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    const/16 v5, 0x13

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_129
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    if-eqz v4, :cond_136

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    const/16 v5, 0x14

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_136
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    if-eqz v4, :cond_143

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    const/16 v5, 0x15

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_143
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    if-eqz v4, :cond_150

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    const/16 v5, 0x16

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_150
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    if-eqz v4, :cond_15d

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    const/16 v5, 0x17

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_15d
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    if-eqz v4, :cond_16a

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    const/16 v5, 0x18

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_16a
    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    if-eqz v4, :cond_177

    iget v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    const/16 v5, 0x19

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    :cond_177
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v4, :cond_196

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_196

    const/4 v2, 0x0

    :goto_181
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_196

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v4, v2

    if-eqz v0, :cond_193

    const/16 v4, 0x1a

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_193
    add-int/lit8 v2, v2, 0x1

    goto :goto_181

    :cond_196
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v4, :cond_1b5

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_1b5

    const/4 v2, 0x0

    :goto_1a0
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_1b5

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v4, v2

    if-eqz v0, :cond_1b2

    const/16 v4, 0x1b

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1b2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a0

    :cond_1b5
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v4, :cond_1d4

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_1d4

    const/4 v2, 0x0

    :goto_1bf
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_1d4

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v4, v2

    if-eqz v0, :cond_1d1

    const/16 v4, 0x1c

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1d1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1bf

    :cond_1d4
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v4, :cond_1f3

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_1f3

    const/4 v2, 0x0

    :goto_1de
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_1f3

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v4, v2

    if-eqz v0, :cond_1f0

    const/16 v4, 0x1d

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1f0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1de

    :cond_1f3
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v4, :cond_212

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_212

    const/4 v2, 0x0

    :goto_1fd
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_212

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v4, v2

    if-eqz v0, :cond_20f

    const/16 v4, 0x1e

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_20f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1fd

    :cond_212
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v4, :cond_231

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_231

    const/4 v2, 0x0

    :goto_21c
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_231

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v4, v2

    if-eqz v0, :cond_22e

    const/16 v4, 0x1f

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_22e
    add-int/lit8 v2, v2, 0x1

    goto :goto_21c

    :cond_231
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v4, :cond_250

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_250

    const/4 v2, 0x0

    :goto_23b
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_250

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v4, v2

    if-eqz v0, :cond_24d

    const/16 v4, 0x20

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_24d
    add-int/lit8 v2, v2, 0x1

    goto :goto_23b

    :cond_250
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v4, :cond_26f

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-lez v4, :cond_26f

    const/4 v2, 0x0

    :goto_25a
    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v4, v4

    if-ge v2, v4, :cond_26f

    iget-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v4, v2

    if-eqz v0, :cond_26c

    const/16 v4, 0x21

    invoke-static {v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_26c
    add-int/lit8 v2, v2, 0x1

    goto :goto_25a

    :cond_26f
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_27e

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    const/16 v6, 0x22

    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    :cond_27e
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_28d

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    const/16 v6, 0x23

    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    :cond_28d
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_29c

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    const/16 v6, 0x24

    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    :cond_29c
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2ab

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    const/16 v6, 0x25

    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2ab
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2ba

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    const/16 v6, 0x26

    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2ba
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2c9

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    const/16 v6, 0x27

    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2c9
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2d8

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    const/16 v6, 0x28

    invoke-static {v6, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2d8
    return v3
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;
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

    move-result v4

    sparse-switch v4, :sswitch_data_416

    invoke-static {p1, v4}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_1

    return-object p0

    :sswitch_f
    return-object p0

    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    goto :goto_1

    :sswitch_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    goto :goto_1

    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    goto :goto_1

    :sswitch_25
    const/16 v5, 0x22

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v5, :cond_52

    const/4 v1, 0x0

    :goto_30
    add-int v5, v1, v0

    new-array v3, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_3b

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3b
    :goto_3b
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_56

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_52
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v5

    goto :goto_30

    :cond_56
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto :goto_1

    :sswitch_65
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    goto :goto_1

    :sswitch_6c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    goto :goto_1

    :sswitch_73
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    goto :goto_1

    :sswitch_7a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    goto :goto_1

    :sswitch_81
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    goto/16 :goto_1

    :sswitch_89
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    goto/16 :goto_1

    :sswitch_91
    const/16 v5, 0x5a

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v5, :cond_be

    const/4 v1, 0x0

    :goto_9c
    add-int v5, v1, v0

    new-array v3, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_a7

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a7
    :goto_a7
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_c2

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a7

    :cond_be
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v5

    goto :goto_9c

    :cond_c2
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_1

    :sswitch_d2
    const/16 v5, 0x62

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v5, :cond_ff

    const/4 v1, 0x0

    :goto_dd
    add-int v5, v1, v0

    new-array v3, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_e8

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e8
    :goto_e8
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_103

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    :cond_ff
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v5

    goto :goto_dd

    :cond_103
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_1

    :sswitch_113
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    goto/16 :goto_1

    :sswitch_11b
    const/16 v5, 0x72

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v5, :cond_148

    const/4 v1, 0x0

    :goto_126
    add-int v5, v1, v0

    new-array v3, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_131

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_131
    :goto_131
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_14c

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_131

    :cond_148
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v5

    goto :goto_126

    :cond_14c
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_1

    :sswitch_15c
    const/16 v5, 0x7a

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-nez v5, :cond_189

    const/4 v1, 0x0

    :goto_167
    add-int v5, v1, v0

    new-array v3, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v1, :cond_172

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-static {v5, v8, v3, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_172
    :goto_172
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_18d

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_172

    :cond_189
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v1, v5

    goto :goto_167

    :cond_18d
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;-><init>()V

    aput-object v5, v3, v1

    aget-object v5, v3, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    goto/16 :goto_1

    :sswitch_19d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    goto/16 :goto_1

    :sswitch_1a5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    goto/16 :goto_1

    :sswitch_1ad
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    goto/16 :goto_1

    :sswitch_1b5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    goto/16 :goto_1

    :sswitch_1bd
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    goto/16 :goto_1

    :sswitch_1c5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    goto/16 :goto_1

    :sswitch_1cd
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    goto/16 :goto_1

    :sswitch_1d5
    const/16 v5, 0xd2

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v5, :cond_202

    const/4 v1, 0x0

    :goto_1e0
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_1eb

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1eb
    :goto_1eb
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_206

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1eb

    :cond_202
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v5

    goto :goto_1e0

    :cond_206
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1

    :sswitch_216
    const/16 v5, 0xda

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v5, :cond_243

    const/4 v1, 0x0

    :goto_221
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_22c

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_22c
    :goto_22c
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_247

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_22c

    :cond_243
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v5

    goto :goto_221

    :cond_247
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1

    :sswitch_257
    const/16 v5, 0xe2

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v5, :cond_284

    const/4 v1, 0x0

    :goto_262
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_26d

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26d
    :goto_26d
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_288

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_26d

    :cond_284
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v5

    goto :goto_262

    :cond_288
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1

    :sswitch_298
    const/16 v5, 0xea

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v5, :cond_2c5

    const/4 v1, 0x0

    :goto_2a3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_2ae

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2ae
    :goto_2ae
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_2c9

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ae

    :cond_2c5
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v5

    goto :goto_2a3

    :cond_2c9
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1

    :sswitch_2d9
    const/16 v5, 0xf2

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v5, :cond_306

    const/4 v1, 0x0

    :goto_2e4
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_2ef

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2ef
    :goto_2ef
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_30a

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2ef

    :cond_306
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v5

    goto :goto_2e4

    :cond_30a
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1

    :sswitch_31a
    const/16 v5, 0xfa

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v5, :cond_347

    const/4 v1, 0x0

    :goto_325
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_330

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_330
    :goto_330
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_34b

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_330

    :cond_347
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v5

    goto :goto_325

    :cond_34b
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1

    :sswitch_35b
    const/16 v5, 0x102

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v5, :cond_388

    const/4 v1, 0x0

    :goto_366
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_371

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_371
    :goto_371
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_38c

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_371

    :cond_388
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v5

    goto :goto_366

    :cond_38c
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1

    :sswitch_39c
    const/16 v5, 0x10a

    invoke-static {p1, v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-nez v5, :cond_3c9

    const/4 v1, 0x0

    :goto_3a7
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v1, :cond_3b2

    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-static {v5, v8, v2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3b2
    :goto_3b2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3cd

    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b2

    :cond_3c9
    iget-object v5, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v1, v5

    goto :goto_3a7

    :cond_3cd
    new-instance v5, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    invoke-direct {v5}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;-><init>()V

    aput-object v5, v2, v1

    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    goto/16 :goto_1

    :sswitch_3dd
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    goto/16 :goto_1

    :sswitch_3e5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    goto/16 :goto_1

    :sswitch_3ed
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    goto/16 :goto_1

    :sswitch_3f5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    goto/16 :goto_1

    :sswitch_3fd
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    goto/16 :goto_1

    :sswitch_405
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    goto/16 :goto_1

    :sswitch_40d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    goto/16 :goto_1

    nop

    :sswitch_data_416
    .sparse-switch
        0x0 -> :sswitch_f
        0x8 -> :sswitch_10
        0x10 -> :sswitch_17
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_25
        0x28 -> :sswitch_65
        0x30 -> :sswitch_6c
        0x38 -> :sswitch_73
        0x40 -> :sswitch_7a
        0x48 -> :sswitch_81
        0x50 -> :sswitch_89
        0x5a -> :sswitch_91
        0x62 -> :sswitch_d2
        0x68 -> :sswitch_113
        0x72 -> :sswitch_11b
        0x7a -> :sswitch_15c
        0x98 -> :sswitch_19d
        0xa0 -> :sswitch_1a5
        0xa8 -> :sswitch_1ad
        0xb0 -> :sswitch_1b5
        0xb8 -> :sswitch_1bd
        0xc0 -> :sswitch_1c5
        0xc8 -> :sswitch_1cd
        0xd2 -> :sswitch_1d5
        0xda -> :sswitch_216
        0xe2 -> :sswitch_257
        0xea -> :sswitch_298
        0xf2 -> :sswitch_2d9
        0xfa -> :sswitch_31a
        0x102 -> :sswitch_35b
        0x10a -> :sswitch_39c
        0x110 -> :sswitch_3dd
        0x118 -> :sswitch_3e5
        0x120 -> :sswitch_3ed
        0x128 -> :sswitch_3f5
        0x130 -> :sswitch_3fd
        0x138 -> :sswitch_405
        0x140 -> :sswitch_40d
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    if-eqz v3, :cond_c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numApps:I

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_c
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    if-eqz v3, :cond_16

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsUsingIdentityCallback:I

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_16
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    if-eqz v3, :cond_20

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentAttachSessionsInApp:I

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_20
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_3c

    const/4 v2, 0x0

    :goto_2a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_3c

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachSessionStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v3, v2

    if-eqz v1, :cond_39

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3c
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    if-eqz v3, :cond_46

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInApp:I

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_46
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    if-eqz v3, :cond_50

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInApp:I

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_50
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    if-eqz v3, :cond_5a

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInApp:I

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5a
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    if-eqz v3, :cond_65

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentPublishInSystem:I

    const/16 v4, 0x8

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_65
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    if-eqz v3, :cond_70

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSubscribeInSystem:I

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_70
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    if-eqz v3, :cond_7b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentDiscoverySessionsInSystem:I

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_98

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_98

    const/4 v2, 0x0

    :goto_85
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_98

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v3, v2

    if-eqz v1, :cond_95

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_98
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_b5

    const/4 v2, 0x0

    :goto_a2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_b5

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v3, v2

    if-eqz v1, :cond_b2

    const/16 v3, 0xc

    invoke-virtual {p1, v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_b2
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    :cond_b5
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    if-eqz v3, :cond_c0

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->numAppsWithDiscoverySessionFailureOutOfResources:I

    const/16 v4, 0xd

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_c0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_dd

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_dd

    const/4 v2, 0x0

    :goto_ca
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_dd

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v3, v2

    if-eqz v1, :cond_da

    const/16 v3, 0xe

    invoke-virtual {p1, v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_da
    add-int/lit8 v2, v2, 0x1

    goto :goto_ca

    :cond_dd
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    if-eqz v3, :cond_fa

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_fa

    const/4 v2, 0x0

    :goto_e7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_fa

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramRequestNdpOobStatus:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$NanStatusHistogramBucket;

    aget-object v1, v3, v2

    if-eqz v1, :cond_f7

    const/16 v3, 0xf

    invoke-virtual {p1, v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_f7
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    :cond_fa
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    if-eqz v3, :cond_105

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInApp:I

    const/16 v4, 0x13

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_105
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    if-eqz v3, :cond_110

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdiInSystem:I

    const/16 v4, 0x14

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_110
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    if-eqz v3, :cond_11b

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInApp:I

    const/16 v4, 0x15

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_11b
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    if-eqz v3, :cond_126

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpInSystem:I

    const/16 v4, 0x16

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_126
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    if-eqz v3, :cond_131

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInApp:I

    const/16 v4, 0x17

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_131
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    if-eqz v3, :cond_13c

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentSecureNdpInSystem:I

    const/16 v4, 0x18

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_13c
    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    if-eqz v3, :cond_147

    iget v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->maxConcurrentNdpPerNdi:I

    const/16 v4, 0x19

    invoke-virtual {p1, v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_147
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_164

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_164

    const/4 v2, 0x0

    :goto_151
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_164

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareAvailableDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v3, v2

    if-eqz v0, :cond_161

    const/16 v3, 0x1a

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_161
    add-int/lit8 v2, v2, 0x1

    goto :goto_151

    :cond_164
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_181

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_181

    const/4 v2, 0x0

    :goto_16e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_181

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAwareEnabledDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v3, v2

    if-eqz v0, :cond_17e

    const/16 v3, 0x1b

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_17e
    add-int/lit8 v2, v2, 0x1

    goto :goto_16e

    :cond_181
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_19e

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_19e

    const/4 v2, 0x0

    :goto_18b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_19e

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramAttachDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v3, v2

    if-eqz v0, :cond_19b

    const/16 v3, 0x1c

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_19b
    add-int/lit8 v2, v2, 0x1

    goto :goto_18b

    :cond_19e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_1bb

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_1bb

    const/4 v2, 0x0

    :goto_1a8
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_1bb

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramPublishSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v3, v2

    if-eqz v0, :cond_1b8

    const/16 v3, 0x1d

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a8

    :cond_1bb
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_1d8

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_1d8

    const/4 v2, 0x0

    :goto_1c5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_1d8

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramSubscribeSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v3, v2

    if-eqz v0, :cond_1d5

    const/16 v3, 0x1e

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1d5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c5

    :cond_1d8
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_1f5

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_1f5

    const/4 v2, 0x0

    :goto_1e2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_1f5

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDurationMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v3, v2

    if-eqz v0, :cond_1f2

    const/16 v3, 0x1f

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1f2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e2

    :cond_1f5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_212

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_212

    const/4 v2, 0x0

    :goto_1ff
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_212

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpSessionDataUsageMb:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v3, v2

    if-eqz v0, :cond_20f

    const/16 v3, 0x20

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_20f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1ff

    :cond_212
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    if-eqz v3, :cond_22f

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-lez v3, :cond_22f

    const/4 v2, 0x0

    :goto_21c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    array-length v3, v3

    if-ge v2, v3, :cond_22f

    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->histogramNdpCreationTimeMs:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog$HistogramBucket;

    aget-object v0, v3, v2

    if-eqz v0, :cond_22c

    const/16 v3, 0x21

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_22c
    add-int/lit8 v2, v2, 0x1

    goto :goto_21c

    :cond_22f
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_23c

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMin:J

    const/16 v3, 0x22

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_23c
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_249

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsMax:J

    const/16 v3, 0x23

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_249
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_256

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSum:J

    const/16 v3, 0x24

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_256
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_263

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsSumOfSq:J

    const/16 v3, 0x25

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_263
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_270

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->ndpCreationTimeMsNumSamples:J

    const/16 v3, 0x26

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_270
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_27d

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->availableTimeMs:J

    const/16 v3, 0x27

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_27d
    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_28a

    iget-wide v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;->enabledTimeMs:J

    const/16 v3, 0x28

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_28a
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
