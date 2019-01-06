.class Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;
.super Ljava/lang/Object;
.source "GpsLocationProviderInjector.java"


# static fields
.field private static final DBG:Z = true

.field private static final NTP_SERVERS_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GpsNetworkTimeUpdateServiceInjector"

.field private static final hasServerField:Z = true

.field private static sConnManager:Landroid/net/ConnectivityManager;

.field private static sDefaultNtpServer:Ljava/lang/String;

.field private static sNtpServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sServerField:Ljava/lang/reflect/Field;

.field private static sTime:Landroid/util/TrustedTime;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "cn,ntp.org.cn"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "time5.aliyun.com"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "time6.aliyun.com"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "ntp-sz.chl.la"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "time4.aliyun.com"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "2.android.pool.ntp.org"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "tw.ntp.org.cn"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ntp1.aliyun.com"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "clock.via.org"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "dns.sjtu.edu.cn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static initNtpServers(Landroid/content/Context;Landroid/util/TrustedTime;)V
    .registers 8

    sput-object p1, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sConnManager:Landroid/net/ConnectivityManager;

    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v2, v2, Landroid/util/NtpTrustedTime;

    if-eqz v2, :cond_3e

    :try_start_13
    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    const-string/jumbo v3, "mServer"

    invoke-static {v2, v3}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v2}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->NTP_SERVERS_LIST:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_2e
    if-ge v2, v4, :cond_3e

    aget-object v1, v3, v2

    sget-object v5, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_37} :catch_3a

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3e
    return-void
.end method

.method static initReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void
.end method

.method static refreshNtpServer(I)Z
    .registers 6

    :try_start_0
    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v1, p0, v2

    sget-object v3, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sNtpServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "GpsNetworkTimeUpdateServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryCounter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",ntpServers = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-static {v4}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->getReflectServerField(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->forceRefresh()Z

    sget-object v2, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    sget-object v3, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sDefaultNtpServer:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4e

    const/4 v2, 0x1

    return v2

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return v2
.end method

.method static setReflectServerField(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static switchNtpServer(I)V
    .registers 2

    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    instance-of v0, v0, Landroid/util/NtpTrustedTime;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sServerField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->refreshNtpServer(I)Z

    move-result v0

    :goto_e
    if-nez v0, :cond_15

    sget-object v0, Lcom/android/server/location/GpsNetworkTimeUpdateServiceInjector;->sTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    :cond_15
    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_e
.end method
