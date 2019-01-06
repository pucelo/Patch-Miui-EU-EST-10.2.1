.class public Lcom/miui/server/enterprise/DeviceManagerService;
.super Lcom/miui/enterprise/IDeviceManager$Stub;
.source "DeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final PERSIST_ANIMATION_PATH:Ljava/lang/String; = "/persist/bootanimation.zip"

.field private static final TAG:Ljava/lang/String; = "Enterprise-device"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceHandler:Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/miui/server/enterprise/DeviceManagerService;)Landroid/net/wifi/WifiManager;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/miui/enterprise/IDeviceManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DeviceManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;-><init>(Lcom/miui/server/enterprise/DeviceManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mServiceHandler:Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;

    return-void
.end method

.method private rebootWifi()V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mServiceHandler:Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;

    new-instance v1, Lcom/miui/server/enterprise/DeviceManagerService$3;

    invoke-direct {v1, p0}, Lcom/miui/server/enterprise/DeviceManagerService$3;-><init>(Lcom/miui/server/enterprise/DeviceManagerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/enterprise/DeviceManagerService$ServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    return-void
.end method


# virtual methods
.method public captureScreen()Landroid/graphics/Bitmap;
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-object v0
.end method

.method public deviceReboot()V
    .registers 6

    iget-object v2, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_13
    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public deviceShutDown()V
    .registers 6

    iget-object v2, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_13
    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public enableUsbDebug(Z)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "adb_enabled"

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public formatSdCard()V
    .registers 8

    iget-object v5, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    iget v5, v5, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_18

    move-object v1, v2

    :cond_36
    if-eqz v1, :cond_50

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_50

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/miui/server/enterprise/DeviceManagerService$1;

    invoke-direct {v6, p0, v0, v4}, Lcom/miui/server/enterprise/DeviceManagerService$1;-><init>(Lcom/miui/server/enterprise/DeviceManagerService;Landroid/os/storage/StorageManager;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :cond_50
    return-void
.end method

.method public getIpBlackList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_ip_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIpWhiteList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_ip_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrlBlackList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_url_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUrlWhiteList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_url_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApBssidBlackList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_ap_bssid_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApBssidWhiteList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_ap_bssid_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApSsidBlackList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_ap_ssid_black_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApSsidWhiteList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_ap_ssid_white_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiConnRestriction(I)I
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_conn_restriction_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isDeviceRoot()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/xbin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public recoveryFactory(Z)V
    .registers 5

    iget-object v1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "format_sdcard"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_25

    const-string/jumbo v1, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_25
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setBootAnimation(Landroid/os/ParcelFileDescriptor;)Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_14

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/miui/server/enterprise/DeviceManagerService$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/server/enterprise/DeviceManagerService$2;-><init>(Lcom/miui/server/enterprise/DeviceManagerService;Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x1

    return v1

    :catch_14
    move-exception v0

    const-string/jumbo v1, "Enterprise-device"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has no permission to access this API"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setBrowserRestriction(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_host_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public setIpBlackList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_ip_black_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setIpRestriction(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_ip_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public setIpWhiteList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_ip_white_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setRingerMode(I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public setUrlBlackList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_url_white_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setUrlWhiteList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_url_white_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setWifiApBssidBlackList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_ap_bssid_black_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    return-void
.end method

.method public setWifiApBssidWhiteList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_ap_bssid_white_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    return-void
.end method

.method public setWifiApSsidBlackList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_ap_ssid_black_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    return-void
.end method

.method public setWifiApSsidWhiteList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_ap_ssid_white_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    return-void
.end method

.method public setWifiConnRestriction(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/DeviceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_wifi_conn_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/miui/server/enterprise/DeviceManagerService;->rebootWifi()V

    return-void
.end method
