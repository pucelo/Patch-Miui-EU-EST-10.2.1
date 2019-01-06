.class public Lcom/miui/server/enterprise/RestrictionsManagerService;
.super Lcom/miui/enterprise/IRestrictionsManager$Stub;
.source "RestrictionsManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Enterprise-restric"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceOwner:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private mHandler:Landroid/os/Handler;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/miui/server/enterprise/RestrictionsManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/miui/enterprise/IRestrictionsManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "user"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "device_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    :try_start_33
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mDeviceOwner:Landroid/content/ComponentName;
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3c} :catch_51

    :goto_3c
    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mHandler:Landroid/os/Handler;

    return-void

    :catch_51
    move-exception v0

    goto :goto_3c
.end method

.method private closeCloudBackup(I)V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string/jumbo v6, "com.xiaomi"

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v6, v7}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_1a

    aget-object v0, v1, v8

    :cond_1a
    if-eqz v0, :cond_79

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "account_name"

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "is_open"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "content://com.miui.micloud"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string/jumbo v7, "cloud_backup_info"

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v3

    iget-object v6, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.miui.cloudbackup"

    const-string/jumbo v8, "com.miui.cloudbackup.service.CloudBackupService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v6, "close_cloud_back_up"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_79
    return-void
.end method

.method private setUsbFunction(Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    const-class v3, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v4, "setCurrentFunction"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    :try_start_20
    const-class v3, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v4, "setCurrentFunction"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_4b} :catch_4c

    goto :goto_1e

    :catch_4c
    move-exception v1

    const-string/jumbo v3, "Enterprise-restric"

    const-string/jumbo v4, "Failed to set usb function"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method private shouldClose(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const/4 v2, 0x3

    if-ne p1, v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method private shouldOpen(I)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private startWatchLocationRestriction()V
    .registers 6

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/miui/server/enterprise/RestrictionsManagerService$1;

    iget-object v3, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/miui/server/enterprise/RestrictionsManagerService$1;-><init>(Lcom/miui/server/enterprise/RestrictionsManagerService;Landroid/os/Handler;)V

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private unmountPublicVolume(I)V
    .registers 9

    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v5

    iget v5, v5, Landroid/os/storage/DiskInfo;->flags:I

    and-int/2addr v5, p1

    if-ne v5, p1, :cond_13

    move-object v1, v2

    :cond_2f
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_49

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/miui/server/enterprise/RestrictionsManagerService$2;

    invoke-direct {v6, p0, v0, v4}, Lcom/miui/server/enterprise/RestrictionsManagerService$2;-><init>(Lcom/miui/server/enterprise/RestrictionsManagerService;Landroid/os/storage/StorageManager;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    :cond_49
    return-void
.end method


# virtual methods
.method bootComplete()V
    .registers 11

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "Enterprise-restric"

    const-string/jumbo v1, "Restriction init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1e
    :goto_1e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disallow_screencapture"

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1, v3}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1, v3, v2}, Lcom/miui/server/enterprise/RestrictionManagerServiceProxy;->setScreenCaptureDisabled(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;IZ)V

    :cond_40
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disallow_vpn"

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1, v3}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0x2f

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    :cond_57
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disallow_fingerprint"

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1, v3}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0x37

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    :cond_6e
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "disallow_imeiread"

    iget v3, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1, v3}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0x33

    move-object v3, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    goto :goto_1e

    :cond_86
    invoke-direct {p0}, Lcom/miui/server/enterprise/RestrictionsManagerService;->startWatchLocationRestriction()V

    return-void
.end method

