.class public Lcom/android/settingslib/wifi/WifiStatusTracker;
.super Ljava/lang/Object;
.source "WifiStatusTracker.java"


# instance fields
.field public connected:Z

.field public connecting:Z

.field public enabled:Z

.field public level:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public networkKey:Landroid/net/NetworkKey;

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method


# virtual methods
.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "wifi_state"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    iget v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    if-ne v5, v9, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    const-string/jumbo v5, "wifi_state"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_2

    :goto_1
    iput-boolean v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v5

    :goto_3
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connecting:Z

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    :cond_4
    iput-boolean v7, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    const-string/jumbo v5, "wifiInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "wifiInfo"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    :goto_4
    iget-boolean v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-eqz v5, :cond_9

    if-eqz v3, :cond_9

    invoke-direct {p0, v3}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz v5, :cond_8

    if-eqz v1, :cond_8

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    iget-object v5, v5, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v5, v5, Landroid/net/WifiKey;->ssid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    iget-object v5, v5, Landroid/net/NetworkKey;->wifiKey:Landroid/net/WifiKey;

    iget-object v5, v5, Landroid/net/WifiKey;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    :cond_5
    :try_start_0
    new-instance v5, Landroid/net/NetworkKey;

    new-instance v6, Landroid/net/WifiKey;

    iget-object v7, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-direct {v6, v7, v1}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    iput-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v5, "WifiStatusTracker"

    const-string/jumbo v6, "Cannot create NetworkKey"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_6
    move v5, v7

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    goto :goto_4

    :cond_8
    iput-object v8, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    goto/16 :goto_2

    :cond_9
    iput-object v8, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "newRssi"

    const/16 v6, -0xc8

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iget v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/net/wifi/MiuiWifiManager;->calculateSignalLevel(II)I

    move-result v5

    iput v5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    goto/16 :goto_2
.end method
