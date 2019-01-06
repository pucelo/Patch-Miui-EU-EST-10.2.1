.class public Lmiui/app/WifiApEnabler;
.super Ljava/lang/Object;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/WifiApEnabler$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApEnabler"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisabledByAirplane:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOpen:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusChanging:Z

.field private mToggleManager:Lmiui/app/ToggleManager;

.field private mWaitForWifiStateChange:Z

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lmiui/app/WifiApEnabler;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    return v0
.end method

.method static synthetic -wrap0(Lmiui/app/WifiApEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/app/WifiApEnabler;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/app/WifiApEnabler;)V
    .registers 1

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmiui/app/ToggleManager;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/app/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lmiui/app/WifiApEnabler$1;-><init>(Lmiui/app/WifiApEnabler;)V

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateAirplaneMode()V

    invoke-virtual {p0}, Lmiui/app/WifiApEnabler;->isWifiApOn()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_26

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    :cond_9
    :goto_9
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    return-void

    :pswitch_d
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_9

    :pswitch_12
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_9

    :pswitch_17
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_9

    :pswitch_1c
    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    goto :goto_9

    nop

    :pswitch_data_26
    .packed-switch 0xa
        :pswitch_17
        :pswitch_1c
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .registers 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_e

    :goto_4
    return-void

    :pswitch_5
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    goto :goto_4

    nop

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private initWifiTethering()V
    .registers 4

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    const v2, 0x1109004a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget-boolean v1, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v1, :cond_31

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    :goto_27
    iput-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lmiui/app/WifiApEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    :cond_30
    return-void

    :cond_31
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_27
.end method

.method private setSoftapEnabledWithConnectivityManager(Z)V
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSoftapEnabledWithConnectivityManager() enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_50

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Lmiui/app/ConnectivityManagerReflector;->startTethering(Landroid/net/ConnectivityManager;IZ)Z

    move-result v0

    :goto_25
    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    if-nez v0, :cond_4f

    const-string/jumbo v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSoftapEnabledWithConnectivityManager() enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void

    :cond_50
    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v1, v4}, Lmiui/app/ConnectivityManagerReflector;->stopTethering(Landroid/net/ConnectivityManager;I)Z

    move-result v0

    goto :goto_25
.end method

.method private setSoftapEnabledWithWifiManager(Z)V
    .registers 9

    const/16 v6, 0x17

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_27

    if-eqz p1, :cond_27

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1c

    const/4 v3, 0x3

    if-ne v2, v3, :cond_27

    :cond_1c
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_27
    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3, p1}, Lmiui/app/CompatibilityP;->setWifiApEnabled(Landroid/net/wifi/WifiManager;Z)Z

    move-result v3

    if-eqz v3, :cond_36

    iput-boolean v4, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    iput-boolean p1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    :cond_36
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_54

    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_54

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_54

    iput-boolean v4, p0, Lmiui/app/WifiApEnabler;->mWaitForWifiStateChange:Z

    iget-object v3, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_54
    return-void
.end method

.method private updateAirplaneMode()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    iput-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->updateToggle()V

    return-void
.end method

.method private updateToggle()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->updateWifiApToggle(Z)V

    return-void
.end method


# virtual methods
.method isWifiApDisabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method isWifiApOn()Z
    .registers 3

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method setSoftapEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lmiui/app/WifiApEnabler;->initWifiTethering()V

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_f

    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->setSoftapEnabledWithWifiManager(Z)V

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0, p1}, Lmiui/app/WifiApEnabler;->setSoftapEnabledWithConnectivityManager(Z)V

    goto :goto_e
.end method

.method public toggleWifiAp()V
    .registers 2

    const/16 v0, 0x18

    invoke-static {v0}, Lmiui/app/ToggleManager;->isDisabled(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/app/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_10
.end method

.method public unregisterReceiver()V
    .registers 3

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method updateWifiApToggle(Z)V
    .registers 5

    const/16 v2, 0x18

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v1, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    invoke-virtual {v0, v2, v1}, Lmiui/app/ToggleManager;->updateToggleStatus(IZ)V

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mStatusChanging:Z

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mDisabledByAirplane:Z

    :goto_11
    invoke-virtual {v1, v2, v0}, Lmiui/app/ToggleManager;->updateToggleDisabled(IZ)V

    iget-object v1, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    iget-boolean v0, p0, Lmiui/app/WifiApEnabler;->mOpen:Z

    if-eqz v0, :cond_33

    const v0, 0x110200ce

    :goto_1d
    invoke-virtual {v1, v2, v0}, Lmiui/app/ToggleManager;->updateToggleImage(II)V

    if-eqz p1, :cond_30

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    invoke-virtual {v0}, Lmiui/app/ToggleManager;->useWifiApForMiDrop()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lmiui/app/WifiApEnabler;->mToggleManager:Lmiui/app/ToggleManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ToggleManager;->updateMiDropToggle(Z)V

    :cond_30
    return-void

    :cond_31
    const/4 v0, 0x1

    goto :goto_11

    :cond_33
    const v0, 0x110200cd

    goto :goto_1d
.end method
