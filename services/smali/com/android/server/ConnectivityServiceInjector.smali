.class Lcom/android/server/ConnectivityServiceInjector;
.super Ljava/lang/Object;
.source "ConnectivityServiceInjector.java"


# static fields
.field private static final DEFAULT_DNSV6_ABROAD:Ljava/lang/String; = "2001:4860:4860::8888"

.field private static final DEFAULT_DNSV6_DOMESTIC:Ljava/lang/String; = "240c::6666"

.field private static final DEFAULT_DNS_ABROAD:Ljava/lang/String; = "8.8.8.8"

.field private static final DEFAULT_DNS_DOMESTIC:Ljava/lang/String; = "114.114.114.114"

.field private static final TAG:Ljava/lang/String; = "ConnectivityServiceInjector"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final addDnsIfNeeded(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2f

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_2f

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Landroid/provider/MiuiSettings$System;->isInCnRegion()Z

    move-result v5

    if-eqz v5, :cond_30

    const-string/jumbo v0, "114.114.114.114"

    :goto_17
    invoke-static {}, Landroid/provider/MiuiSettings$System;->isInCnRegion()Z

    move-result v5

    if-eqz v5, :cond_34

    const-string/jumbo v2, "240c::6666"

    :goto_20
    :try_start_20
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_2e} :catch_38

    move-object p0, v1

    :cond_2f
    :goto_2f
    return-object p0

    :cond_30
    const-string/jumbo v0, "8.8.8.8"

    goto :goto_17

    :cond_34
    const-string/jumbo v2, "2001:4860:4860::8888"

    goto :goto_20

    :catch_38
    move-exception v3

    const-string/jumbo v5, "ConnectivityServiceInjector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error setting dns using "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    goto :goto_2f
.end method

.method static final enableDataAndWifiRoam(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/MiuiConfigCaptivePortal;->enableDataAndWifiRoam(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static showLogin(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.miui.action.OPEN_WIFI_LOGIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.extra.OPEN_WIFI_SSID"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/server/MiuiConfigCaptivePortal;->getCaptivePortalServer(Landroid/content/Context;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_47

    const-string/jumbo v4, "miui.intent.extra.BSSID"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_47
    const-string/jumbo v4, "miui.intent.extra.CAPTIVE_PORTAL"

    const-string/jumbo v5, "miui.intent.extra.CAPTIVE_PORTAL"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.extra.NETWORK"

    const-string/jumbo v5, "miui.intent.extra.NETWORK"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.extra.EXPLICIT_SELECTED"

    const-string/jumbo v5, "miui.intent.extra.EXPLICIT_SELECTED"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v4, "miui.intent.CACHE_OPENWIFI"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method
