.class public Lmiui/securitycenter/net/NetworkDiagnostics;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;,
        Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;,
        Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;,
        Lmiui/securitycenter/net/NetworkDiagnostics$SimpleSocketCheck;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics"

.field private static final TEST_DNS4:Ljava/net/InetAddress;

.field private static final TEST_DNS6:Ljava/net/InetAddress;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0}, Lmiui/securitycenter/net/NetworkDiagnostics;->getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()J
    .registers 2

    invoke-static {}, Lmiui/securitycenter/net/NetworkDiagnostics;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "8.8.8.8"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    const-string/jumbo v0, "2001:4860:4860::8888"

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeNetworkDnsCheck(Landroid/content/Context;Ljava/net/InetAddress;Ljava/lang/Long;)Ljava/lang/Boolean;
    .registers 10

    const/4 v6, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    :cond_d
    const-string/jumbo v2, "NetworkDiagnostics"

    const-string/jumbo v3, "activeNetworkIcmpCheck. invalidate parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_1b
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2b

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_2b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    if-nez p1, :cond_41

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_4e

    :cond_3f
    sget-object p1, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS4:Ljava/net/InetAddress;

    :cond_41
    :goto_41
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-static {v2, v1, p1, p2}, Lmiui/securitycenter/net/NetworkDiagnostics;->dnsCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/lang/Long;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_4e
    sget-object p1, Lmiui/securitycenter/net/NetworkDiagnostics;->TEST_DNS6:Ljava/net/InetAddress;

    goto :goto_41
.end method

.method public static activeNetworkIcmpCheck(Landroid/content/Context;Ljava/net/InetAddress;Ljava/lang/Long;)Ljava/lang/Boolean;
    .registers 10

    const/4 v6, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    :cond_d
    const-string/jumbo v2, "NetworkDiagnostics"

    const-string/jumbo v3, "activeNetworkIcmpCheck. invalidate parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_1b
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2b

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_2b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    if-nez p1, :cond_41

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_3f
    sget-object p1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    :cond_41
    :goto_41
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v1, p1, v4, v5}, Lmiui/securitycenter/net/NetworkDiagnostics;->icmpCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_52
    sget-object p1, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    goto :goto_41
.end method

.method public static dnsCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;Ljava/lang/Long;)Z
    .registers 14

    const/4 v7, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_f

    :cond_5
    :try_start_5
    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v3, "dnsCheck. invalidate parameter"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_f
    if-eqz p2, :cond_5

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-eqz v1, :cond_5

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V

    invoke-virtual {v0}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsUdpCheck;->call()Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_30

    move-result v1

    return v1

    :catch_30
    move-exception v6

    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v3, "dnsCheck"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method

.method private static getInterfaceIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_d
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v2

    return-object v2

    :catch_d
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public static icmpCheck(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)Z
    .registers 14

    const/4 v7, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_f

    :cond_5
    :try_start_5
    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v3, "icmpCheck. invalidate parameter"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_f
    if-eqz p2, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-eqz v1, :cond_5

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Ljava/net/InetAddress;J)V

    invoke-virtual {v0}, Lmiui/securitycenter/net/NetworkDiagnostics$IcmpCheck;->call()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_29

    move-result v1

    return v1

    :catch_29
    move-exception v6

    const-string/jumbo v1, "NetworkDiagnostics"

    const-string/jumbo v3, "icmpCheck"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method

.method private static final now()J
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
