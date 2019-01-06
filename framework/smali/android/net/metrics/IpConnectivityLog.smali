.class public Landroid/net/metrics/IpConnectivityLog;
.super Ljava/lang/Object;
.source "IpConnectivityLog.java"


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Landroid/net/IIpConnectivityMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/net/metrics/IpConnectivityLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/IIpConnectivityMetrics;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    return-void
.end method

.method private checkLoggerService()Z
    .registers 4

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    if-eqz v1, :cond_6

    return v2

    :cond_6
    const-string/jumbo v1, "connmetrics"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v1, 0x0

    return v1

    :cond_15
    iput-object v0, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    return v2
.end method

.method private static makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;
    .registers 2

    new-instance v0, Landroid/net/ConnectivityMetricsEvent;

    invoke-direct {v0}, Landroid/net/ConnectivityMetricsEvent;-><init>()V

    iput-object p0, v0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    return-object v0
.end method


# virtual methods
.method public log(I[ILandroid/os/Parcelable;)Z
    .registers 8

    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    iput p1, v0, Landroid/net/ConnectivityMetricsEvent;->netId:I

    invoke-static {p2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/ConnectivityMetricsEvent;->transports:J

    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v1

    return v1
.end method

.method public log(JLandroid/os/Parcelable;)Z
    .registers 7

    invoke-static {p3}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    iput-wide p1, v0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v1

    return v1
.end method

.method public log(Landroid/net/ConnectivityMetricsEvent;)Z
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityLog;->checkLoggerService()Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-wide v4, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    :cond_16
    :try_start_16
    iget-object v3, p0, Landroid/net/metrics/IpConnectivityLog;->mService:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v3, p1}, Landroid/net/IIpConnectivityMetrics;->logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_20

    move-result v1

    if-ltz v1, :cond_1f

    const/4 v2, 0x1

    :cond_1f
    return v2

    :catch_20
    move-exception v0

    sget-object v3, Landroid/net/metrics/IpConnectivityLog;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error logging event"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public log(Landroid/os/Parcelable;)Z
    .registers 3

    invoke-static {p1}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v0

    return v0
.end method

.method public log(Ljava/lang/String;Landroid/os/Parcelable;)Z
    .registers 5

    invoke-static {p2}, Landroid/net/metrics/IpConnectivityLog;->makeEv(Landroid/os/Parcelable;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object v0

    iput-object p1, v0, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/net/metrics/IpConnectivityLog;->log(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v1

    return v1
.end method