.method public getControlStatus(Ljava/lang/String;I)I
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public hasRestriction(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public setControlStatus(Ljava/lang/String;II)V
    .registers 14

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v5

    if-eq v5, p3, :cond_f

    return-void

    :cond_f
    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v8, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v5, 0x4

    if-ne v4, v5, :cond_20

    :cond_1a
    const/4 v5, 0x2

    if-eq p2, v5, :cond_1f

    if-ne p2, v9, :cond_20

    :cond_1f
    return-void

    :cond_20
    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, v8, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    const-string/jumbo v5, "wifi_state"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_42
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {v3, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_4b
    :goto_4b
    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void

    :cond_51
    const-string/jumbo v5, "bluetooth_state"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    :cond_67
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_4b

    :cond_71
    const-string/jumbo v5, "gps_state"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9f

    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v5

    if-eqz v5, :cond_8c

    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "location_mode"

    invoke-static {v5, v6, v7, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_8c
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "location_mode"

    invoke-static {v5, v6, v9, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4b

    :cond_9f
    const-string/jumbo v5, "nfc_state"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    :cond_b9
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_4b

    :cond_c3
    const-string/jumbo v5, "airplane_state"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    iget-object v5, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldClose(I)Z

    move-result v5

    if-eqz v5, :cond_e0

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    :cond_e0
    invoke-direct {p0, p2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->shouldOpen(I)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto/16 :goto_4b

    :cond_eb
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown restriction item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setRestriction(Ljava/lang/String;ZI)V
    .registers 16

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_6a

    move v0, v2

    :goto_d
    invoke-static {v1, p1, v0, p3}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    const-string/jumbo v0, "disallow_vpn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_config_vpn"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v8

    if-eqz p2, :cond_57

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_57

    xor-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_57

    :try_start_2e
    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v10

    if-eqz v10, :cond_48

    iget-object v0, v10, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    :cond_48
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v9

    if-eqz v9, :cond_57

    iget-object v0, v9, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_57} :catch_20b

    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_config_vpn"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x2f

    move v2, p2

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    move v0, v3

    goto :goto_d

    :cond_6c
    const-string/jumbo v0, "disallow_tether"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_config_tethering"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v8

    if-eqz p2, :cond_8f

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne p3, v0, :cond_8f

    xor-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/miui/server/enterprise/RestrictionManagerServiceProxy;->setWifiApEnabled(Landroid/content/Context;Z)V

    :cond_8f
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_config_tethering"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto :goto_69

    :cond_98
    const-string/jumbo v0, "disallow_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_camera"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto :goto_69

    :cond_aa
    const-string/jumbo v0, "disallow_microphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_record_audio"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto :goto_69

    :cond_bc
    const-string/jumbo v0, "disallow_screencapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p3, p2}, Lcom/miui/server/enterprise/RestrictionManagerServiceProxy;->setScreenCaptureDisabled(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;IZ)V

    goto :goto_69

    :cond_cd
    const-string/jumbo v0, "disallow_sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    if-eqz p2, :cond_69

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_69

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/RestrictionsManagerService;->unmountPublicVolume(I)V

    goto :goto_69

    :cond_e3
    const-string/jumbo v0, "disallow_mtp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/usb/UsbManager;

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    const-string/jumbo v0, "none"

    invoke-direct {p0, v11, v0}, Lcom/miui/server/enterprise/RestrictionsManagerService;->setUsbFunction(Landroid/hardware/usb/UsbManager;Ljava/lang/String;)V

    goto/16 :goto_69

    :cond_107
    const-string/jumbo v0, "disable_usb_device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11f

    if-eqz p2, :cond_69

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_69

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/RestrictionsManagerService;->unmountPublicVolume(I)V

    goto/16 :goto_69

    :cond_11f
    const-string/jumbo v0, "disallow_usbdebug"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_13a

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_13a
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_69

    :cond_144
    const-string/jumbo v0, "disallow_fingerprint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_159

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x37

    move v2, p2

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    goto/16 :goto_69

    :cond_159
    const-string/jumbo v0, "disallow_factoryreset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_factory_reset"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_69

    :cond_16c
    const-string/jumbo v0, "disallow_timeset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_18a

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "auto_time"

    if-eqz p2, :cond_228

    move v0, v2

    :goto_187
    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_18a
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_change_disallow"

    if-eqz p2, :cond_22b

    :goto_195
    invoke-static {v0, v1, v2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_69

    :cond_19a
    const-string/jumbo v0, "disallow_imeiread"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x33

    move v2, p2

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    goto/16 :goto_69

    :cond_1af
    const-string/jumbo v0, "disable_accelerometer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string/jumbo v0, "disallow_backup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d5

    if-eqz p2, :cond_22e

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "com.miui.backup"

    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_69

    :cond_1d5
    const-string/jumbo v0, "disallow_auto_sync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    if-eqz p2, :cond_69

    invoke-static {v3, p3}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    invoke-direct {p0, p3}, Lcom/miui/server/enterprise/RestrictionsManagerService;->closeCloudBackup(I)V

    goto/16 :goto_69

    :cond_1e8
    const-string/jumbo v0, "disallow_safe_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1fb

    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    goto/16 :goto_69

    :cond_1fb
    const-string/jumbo v0, "disallow_change_language"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23f

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto/16 :goto_69

    :catch_20b
    move-exception v7

    const-string/jumbo v0, "Enterprise-restric"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Something wrong while close vpn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    :cond_228
    move v0, v3

    goto/16 :goto_187

    :cond_22b
    move v2, v3

    goto/16 :goto_195

    :cond_22e
    iget-object v0, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "com.miui.backup"

    iget-object v4, p0, Lcom/miui/server/enterprise/RestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto/16 :goto_69

    :cond_23f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown restriction item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
