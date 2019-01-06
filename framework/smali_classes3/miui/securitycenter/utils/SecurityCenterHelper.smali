.class public Lmiui/securitycenter/utils/SecurityCenterHelper;
.super Ljava/lang/Object;
.source "SecurityCenterHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseStatusPanels(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void
.end method

.method public static forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_a

    return-void

    :cond_a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_11

    return-void

    :cond_11
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x3e7

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/16 v4, 0x3e7

    invoke-interface {v2, p1, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method

.method public static getApnsXml(Landroid/content/Context;)Landroid/content/res/XmlResourceParser;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1170000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getBrightnessDimInt(Landroid/content/Context;)I
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getLabel(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_6
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_3a
    .catchall {:try_start_6 .. :try_end_b} :catchall_4d

    :try_start_b
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    new-instance v6, Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iget v7, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_57
    .catchall {:try_start_b .. :try_end_1d} :catchall_54

    if-eqz v7, :cond_25

    :try_start_1f
    iget v7, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_24} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_24} :catch_57
    .catchall {:try_start_1f .. :try_end_24} :catchall_54

    move-result-object v4

    :cond_25
    :goto_25
    if-nez v4, :cond_2d

    :try_start_27
    iget-object v7, p2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v7, :cond_37

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_2d
    :goto_2d
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_30} :catch_57
    .catchall {:try_start_27 .. :try_end_30} :catchall_54

    move-result-object v7

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    :cond_36
    return-object v7

    :cond_37
    :try_start_37
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_39} :catch_57
    .catchall {:try_start_37 .. :try_end_39} :catchall_54

    goto :goto_2d

    :catch_3a
    move-exception v3

    :goto_3b
    :try_start_3b
    const-string/jumbo v7, "getLabel"

    const-string/jumbo v8, "getLabel error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_4d

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_49
    const-string/jumbo v7, ""

    return-object v7

    :catchall_4d
    move-exception v7

    :goto_4e
    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_53
    throw v7

    :catchall_54
    move-exception v7

    move-object v0, v1

    goto :goto_4e

    :catch_57
    move-exception v3

    move-object v0, v1

    goto :goto_3b

    :catch_5a
    move-exception v2

    goto :goto_25
.end method

.method public static getProcessPss([I)[J
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getUserAll()Landroid/os/UserHandle;
    .registers 1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static getUserId(I)I
    .registers 2

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static isAutomaticBrightnessAvailable(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static packageHasActiveAdmins(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
