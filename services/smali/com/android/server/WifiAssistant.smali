.class public Lcom/android/server/WifiAssistant;
.super Ljava/lang/Object;
.source "WifiAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiAssistant$1;,
        Lcom/android/server/WifiAssistant$NetworkCandidate;,
        Lcom/android/server/WifiAssistant$WifiAssistantUtils;
    }
.end annotation


# static fields
.field protected static final ACTION_NO_INTERNET_DETAIL:Ljava/lang/String; = "com.android.server.WIFI_ASSISTANT_NO_INTERNET"

.field protected static final DEBUG:Z = true

.field protected static final EXTRA_NETWORK_ID:Ljava/lang/String; = "EXTRA_NETWORK_ID"

.field public static IS_CTS_MODE:Z = false

.field private static final MAX_LOCAL_LOG_LINES:I = 0x1f4

.field private static final MIN_RSSI_THRESHOLD:I = -0x43

.field private static final TAG:Ljava/lang/String; = "WifiAssistant"

.field protected static final VDEBUG:Z

.field private static sSelf:Lcom/android/server/WifiAssistant;


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mLocalLog:Landroid/util/LocalLog;

.field private mNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationMap:Landroid/util/SparseIntArray;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mValidateHandledMap:Landroid/util/SparseBooleanArray;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/WifiAssistant;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->handleClickNotification(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/WifiAssistant;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->handleNetworkBlocked()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/WifiAssistant;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/WifiAssistant;->IS_CTS_MODE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/WifiAssistant$1;

    invoke-direct {v0, p0}, Lcom/android/server/WifiAssistant$1;-><init>(Lcom/android/server/WifiAssistant;)V

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mNotificationMap:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/WifiAssistant;->mLocalLog:Landroid/util/LocalLog;

    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->registerNetworkReceiver()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_56

    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->registerMiuiOptimizationObserver()V

    :cond_56
    return-void
.end method

.method public static get()Lcom/android/server/WifiAssistant;
    .registers 2

    sget-object v0, Lcom/android/server/WifiAssistant;->sSelf:Lcom/android/server/WifiAssistant;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/WifiAssistant;->sSelf:Lcom/android/server/WifiAssistant;

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "WifiAssistant not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAssociatedWifiConfiguration(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/wifi/WifiConfiguration;
    .registers 9

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-nez v0, :cond_11

    if-eqz v3, :cond_52

    :cond_11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAssociatedWifiConfiguration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return-object v1

    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAssociatedWifiConfiguration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return-object v6
.end method

.method private handleAutoConnect(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/WifiAssistant;->isWifiAssistantEnabled()Z

    move-result v0

    if-eqz v0, :cond_57

    const-string/jumbo v0, "handleAutoConnect: auto conn and assistant enabled"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->NONE:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v0, :cond_1e

    if-eqz p3, :cond_1d

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iget v1, p2, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    :cond_1d
    return v3

    :cond_1e
    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->WIFI:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    return v2

    :cond_2a
    sget-object v0, Lcom/android/server/WifiAssistant$NetworkCandidate;->DATA:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v0, :cond_56

    if-eqz p3, :cond_39

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iget v1, p2, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    :cond_39
    invoke-virtual {p0}, Lcom/android/server/WifiAssistant;->isDataWifiRoamWarningEnabled()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "handleAutoConnect: assistant prompt data enabled"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    if-eqz p4, :cond_4e

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0, v2, v2}, Lcom/android/server/WifiAssistant;->showNotValidatedDialog(IZI)V

    :cond_4e
    return v3

    :cond_4f
    const-string/jumbo v0, "handleAutoConnect: assistant prompt data disabled"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return v2

    :cond_56
    return v3

    :cond_57
    const-string/jumbo v0, "handleAutoConnect: auto conn and assistant disabled"

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    if-eqz p3, :cond_68

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iget v1, p2, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    :cond_68
    return v3
.end method

.method private handleClickNotification(I)V
    .registers 9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleClickNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    :try_start_17
    new-instance v2, Landroid/net/Network;

    invoke-direct {v2, p1}, Landroid/net/Network;-><init>(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1c} :catch_4e

    iget-object v4, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_59

    :cond_2c
    const-string/jumbo v4, "WifiAssistant"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleClickNotification: network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not connected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4e
    move-exception v1

    const-string/jumbo v4, "WifiAssistant"

    const-string/jumbo v5, "handleClickNotification"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_59
    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->selectNetwork()Lcom/android/server/WifiAssistant$NetworkCandidate;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/android/server/WifiAssistant;->handleExplicitlySelected(Landroid/net/Network;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    return-void
.end method

.method private handleExplicitlySelected(Landroid/net/Network;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z
    .registers 10

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleExplicitlySelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->NONE:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v1, :cond_31

    const/4 v0, -0x1

    :goto_1f
    if-eqz p4, :cond_26

    iget v1, p1, Landroid/net/Network;->netId:I

    invoke-direct {p0, v1, v4, v0}, Lcom/android/server/WifiAssistant;->showNotValidatedDialog(IZI)V

    :cond_26
    if-eqz p3, :cond_30

    iget v1, p1, Landroid/net/Network;->netId:I

    iget v2, p2, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    :cond_30
    return v4

    :cond_31
    sget-object v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->WIFI:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v1, :cond_37

    const/4 v0, 0x1

    goto :goto_1f

    :cond_37
    sget-object v1, Lcom/android/server/WifiAssistant$NetworkCandidate;->DATA:Lcom/android/server/WifiAssistant$NetworkCandidate;

    if-ne p2, v1, :cond_3d

    const/4 v0, 0x0

    goto :goto_1f

    :cond_3d
    return v4
.end method

.method private handleNetworkBlocked()V
    .registers 5

    const-string/jumbo v2, "handleNetworkBlocked"

    invoke-direct {p0, v2}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v2, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    :cond_23
    return-void
.end method

.method private isAutoConnectDisabledByUser(Ljava/lang/String;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$System;->getDisableWifiAutoConnectSsid(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private isNetworkNoInternetExpected(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->getAssociatedWifiConfiguration(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "WifiAssistant"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static make(Landroid/content/Context;)V
    .registers 2

    new-instance v0, Lcom/android/server/WifiAssistant;

    invoke-direct {v0, p0}, Lcom/android/server/WifiAssistant;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/WifiAssistant;->sSelf:Lcom/android/server/WifiAssistant;

    return-void
.end method

.method private maybeClearNoInternetAccessFeature(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maybeClearNoInternetAccessFeature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->getAssociatedWifiConfiguration(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-eqz v1, :cond_2e

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x81009

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    :cond_2e
    return-void
.end method

.method private notificationTagFor(I)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "WifiAssistant:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerMiuiOptimizationObserver()V
    .registers 6

    const/4 v4, 0x0

    new-instance v0, Lcom/android/server/WifiAssistant$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/WifiAssistant$2;-><init>(Lcom/android/server/WifiAssistant;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MiuiSettings$Secure;->MIUI_OPTIMIZATION:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerNetworkReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.server.WIFI_ASSISTANT_NO_INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiAssistant;->mNetworkReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private selectNetwork()Lcom/android/server/WifiAssistant$NetworkCandidate;
    .registers 12

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    if-nez v2, :cond_20

    :cond_17
    const-string/jumbo v7, "Select SELF for current wi or scan result is null"

    invoke-direct {p0, v7}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/WifiAssistant$NetworkCandidate;->SELF:Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v7

    :cond_20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Select network start for: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " | "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiAssistant;->logv(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    invoke-static {v5, v3}, Lcom/android/server/WifiAssistant$WifiAssistantUtils;->isScanResultMatchNetwork(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_5e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "    Select network: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " | "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " | "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " | "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    iget v10, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v7, v10, :cond_12a

    const/4 v7, 0x1

    :goto_ac
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " | "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " | "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, v3, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " | "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/server/WifiAssistant;->isAutoConnectDisabledByUser(Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiAssistant;->logv(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    iget v9, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v7, v9, :cond_5e

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v7

    if-eqz v7, :cond_5e

    iget-boolean v7, v3, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5e

    iget-object v7, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/WifiAssistant;->isAutoConnectDisabledByUser(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Select WIFI for available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/WifiAssistant$NetworkCandidate;->WIFI:Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v7

    :cond_12a
    move v7, v8

    goto :goto_ac

    :cond_12c
    iget-object v7, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_14e

    iget-object v7, p0, Lcom/android/server/WifiAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_14e

    iget-object v7, p0, Lcom/android/server/WifiAssistant;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v7

    if-eqz v7, :cond_14e

    const-string/jumbo v7, "Select DATA for data is enabled"

    invoke-direct {p0, v7}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/WifiAssistant$NetworkCandidate;->DATA:Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v7

    :cond_14e
    const-string/jumbo v7, "Select NONE for no available network"

    invoke-direct {p0, v7}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/WifiAssistant$NetworkCandidate;->NONE:Lcom/android/server/WifiAssistant$NetworkCandidate;

    return-object v7
.end method

.method private showNotValidatedDialog(IZI)V
    .registers 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showNotValidatedDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "netId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "candidate"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "explicitlySelected"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.wifi.WifiAssistantDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_55
    iget-object v2, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5a} :catch_5b

    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    const-string/jumbo v2, "WifiAssistant"

    const-string/jumbo v3, "showNotValidatedDialog failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5a
.end method

.method private showValidationNotification(IIZ)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showValidationNotification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mNotificationMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->notificationTagFor(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/WifiAssistantCompat;->showValidationNotification(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private validateNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 4

    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_18

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "WifiAssistant: "

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public enableDataWifiRoamWarning(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_assistant_data_prompt"

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public enableWifiAssistant(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_assistant"

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    :goto_c
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public handleNetworkNoInternet(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleNetworkNoInternet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->validateNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-eqz v1, :cond_28

    :cond_27
    return v4

    :cond_28
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v1, :cond_61

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eqz v1, :cond_61

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->isNetworkNoInternetExpected(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_61

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleNetworkNoInternet: user preferred "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    sget-object v2, Lcom/android/server/WifiAssistant$NetworkCandidate;->SELF:Lcom/android/server/WifiAssistant$NetworkCandidate;

    iget v2, v2, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    return v3

    :cond_61
    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->selectNetwork()Lcom/android/server/WifiAssistant$NetworkCandidate;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v1, :cond_71

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {p0, v1, v0, v3, v3}, Lcom/android/server/WifiAssistant;->handleExplicitlySelected(Landroid/net/Network;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    :cond_70
    :goto_70
    return v3

    :cond_71
    invoke-direct {p0, p1, v0, v3, v3}, Lcom/android/server/WifiAssistant;->handleAutoConnect(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    move-result v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    goto :goto_70
.end method

.method public handleNetworkValidationResult(Lcom/android/server/connectivity/NetworkAgentInfo;Z)Z
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNetworkValidationResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->validateNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v6

    if-nez v6, :cond_49

    return p2

    :cond_49
    if-eqz p2, :cond_82

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v6}, Lcom/android/server/WifiAssistant;->maybeClearNotification(I)V

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->maybeClearNoInternetAccessFeature(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    iget-object v6, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-eqz v6, :cond_6a

    iget-object v6, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_6a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNetworkValidationResult: abort for validated: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return p2

    :cond_82
    iget-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-eqz v6, :cond_8d

    const-string/jumbo v6, "handleNetworkValidationResult: abort for portal network"

    invoke-direct {p0, v6}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return p2

    :cond_8d
    sget-boolean v6, Lcom/android/server/WifiAssistant;->IS_CTS_MODE:Z

    if-nez v6, :cond_af

    iget-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v6, :cond_af

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNetworkValidationResult: abort for everValidated: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return v8

    :cond_af
    iget-boolean v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v6, :cond_cd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNetworkValidationResult: abort for lastValidated: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return p2

    :cond_cd
    iget-object v6, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7, v9}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-eqz v6, :cond_10d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNetworkValidationResult: abort for already handled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return p2

    :cond_10d
    iget-object v6, p0, Lcom/android/server/WifiAssistant;->mValidateHandledMap:Landroid/util/SparseBooleanArray;

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v6, :cond_149

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-eqz v6, :cond_149

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNetworkValidationResult: user preferred "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    sget-object v7, Lcom/android/server/WifiAssistant$NetworkCandidate;->SELF:Lcom/android/server/WifiAssistant$NetworkCandidate;

    iget v7, v7, Lcom/android/server/WifiAssistant$NetworkCandidate;->eventId:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/WifiAssistant;->showValidationNotification(IIZ)V

    return p2

    :cond_149
    iget-object v6, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/WifiAssistant;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_159

    if-nez v3, :cond_160

    :cond_159
    const-string/jumbo v6, "handleNetworkValidationResult: wi or scan result is null"

    invoke-direct {p0, v6}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return v8

    :cond_160
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_164
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_164

    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    const/16 v7, -0x43

    if-ge v6, v7, :cond_19c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleNetworkValidationResult: rssi limit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return v8

    :cond_19c
    invoke-direct {p0}, Lcom/android/server/WifiAssistant;->selectNetwork()Lcom/android/server/WifiAssistant$NetworkCandidate;

    move-result-object v0

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v6, :cond_1b6

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-direct {p0, v6, v0, v8, v8}, Lcom/android/server/WifiAssistant;->handleExplicitlySelected(Landroid/net/Network;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    move-result v2

    :goto_1ac
    if-eqz v2, :cond_1b5

    iget-object v6, p0, Lcom/android/server/WifiAssistant;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    :cond_1b5
    return p2

    :cond_1b6
    invoke-direct {p0, p1, v0, v8, v8}, Lcom/android/server/WifiAssistant;->handleAutoConnect(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/WifiAssistant$NetworkCandidate;ZZ)Z

    move-result v2

    goto :goto_1ac
.end method

.method public isDataWifiRoamWarningEnabled()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_assistant_data_prompt"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isWifiAssistantEnabled()Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_assistant"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public maybeClearNotification(I)V
    .registers 8

    const/4 v5, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maybeClearNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WifiAssistant;->mNotificationMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v5, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "maybeClearNotification: no eventId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiAssistant;->logd(Ljava/lang/String;)V

    return-void

    :cond_38
    :try_start_38
    iget-object v3, p0, Lcom/android/server/WifiAssistant;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/server/WifiAssistant;->notificationTagFor(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4c} :catch_52

    :goto_4c
    iget-object v3, p0, Lcom/android/server/WifiAssistant;->mNotificationMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void

    :catch_52
    move-exception v0

    const-string/jumbo v3, "WifiAssistant"

    const-string/jumbo v4, "maybeClearNotification failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c
.end method
