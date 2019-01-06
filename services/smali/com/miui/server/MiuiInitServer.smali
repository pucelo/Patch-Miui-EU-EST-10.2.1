.class public Lcom/miui/server/MiuiInitServer;
.super Lmiui/os/IMiuiInit$Stub;
.source "MiuiInitServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;,
        Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;
    }
.end annotation


# static fields
.field private static final CUST_PROPERTIES_FILE_NAME:Ljava/lang/String; = "cust.prop"

.field private static final PREINSTALL_APP_HISTORY_FILE:Ljava/lang/String; = "/data/app/preinstall_history"

.field private static final PREINSTALL_PACKAGE_LIST:Ljava/lang/String; = "/data/system/preinstall.list"

.field private static final TAG:Ljava/lang/String; = "MiuiInitServer"


# instance fields
.field mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

.field private mContext:Landroid/content/Context;

.field private mDoing:Z

.field mNeedAspectSettings:Z

.field private mPreinstallHistoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreinstalledChannels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/miui/server/MiuiInitServer;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/server/MiuiInitServer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Lmiui/os/IMiuiInit$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;-><init>(Lcom/miui/server/MiuiInitServer;Lcom/miui/server/MiuiInitServer$BootCompletedReceiver;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->setMiuisdkProperties()V

    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    :try_start_29
    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v3

    iput-boolean v3, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_4b

    :goto_2f
    iget-boolean v3, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-eqz v3, :cond_56

    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v3, v3, 0x1

    :goto_37
    iput-boolean v3, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    iget-boolean v3, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v3, :cond_41

    sget-boolean v3, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v3, :cond_4a

    :cond_41
    new-instance v3, Lcom/miui/server/MiuiCompatModePackages;

    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/miui/server/MiuiCompatModePackages;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    :cond_4a
    return-void

    :catch_4b
    move-exception v0

    const-string/jumbo v3, "MiuiInitServer"

    const-string/jumbo v4, "no winowmanager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_56
    const/4 v3, 0x0

    goto :goto_37
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.SET_SCREEN_COMPATIBILITY"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public doFactoryReset(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v1, :cond_17

    const-string/jumbo v1, ""

    invoke-static {v1}, Lmiui/util/CustomizeUtil;->setMiuiCustVariatDir(Ljava/lang/String;)V

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_17
    if-nez p1, :cond_2a

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/app/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2a
    return-void
.end method

.method public getAspectRatio(Ljava/lang/String;)F
    .registers 3

    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v0, :cond_7

    const/high16 v0, 0x40400000    # 3.0f

    return v0

    :cond_7
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getAspectRatio(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getCustVariants()[Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getISOCountries()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_3a

    array-length v10, v6

    move v9, v8

    :goto_16
    if-ge v9, v10, :cond_3a

    aget-object v4, v6, v9

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_24

    :cond_20
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_16

    :cond_24
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    array-length v11, v1

    move v7, v8

    :goto_2a
    if-ge v7, v11, :cond_20

    aget-object v0, v1, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_3a
    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public getDefaultAspectType(Ljava/lang/String;)I
    .registers 3

    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, ""

    return-object v2

    :cond_a
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiInitServer;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo v2, ""

    return-object v2

    :cond_14
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    if-nez v2, :cond_1e

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPeinstalledChannelList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    :cond_1e
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mPreinstalledChannels:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_24

    return-object v0

    :cond_42
    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, ""

    return-object v4

    :cond_a
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    if-nez v4, :cond_56

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    :try_start_15
    const-string/jumbo v4, "system_data_packagename_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "system_data_path_list"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_56

    if-eqz v0, :cond_56

    array-length v4, v3

    array-length v5, v0

    if-ne v4, v5, :cond_56

    const/4 v2, 0x0

    :goto_2c
    array-length v4, v3

    if-ge v2, v4, :cond_56

    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    aget-object v5, v3, v2

    aget-object v6, v0, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_38} :catch_3b

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :catch_3b
    move-exception v1

    const-string/jumbo v4, "MiuiInitServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error occurs while get miui preinstall app path + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_62

    const-string/jumbo v4, ""

    :goto_61
    return-object v4

    :cond_62
    iget-object v4, p0, Lcom/miui/server/MiuiInitServer;->mPreinstallHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_61
.end method

.method public getNotchConfig(Ljava/lang/String;)I
    .registers 5

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v2, :cond_6

    const/4 v2, 0x0

    return v2

    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_a
    iget-object v2, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v2, p1}, Lcom/miui/server/MiuiCompatModePackages;->getNotchConfig(Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPreinstalledAppVersion(Ljava/lang/String;)I
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MiuiInitServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "check status, cust variant["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_2d
    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "MiuiInitServer"

    const-string/jumbo v1, "skip, initializing cust environment"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_7b

    monitor-exit p0

    return v3

    :cond_3c
    :try_start_3c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string/jumbo v0, "MiuiInitServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skip, cust variant["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_7b

    monitor-exit p0

    return v3

    :cond_65
    const/4 v0, 0x1

    :try_start_66
    iput-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mDoing:Z

    const-string/jumbo v0, "MiuiInitServer"

    const-string/jumbo v1, "initializing cust environment"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;-><init>(Lcom/miui/server/MiuiInitServer;Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)V

    invoke-virtual {v0}, Lcom/miui/server/MiuiInitServer$InitCustEnvironmentTask;->start()V
    :try_end_79
    .catchall {:try_start_66 .. :try_end_79} :catchall_7b

    monitor-exit p0

    return v4

    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public installPreinstallApp()V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->installCustApps()V

    return-void
.end method

.method public isPreinstalledPackage(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRestrictAspect(Ljava/lang/String;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v0, :cond_e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    :cond_e
    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeFromPreinstallList(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "miui.os.permisson.INIT_MIUI_ENVIRONMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/PreinstallApp;->removeFromPreinstallList(Ljava/lang/String;)V

    return-void
.end method

.method public setNotchSpecialMode(Ljava/lang/String;Z)V
    .registers 4

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "setNotchSpecialMode"

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiInitServer;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1, p2}, Lcom/miui/server/MiuiCompatModePackages;->setNotchSpecialMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRestrictAspect(Ljava/lang/String;Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/server/MiuiInitServer;->mNeedAspectSettings:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "setRestrictAspect"

    invoke-direct {p0, v0}, Lcom/miui/server/MiuiInitServer;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/server/MiuiInitServer;->mCompatModePackages:Lcom/miui/server/MiuiCompatModePackages;

    invoke-virtual {v0, p1, p2}, Lcom/miui/server/MiuiCompatModePackages;->setRestrictAspect(Ljava/lang/String;Z)V

    return-void
.end method
