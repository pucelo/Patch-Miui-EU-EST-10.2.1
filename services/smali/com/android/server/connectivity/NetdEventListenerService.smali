.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# static fields
.field private static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field private static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field private static final CONNECT_LATENCY_MAXIMUM_RECORDS:I = 0x4e20

.field private static final DBG:Z = false

.field private static final INITIAL_DNS_BATCH_SIZE:I = 0x64

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400

.field static final WAKEUP_EVENT_IFACE_PREFIX:Ljava/lang/String; = "iface:"


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mConnectEvents:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/metrics/ConnectStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectTb:Lcom/android/internal/util/TokenBucket;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDnsEvents:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/metrics/DnsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNetdEventCallback:Landroid/net/INetdEventCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mWakeupEventCursor:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mWakeupEvents:[Landroid/net/metrics/WakeupEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mWakeupStats:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/metrics/WakeupStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_connectivity_NetdEventListenerService-mthref-0(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 2

    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_connectivity_NetdEventListenerService-mthref-1(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .registers 2

    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_connectivity_NetdEventListenerService-mthref-2(Landroid/net/metrics/ConnectStats;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_connectivity_NetdEventListenerService-mthref-3(Landroid/net/metrics/DnsEvent;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 5

    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    const/16 v0, 0x400

    new-array v0, v0, [Landroid/net/metrics/WakeupEvent;

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:[Landroid/net/metrics/WakeupEvent;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private addWakeupEvent(Ljava/lang/String;JI)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    iget-wide v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetdEventListenerService;->wakeupEventIndex(J)I

    move-result v1

    iget-wide v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    new-instance v0, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v0}, Landroid/net/metrics/WakeupEvent;-><init>()V

    iput-object p1, v0, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    iput-wide p2, v0, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    iput p4, v0, Landroid/net/metrics/WakeupEvent;->uid:I

    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:[Landroid/net/metrics/WakeupEvent;

    aput-object v0, v3, v1

    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/WakeupStats;

    if-nez v2, :cond_30

    new-instance v2, Landroid/net/metrics/WakeupStats;

    invoke-direct {v2, p1}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    invoke-virtual {v2, v0}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    return-void
.end method

.method private static flushProtos(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;",
            "Landroid/util/SparseArray",
            "<TT;>;",
            "Ljava/util/function/Function",
            "<TT;",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private getTransports(I)J
    .registers 6

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    new-instance v2, Landroid/net/Network;

    invoke-direct {v2, p1}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_10

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_10
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    return-wide v2
.end method

.method private getWakeupEvents()[Landroid/net/metrics/WakeupEvent;
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    const-wide/16 v12, 0x1

    iget-wide v8, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    iget-object v10, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:[Landroid/net/metrics/WakeupEvent;

    array-length v10, v10

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    new-array v5, v4, [Landroid/net/metrics/WakeupEvent;

    iget-wide v8, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    sub-long v0, v8, v12

    array-length v8, v5

    add-int/lit8 v6, v8, -0x1

    move v7, v6

    move-wide v2, v0

    :goto_18
    if-ltz v7, :cond_2b

    add-int/lit8 v6, v7, -0x1

    iget-object v8, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:[Landroid/net/metrics/WakeupEvent;

    sub-long v0, v2, v12

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->wakeupEventIndex(J)I

    move-result v9

    aget-object v8, v8, v9

    aput-object v8, v5, v7

    move v7, v6

    move-wide v2, v0

    goto :goto_18

    :cond_2b
    return-object v5
.end method

.method static synthetic lambda$-com_android_server_connectivity_NetdEventListenerService_8935(Landroid/net/metrics/ConnectStats;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method static synthetic lambda$-com_android_server_connectivity_NetdEventListenerService_8987(Landroid/net/metrics/DnsEvent;)Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method private static listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "Landroid/util/SparseArray",
            "<TT;>;",
            "Ljava/util/function/Function",
            "<TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method private makeConnectStats(I)Landroid/net/metrics/ConnectStats;
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v2

    new-instance v0, Landroid/net/metrics/ConnectStats;

    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    const/16 v5, 0x4e20

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ConnectStats;-><init>(IJLcom/android/internal/util/TokenBucket;I)V

    return-object v0
.end method

.method private makeDnsEvent(I)Landroid/net/metrics/DnsEvent;
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v0

    new-instance v2, Landroid/net/metrics/DnsEvent;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v0, v1, v3}, Landroid/net/metrics/DnsEvent;-><init>(IJI)V

    return-object v2
.end method

.method private static varargs maybeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method private static varargs maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method private static wakeupEventIndex(J)I
    .registers 4

    const-wide/16 v0, 0x400

    rem-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->list(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$0:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    invoke-static {p1, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->flushProtos(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/function/Function;)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$1:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    invoke-static {p1, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->flushProtos(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/function/Function;)V

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2a
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$2:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const-string/jumbo v4, "\n"

    invoke-static {p1, v2, v3, v4}, Lcom/android/server/connectivity/NetdEventListenerService;->listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$3:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const-string/jumbo v4, "\n"

    invoke-static {p1, v2, v3, v4}, Lcom/android/server/connectivity/NetdEventListenerService;->listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_16
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2a
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getWakeupEvents()[Landroid/net/metrics/WakeupEvent;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_30
    if-ge v2, v4, :cond_3a

    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3c

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized listAsProtos(Ljava/io/PrintWriter;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$4:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const-string/jumbo v3, ""

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$5:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const-string/jumbo v3, ""

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_16
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_32

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "onConnectEvent(%d, %d, %dms)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/ConnectStats;

    if-nez v0, :cond_32

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->makeConnectStats(I)Landroid/net/metrics/ConnectStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_32
    invoke-virtual {v0, p2, p3, p4}, Landroid/net/metrics/ConnectStats;->addEvent(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p4

    move v3, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    :cond_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "onDnsEvent(%d, %d, %d, %dms)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/metrics/DnsEvent;

    if-nez v7, :cond_39

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->makeDnsEvent(I)Landroid/net/metrics/DnsEvent;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_39
    int-to-byte v0, p2

    int-to-byte v1, p3

    invoke-virtual {v7, v0, v1, p4}, Landroid/net/metrics/DnsEvent;->addResult(BBI)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    if-eqz v0, :cond_50

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    move-object v1, p5

    move-object v2, p6

    move v3, p7

    move/from16 v6, p8

    invoke-interface/range {v0 .. v6}, Landroid/net/INetdEventCallback;->onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    :cond_50
    monitor-exit p0

    return-void

    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;IIJ)V
    .registers 14

    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "onWakeupEvent(%s, %d, %d, %sns)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lcom/android/server/connectivity/NetdEventListenerService;->maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "iface:"

    const-string/jumbo v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-lez v1, :cond_3c

    const-wide/32 v4, 0xf4240

    div-long v2, p4, v4

    :goto_37
    invoke-direct {p0, v0, v2, v3, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Ljava/lang/String;JI)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_41

    monitor-exit p0

    return-void

    :cond_3c
    :try_start_3c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_41

    move-result-wide v2

    goto :goto_37

    :catchall_41
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerNetdEventCallback(Landroid/net/INetdEventCallback;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterNetdEventCallback()Z
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_7

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
