.class public Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "WifiSignalControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;",
        "Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field private final mHasMobileData:Z

.field protected final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field protected final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V
    .locals 13

    const-string/jumbo v2, "WifiSignalController"

    const/4 v4, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mHasMobileData:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v11}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-object v12, v1

    check-cast v12, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    new-instance v1, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    const-string/jumbo v2, "Wi-Fi Icons"

    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const v6, 0x7f080646

    const v7, 0x7f0801b4

    const v8, 0x7f080646

    const v9, 0x7f0801b4

    const v10, 0x7f11008a

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iput-object v1, v2, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v1, v12, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    return-void
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    move-result-object v0

    return-object v0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;-><init>()V

    return-object v0
.end method

.method public getCurrentIconId()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080646

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/SignalController;->getCurrentIconId()I

    move-result v0

    return v0
.end method

.method protected getOverlayIconResource()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->enabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->connected:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->rssi:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->level:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->level:I

    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->updateWifiNoNetwork()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->notifyListenersIfNecessary()V

    return-void
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->enabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->connected:Z

    :goto_0
    if-eqz v10, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    :goto_1
    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->getContentDescription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->inetCondition:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mContext:Landroid/content/Context;

    const v4, 0x7f1100cc

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->getCurrentIconId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->getOverlayIconResource()I

    move-result v1

    invoke-direct {v2, v10, v0, v1, v8}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILjava/lang/String;)V

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->connected:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->getQsCurrentIconId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->getContentDescription()I

    move-result v4

    invoke-direct {v3, v0, v1, v4, v8}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->enabled:Z

    if-eqz v9, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->activityIn:Z

    :goto_3
    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->activityOut:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V

    return-void

    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    move v4, v5

    goto :goto_3
.end method

.method setActivity(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    if-eq p1, v4, :cond_1

    if-ne p1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->activityIn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    if-eq p1, v4, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->activityOut:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->notifyListenersIfNecessary()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public updateWifiNoNetwork()V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->connected:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iput-boolean v2, v3, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->noNetwork:Z

    return-void
.end method
