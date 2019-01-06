.class final Lmiui/maml/ActionCommand$WifiStateTracker;
.super Lmiui/maml/ActionCommand$StateTracker;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# static fields
.field private static final MAX_SCAN_ATTEMPT:I = 0x3


# instance fields
.field public zConnected:Z

.field private zScanAttempt:I


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lmiui/maml/ActionCommand$StateTracker;-><init>()V

    iput-boolean v0, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    iput v0, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/ActionCommand$WifiStateTracker;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/ActionCommand$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .registers 2

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x4

    return v0

    :pswitch_5
    const/4 v0, 0x0

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_9
    const/4 v0, 0x3

    return v0

    :pswitch_b
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .registers 4

    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lmiui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    return v1

    :cond_14
    const/4 v1, 0x4

    return v1
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x3

    const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const-string/jumbo v5, "wifi_state"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lmiui/maml/ActionCommand$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lmiui/maml/ActionCommand$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    if-ne v7, v2, :cond_25

    iput-boolean v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    iput v4, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string/jumbo v5, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    iget v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ge v3, v7, :cond_25

    iget v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    if-ne v3, v7, :cond_25

    iput-boolean v4, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_25

    :cond_42
    const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    iput v7, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zScanAttempt:I

    const-string/jumbo v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_66

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v1, :cond_69

    :cond_66
    :goto_66
    iput-boolean v3, p0, Lmiui/maml/ActionCommand$WifiStateTracker;->zConnected:Z

    goto :goto_25

    :cond_69
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_66

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_66

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v1, :cond_66

    move v3, v4

    goto :goto_66
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .registers 7

    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    new-instance v0, Lmiui/maml/util/WifiApHelper;

    invoke-direct {v0, p1}, Lmiui/maml/util/WifiApHelper;-><init>(Landroid/content/Context;)V

    if-nez v1, :cond_1a

    const-string/jumbo v2, "ActionCommand"

    const-string/jumbo v3, "No wifiManager."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    new-instance v2, Lmiui/maml/ActionCommand$WifiStateTracker$1;

    invoke-direct {v2, p0, v1, p2, v0}, Lmiui/maml/ActionCommand$WifiStateTracker$1;-><init>(Lmiui/maml/ActionCommand$WifiStateTracker;Landroid/net/wifi/WifiManager;ZLmiui/maml/util/WifiApHelper;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lmiui/maml/ActionCommand$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
