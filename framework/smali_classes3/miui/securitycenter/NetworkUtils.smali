.class public Lmiui/securitycenter/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OverLayUtil"

.field private static mNMService:Landroid/os/INetworkManagementService;

.field private static mSystemServiceClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;
    .registers 10

    const/4 v4, 0x0

    :try_start_1
    sget-object v6, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    if-nez v6, :cond_12

    const-string/jumbo v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    sput-object v6, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    :cond_12
    sget-object v6, Lmiui/securitycenter/NetworkUtils;->mNMService:Landroid/os/INetworkManagementService;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v4

    if-eqz v4, :cond_6e

    invoke-virtual {v4}, Landroid/net/NetworkStats;->size()I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_87

    move-result v6

    if-lez v6, :cond_6e

    :try_start_21
    sget-object v6, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    if-nez v6, :cond_39

    const-string/jumbo v6, "SYSTEMSERVERCLASSPATH"

    invoke-static {v6}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6f

    new-instance v6, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v6, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    :cond_39
    :goto_39
    const-string/jumbo v6, "com.android.server.NetPluginDelegate"

    sget-object v7, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v8, 0x0

    invoke-static {v6, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v6, "getTetherStats"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/net/NetworkStats;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/net/NetworkStats;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Landroid/net/NetworkStats;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    :goto_6e
    return-object v4

    :cond_6f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    sput-object v6, Lmiui/securitycenter/NetworkUtils;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;
    :try_end_79
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_79} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_79} :catch_7c

    goto :goto_39

    :catch_7a
    move-exception v0

    goto :goto_6e

    :catch_7c
    move-exception v1

    :try_start_7d
    const-string/jumbo v6, "OverLayUtil"

    const-string/jumbo v7, "an exception occurred!!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_86} :catch_87

    goto :goto_6e

    :catch_87
    move-exception v1

    const-string/jumbo v6, "OverLayUtil"

    const-string/jumbo v7, "an exception occurred!!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e
.end method

.method public static getMobileIface(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string/jumbo v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_d
    invoke-interface {v1, v3}, Landroid/net/IConnectivityManager;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_18

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_18
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11

    :cond_1d
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public static getNetworkStatsTethering()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lmiui/securitycenter/NetworkUtils;->getAdjustedNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_5b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v5

    if-ge v1, v5, :cond_5b

    invoke-virtual {v3, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "uid"

    iget v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "iface"

    iget-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "rxBytes"

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "txBytes"

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "tag"

    iget v6, v0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_5b
    return-object v4
.end method

.method public static isVpnConnected()Z
    .registers 7

    const/4 v4, 0x0

    :try_start_1
    const-string/jumbo v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18

    move-result-object v1

    if-eqz v1, :cond_17

    const/4 v4, 0x1

    :cond_17
    return v4

    :catch_18
    move-exception v0

    const-string/jumbo v5, "OverLayUtil"

    const-string/jumbo v6, "isVpnConnected"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public static saveWifiConfiguration(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_10

    :cond_6
    const-string/jumbo v8, "OverLayUtil"

    const-string/jumbo v9, "saveWifiConfiguration:  invalidate parameter!"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    if-eqz p2, :cond_6

    const-string/jumbo v8, "wifi"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_1e

    return-void

    :cond_1e
    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v8

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v8, v9, :cond_59

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    const/4 v5, 0x0

    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3c

    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    :cond_3c
    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_4d

    iget-object v8, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    const/4 v4, 0x1

    :cond_4e
    :goto_4e
    if-eqz v4, :cond_58

    new-instance v8, Lmiui/securitycenter/NetworkUtils$1;

    invoke-direct {v8}, Lmiui/securitycenter/NetworkUtils$1;-><init>()V

    invoke-virtual {v7, p2, v8}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_58
    return-void

    :cond_59
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v8

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v8, v9, :cond_4e

    new-instance v6, Landroid/net/StaticIpConfiguration;

    invoke-direct {v6}, Landroid/net/StaticIpConfiguration;-><init>()V

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    if-eqz v1, :cond_a3

    iget v8, v1, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    new-instance v8, Landroid/net/LinkAddress;

    iget v9, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v9}, Landroid/net/NetworkUtils;->netmaskIntToPrefixLength(I)I

    move-result v9

    invoke-direct {v8, v3, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v8, v6, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    iget v8, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v8

    iput-object v8, v6, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    iget-object v8, v6, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_8c
    iget-object v8, v6, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    iget v9, v1, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v9}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_97} :catch_a5

    :goto_97
    new-instance v8, Landroid/net/IpConfiguration;

    sget-object v9, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-direct {v8, v9, v10, v6, v11}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {p2, v8}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    :cond_a3
    const/4 v4, 0x1

    goto :goto_4e

    :catch_a5
    move-exception v2

    iget-object v8, v6, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    const-string/jumbo v9, "8.8.8.8"

    invoke-static {v9}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97
.end method

.method public static setMobileDataState(Landroid/content/Context;Z)V
    .registers 4

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method public static vpnPrepareAndAuthorize(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    :try_start_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v3, p0, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string/jumbo v3, "OverLayUtil"

    const-string/jumbo v4, "prepareAndAuthorize"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method
