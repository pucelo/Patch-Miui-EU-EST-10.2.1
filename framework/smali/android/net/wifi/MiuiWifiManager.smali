.class public Landroid/net/wifi/MiuiWifiManager;
.super Ljava/lang/Object;
.source "MiuiWifiManager.java"


# static fields
.field private static final BASE:I = 0x25fa0

.field public static final CMD_GET_CONNECTED_STATIONS:I = 0x25faa

.field public static final CMD_GET_OBSERVED_ACCESSPOINTS:I = 0x25fa3

.field public static final CMD_IGNORE_OBSERVED_AP:I = 0x25fa7

.field public static final CMD_SET_OBSERVED_ACCESSPOINTS:I = 0x25fa2

.field public static final CMD_SET_POWER_SAVE_ENABLED:I = 0x25fa9

.field public static final CMD_SET_SAR_LIMIT:I = 0x25fa8

.field public static final CMD_SET_WIFI_EXPLICITED:I = 0x25fa5

.field public static final CMD_SET_WIRELESS_CONNECT_MODE:I = 0x25fa4

.field public static final CMD_VERIFY_PRE_SHARED_KEY:I = 0x25fa6

.field public static final EXTRA_APS:Ljava/lang/String; = "extra_aps"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CONFIG:Ljava/lang/String; = "config"

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field public static final EXTRA_STATIONS:Ljava/lang/String; = "stations"

.field public static final FAILED:I = 0x2

.field public static final GET_SUPPLICANT_CONFIGURATION:I = 0x25fa1

.field private static final MAX_RSSI:I = -0x41

.field private static final MIN_RSSI:I = -0x64

.field public static final OBSERVED_ACCESSPOINTS_CHANGED:Ljava/lang/String; = "android.net.wifi.observed_accesspionts_changed"

.field public static final OBSERVED_OPENAPS_CHANGED:Ljava/lang/String; = "android.net.wifi.observed_open_accesspionts_changed"

.field public static final SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiWifiManager"

.field public static final WPS_DEVICE_GUEST:Ljava/lang/String; = "guest"

.field public static final WPS_DEVICE_XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static sInstance:Landroid/net/wifi/MiuiWifiManager;


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method private constructor <init>()V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string/jumbo v3, "wifi"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "MiuiWifiManager"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    const-string/jumbo v3, "MiuiWifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "build WifiConfigForSupplicant failed exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public static calculateSignalLevel(II)I
    .registers 6

    const/16 v2, -0x64

    if-gt p0, v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_6
    const/16 v2, -0x41

    if-lt p0, v2, :cond_d

    add-int/lit8 v2, p1, -0x1

    return v2

    :cond_d
    const/high16 v0, 0x420c0000    # 35.0f

    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x420c0000    # 35.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method public static enablePowerSave(Z)V
    .registers 5

    const-string/jumbo v1, "MiuiWifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enable power save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25fa9

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p0, :cond_30

    const/4 v1, 0x1

    :goto_26
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/net/wifi/MiuiWifiManager;->getInstance()Landroid/net/wifi/MiuiWifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    return-void

    :cond_30
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public static getInstance()Landroid/net/wifi/MiuiWifiManager;
    .registers 1

    sget-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    if-nez v0, :cond_b

    new-instance v0, Landroid/net/wifi/MiuiWifiManager;

    invoke-direct {v0}, Landroid/net/wifi/MiuiWifiManager;-><init>()V

    sput-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    :cond_b
    sget-object v0, Landroid/net/wifi/MiuiWifiManager;->sInstance:Landroid/net/wifi/MiuiWifiManager;

    return-object v0
.end method

.method public static ignoreApsForScanObserver(Ljava/util/ArrayList;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string/jumbo v2, "MiuiWifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ignore observed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x25fa7

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "bssid"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_3d

    const/4 v2, 0x1

    :goto_33
    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/net/wifi/MiuiWifiManager;->getInstance()Landroid/net/wifi/MiuiWifiManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    return-void

    :cond_3d
    const/4 v2, 0x0

    goto :goto_33
.end method

.method public static setSARLimit(I)V
    .registers 5

    const-string/jumbo v1, "MiuiWifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set SAR limit to SET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25fa8

    iput v1, v0, Landroid/os/Message;->what:I

    iput p0, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/net/wifi/MiuiWifiManager;->getInstance()Landroid/net/wifi/MiuiWifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    return-void
.end method

.method public static verifyPreSharedKey(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .registers 8

    const-string/jumbo v4, "MiuiWifiManager"

    const-string/jumbo v5, "Verify shared key"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_1a

    const-string/jumbo v4, "MiuiWifiManager"

    const-string/jumbo v5, "Cannot verify shared key in api lower than 23"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_1a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "config"

    invoke-virtual {v0, v4, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v4, "key"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v4, 0x25fa6

    iput v4, v1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/net/wifi/MiuiWifiManager;->getInstance()Landroid/net/wifi/MiuiWifiManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/MiuiWifiManager;->sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    iget v4, v2, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_48

    const/4 v3, 0x1

    :goto_44
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    return v3

    :cond_48
    const/4 v3, 0x0

    goto :goto_44
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getObservedAccessPionts()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v4, 0x25fa3

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v4, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget v4, v2, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    if-eqz v0, :cond_22

    const-string/jumbo v4, "extra_aps"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_22
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    return-object v3
.end method

.method public sendAsyncMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendSyncMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public setCompatibleMode(Z)V
    .registers 5

    iget-object v1, p0, Landroid/net/wifi/MiuiWifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_5
    const v2, 0x25fa4

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setNetworkExplicited()V
    .registers 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const v1, 0x25fa5

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setObservedAccessPionts(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_aps"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x25fa2

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Landroid/net/wifi/MiuiWifiManager;->sendAsyncMessage(Landroid/os/Message;)V

    return-void
.end method
