.class public Lcom/android/systemui/statusbar/policy/WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;
.source "WifiSignalController.java"


# instance fields
.field private final mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field private mScoringUiEnabled:Z


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/WifiSignalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoringUiEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/WifiSignalController;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getWifiBadgeEnum()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoringUiEnabled:Z

    new-instance v0, Landroid/net/wifi/WifiNetworkScoreCache;

    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->configureScoringGating()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->registerScoreCache()V

    return-void
.end method

.method private configureScoringGating()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/WifiSignalController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_scoring_ui_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private getWifiBadgeEnum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private registerScoreCache()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Registered score cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0, v2, v1, v2}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    return-void
.end method

.method private updateScoreCacheIfNecessary(Landroid/net/NetworkKey;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    invoke-virtual {v0, p1}, Landroid/net/NetworkKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkScoreCache;->clearScores()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/NetworkKey;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getCurrentIconId()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/settingslib/Utils;->WIFI_PIE_FOR_BADGING:[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->level:I

    aget v0, v1, v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->getCurrentIconId()I

    move-result v0

    return v0
.end method

.method protected getOverlayIconResource()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    invoke-static {v0}, Lcom/android/settingslib/Utils;->getWifiBadgeResource(I)I

    move-result v0

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v0, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->networkKey:Landroid/net/NetworkKey;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateScoreCacheIfNecessary(Landroid/net/NetworkKey;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->isTransient:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getWifiBadgeEnum()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase$WifiState;->badgeEnum:I

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalControllerBase;->handleBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v2, v2, Lcom/android/settingslib/wifi/WifiStatusTracker;->connecting:Z

    goto :goto_0
.end method
