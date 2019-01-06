.class public Lcom/android/server/pm/PreinstallApp;
.super Ljava/lang/Object;
.source "PreinstallApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreinstallApp$Item;
    }
.end annotation


# static fields
.field private static final CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final DEBUG:Z = true

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final INSTALL_DIR:Ljava/lang/String; = "/data/app/"

.field private static final MIUI_APP_PATH_L_LENGTH:I = 0x7

.field private static final NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final NOT_OTA_PACKAGE_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OLD_PREINSTALL_APP_DIR:Ljava/io/File;

.field private static final OLD_PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/system/preinstall_history"

.field private static final OTA_SKIP_BUSINESS_APP_LIST_FILE:Ljava/io/File;

.field private static final PREINSTALL_HISTORY_FILE:Ljava/lang/String; = "/data/app/preinstall_history"

.field private static final PREINSTALL_PACKAGE_LIST:Ljava/lang/String; = "/data/system/preinstall.list"

.field private static final RECOMMENDED_APP_DIR:Ljava/io/File;

.field private static final RETRY_INSTALL_CNT:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static mPackageVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIgnorePreinstallApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNewUpdatedSystemPreinstallApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPreinstallApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/io/File;)Ljava/io/File;
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/server/pm/PreinstallApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/miui/apps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiNoCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedAppDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/miui/app/recommended"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/ota_skip_apps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->OTA_SKIP_BUSINESS_APP_LIST_FILE:Ljava/io/File;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->NOT_OTA_PACKAGE_NAMES:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    if-nez v0, :cond_65

    sget-boolean v0, Lmiui/os/Build;->IS_MITHREE:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_65

    const-string/jumbo v0, "ota-miui-MiTagApp.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    :cond_65
    const-string/jumbo v0, "support_ir"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_75

    const-string/jumbo v0, "partner-XMRemoteController.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    :cond_75
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_8b

    const-string/jumbo v0, "cn.cj.pe_cactus_cereus.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    const-string/jumbo v0, "com.chinamobile.mcloud_cactus_cereus.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    const-string/jumbo v0, "com.cmcc.cmvideo_cactus_cereus.apk"

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->ignorePreinstallApks(Ljava/lang/String;)V

    :cond_8b
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5a

    const/4 v3, 0x0

    array-length v4, v2

    :goto_8
    if-ge v3, v4, :cond_5a

    aget-object v1, v2, v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_24

    move-object v0, v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->isApkFile(Ljava/io/File;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_34

    :cond_21
    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_24
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->getBaseApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_21

    :cond_34
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    if-eqz p2, :cond_4e

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_21

    :cond_4e
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_52
    move-object v0, v1

    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->isApkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_21

    :cond_5a
    return-void
.end method

.method private static addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_b

    :catch_31
    move-exception v1

    sget-object v3, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error occurs while read preinstalled channels "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    return-void

    :cond_4c
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_31

    goto :goto_4b
.end method

.method private static copyNewPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0
.end method

.method private static copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_b

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallForVersionUnder21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0

    :cond_b
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppForVersionEqualOrAbove21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    return v0
.end method

.method private static copyPreinstallAppForVersionEqualOrAbove21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .registers 11

    const/4 v7, 0x0

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    return v7

    :cond_a
    const/4 v1, 0x0

    if-eqz p2, :cond_18

    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->underData(Lcom/android/server/pm/PackageSetting;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerProxy;->cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z

    iget-object v1, p2, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    :cond_18
    if-nez v1, :cond_2d

    iget v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_59

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/app/"

    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->deleteFileOrDirectory(Ljava/io/File;)V

    :cond_36
    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->createIfNonexist(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v3, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_72

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v7}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    :goto_51
    if-eqz v2, :cond_58

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    :cond_58
    return v2

    :cond_59
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/app/"

    iget-object v4, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ".apk"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_72
    const/4 v2, 0x0

    goto :goto_51
.end method

.method public static copyPreinstallApps(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 5

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Detected encryption in progress - can\'t copy preinstall apps now!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->readPackageVersionMap()V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_28
    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->parseAndDeleteDuplicatePreinstallApps()V

    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppsForFirstBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    :goto_34
    return-void

    :cond_35
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallAppsForBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    goto :goto_34

    :cond_3f
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Nothing need copy for normal boot."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private static copyPreinstallAppsForBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 16

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->OTA_SKIP_BUSINESS_APP_LIST_FILE:Ljava/io/File;

    sget-object v10, Lcom/android/server/pm/PreinstallApp;->NOT_OTA_PACKAGE_NAMES:Ljava/util/Set;

    invoke-static {v9, v10}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "copy preinstall apps start"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreinstallApp$Item;

    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->skipOTA(Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v9

    if-eqz v9, :cond_54

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ota skip copy business preinstall app which under /system/data-app, packageName is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_54
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v9

    if-nez v9, :cond_26

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v9}, Lcom/android/server/pm/PreinstallApp;->signCheck(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_6b

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Skip copying when the sign is false."

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_6b
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recorded(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v7

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-static {p0, v9}, Lcom/android/server/pm/PreinstallApp;->systemAppDeletedOrDisabled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e2

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_e2

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Skip copying new system updated preinstall app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", update it after system ready"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerProxy;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-eqz v5, :cond_b3

    iget-object v9, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v9, :cond_d9

    :cond_b3
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed, skip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_d9
    iput-object v5, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :cond_e2
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_163

    if-nez v7, :cond_134

    invoke-static {p0, v3}, Lcom/android/server/pm/PreinstallApp;->copyNewPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v9

    if-eqz v9, :cond_10e

    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_26

    :cond_10e
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_134
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "User had uninstalled "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", skip coping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_26

    :cond_163
    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v9, v9, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iget v10, v6, Lcom/android/server/pm/PackageSetting;->versionCode:I

    if-gt v9, v10, :cond_1ae

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not newer than "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/server/pm/PackageSetting;->versionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", skip coping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_26

    :cond_1ae
    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerProxy;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-eqz v5, :cond_1ba

    iget-object v9, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v9, :cond_1e0

    :cond_1ba
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed, skip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_1e0
    iget-object v9, v5, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v10, v6, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, v10, Lcom/android/server/pm/PackageSignatures;->mSignatures:[Landroid/content/pm/Signature;

    invoke-static {v9, v10}, Lcom/android/server/pm/PackageManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v9

    if-nez v9, :cond_224

    const/4 v8, 0x1

    :goto_1ed
    if-nez v8, :cond_226

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_226

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mismatch signature with system app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", skip coping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_26

    :cond_224
    const/4 v8, 0x0

    goto :goto_1ed

    :cond_226
    if-nez v8, :cond_286

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mismatch signature with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", delete it\'s resources and data before coping"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v9, v12}, Lcom/android/server/pm/PackageManagerService;->deleteDataPackage(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_286

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Delete mismatch signature app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed, skip coping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_286
    invoke-static {p0, v3, v6}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_291

    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_26

    :cond_291
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    :cond_2b7
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "copy preinstall apps end, consume "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static copyPreinstallAppsForFirstBoot(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->existHistory()Z

    move-result v9

    if-eqz v9, :cond_18

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Exist preinstall history, skip copying preinstall apps for first boot!"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Copy preinstall apps start for first boot"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_128

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreinstallApp$Item;

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v9}, Lcom/android/server/pm/PreinstallApp;->signCheck(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_4c

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Skip copying when the sign is false for first boot."

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_4c
    iget-object v7, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget-object v9, v7, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/pm/PreinstallApp;->isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_b4

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Skip copying new system updated preinstall app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", update it after system ready"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerProxy;->parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    if-eqz v5, :cond_8e

    iput-object v5, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_8e
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed, skip"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :cond_b4
    invoke-static {p0, v3, v8}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z

    move-result v9

    if-eqz v9, :cond_102

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for first boot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    if-eqz v9, :cond_fd

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget-object v9, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_fd

    iget-object v9, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget-object v9, v9, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget-object v10, v3, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v10, v10, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fd
    invoke-static {v2, v3}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    goto/16 :goto_2f

    :cond_102
    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " failed for first boot"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :cond_128
    invoke-static {v2}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/Map;)V

    sget-object v9, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy preinstall apps end for first boot, consume "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static copyPreinstallForVersionUnder21(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PackageSetting;)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_b

    return v4

    :cond_b
    if-eqz p2, :cond_36

    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->underData(Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerProxy;->cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    :goto_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_21
    iget-object v2, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v1

    :goto_2e
    if-eqz v1, :cond_35

    iget-object v2, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    :cond_35
    return v1

    :cond_36
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/app/"

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_45
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method private static createIfNonexist(Ljava/io/File;)V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p0, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {p0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_14
    return-void
.end method

.method private static dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")Z"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static dealed(Ljava/util/Map;Ljava/io/File;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_2e

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/system/data-app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private static deleteContents(Ljava/io/File;)Z
    .registers 9

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    const/4 v3, 0x0

    array-length v4, v1

    :goto_9
    if-ge v3, v4, :cond_3b

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_38

    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_3b
    return v2
.end method

.method private static deleteFileOrDirectory(Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->deleteContents(Ljava/io/File;)Z

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static existHistory()Z
    .registers 3

    const/4 v2, 0x1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/app/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    return v2

    :cond_10
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v2

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private static getAllPreinstallApplist()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->getPreinstallApplist(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getApkFile(Ljava/io/File;)Ljava/io/File;
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->getBaseApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_b
    return-object p0
.end method

.method private static getBaseApkFile(Ljava/io/File;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCustomizePreinstallAppList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/pm/PreinstallApp;->getPreinstallApplist(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPeinstalledChannelList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/customized_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ota_customized_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/recommended_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/ota_recommended_channellist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PreinstallApp;->addPreinstallChannelToList(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)V

    :cond_73
    return-object v2
.end method

.method private static getPreinstallApplist(Z)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_42

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "customized_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "ota_customized_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "recommended_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "ota_recommended_applist"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    :cond_42
    sget-object v4, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {v2, v4, v1}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    sget-object v4, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    invoke-static {v2, v4, v3}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    if-nez p0, :cond_53

    sget-object v4, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {v2, v4, v6}, Lcom/android/server/pm/PreinstallApp;->addPreinstallAppToList(Ljava/util/List;Ljava/io/File;Ljava/util/Set;)V

    :cond_53
    return-object v2
.end method

.method public static getPreinstalledAppVersion(Ljava/lang/String;)I
    .registers 4

    sget-object v2, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_15

    move-result v1

    :goto_11
    monitor-exit v2

    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_11

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static ignorePreinstallApks(Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v2, v4, [Ljava/io/File;

    sget-object v4, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    aput-object v4, v2, v3

    sget-object v4, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    sget-object v4, Lcom/android/server/pm/PreinstallApp;->RECOMMENDED_APP_DIR:Ljava/io/File;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    array-length v4, v2

    :goto_13
    if-ge v3, v4, :cond_8f

    aget-object v1, v2, v3

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_47

    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_47
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".apk"

    const-string/jumbo v7, ""

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8c

    sget-object v5, Lcom/android/server/pm/PreinstallApp;->sIgnorePreinstallApks:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_8f
    return-void
.end method

.method public static installCustApps()V
    .registers 16

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getCustomizePreinstallAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_17

    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, " No cust app need to install"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Install cust apps start"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_34

    const/4 v11, 0x2

    invoke-static {v9, v0, v11}, Lcom/android/server/pm/PreinstallApp;->tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a4

    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Install cust app ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] mtime["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    if-eqz v8, :cond_a0

    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_a0

    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget v12, v8, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a0
    invoke-static {v6, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    goto :goto_34

    :cond_a4
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Install cust app ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "] fail, result["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    :cond_d5
    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/Map;)V

    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Install cust apps end, consume "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v4

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static installNewUpdatedSystemPreinstallApps()V
    .registers 14

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_15

    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "No updated system preinstall apps need to install"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Install updated system preinstall apps start"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    sget-object v10, Lcom/android/server/pm/PreinstallApp;->sNewUpdatedSystemPreinstallApps:Ljava/util/Set;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2f
    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_df

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreinstallApp$Item;

    invoke-static {v3, v4}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v10

    if-nez v10, :cond_2f

    iget-object v7, v4, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    const/4 v6, 0x0

    :try_start_44
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v11, 0x40

    const/4 v12, 0x0

    invoke-interface {v8, v10, v11, v12}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4c} :catch_82

    move-result-object v6

    if-eqz v6, :cond_87

    iget v10, v7, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    if-gt v10, v11, :cond_87

    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is not newer than "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", skip"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_82
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f

    :cond_87
    iget-object v10, v4, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    const/4 v11, 0x2

    invoke-static {v8, v10, v11}, Lcom/android/server/pm/PreinstallApp;->tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_b6

    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Install new updated system preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4}, Lcom/android/server/pm/PreinstallApp;->recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V

    :goto_b1
    invoke-static {v3}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    goto/16 :goto_2f

    :cond_b6
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Install new updated system preinstall app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " failed, result "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    :cond_df
    sget-object v10, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Install updated system preinstall apps end, consume "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v0

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static installVanwardCustApps()V
    .registers 16

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getCustomizePreinstallAppList()Ljava/util/List;

    move-result-object v3

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v13

    const-string/jumbo v14, "vanward_applist"

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v12, v11}, Lcom/android/server/pm/PreinstallApp;->readLineToSet(Ljava/io/File;Ljava/util/Set;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_28

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_31

    :cond_28
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "No vanward cust app need to install"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Install vanward cust apps start"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/util/Map;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4e
    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/pm/PreinstallApp;->getApkFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4e

    invoke-static {v6, v0}, Lcom/android/server/pm/PreinstallApp;->dealed(Ljava/util/Map;Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_4e

    const/4 v12, 0x2

    invoke-static {v9, v0, v12}, Lcom/android/server/pm/PreinstallApp;->tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_c8

    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "install vanward cust app ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "] mtime["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    if-eqz v8, :cond_c4

    iget-object v12, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_c4

    iget-object v12, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget v13, v8, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c4
    invoke-static {v6, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    goto :goto_4e

    :cond_c8
    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Install vanward cust app ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "] fail, result["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    :cond_f9
    invoke-static {v6}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/util/Map;)V

    invoke-static {v7}, Lcom/android/server/pm/PreinstallApp;->writePreinstallPackage(Ljava/util/Map;)V

    sget-object v12, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Install vanward cust apps end, consume "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v4

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final isApkFile(Ljava/io/File;)Z
    .registers 3

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isPreinstallApp(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPreinstalledPackage(Ljava/lang/String;)Z
    .registers 3

    sget-object v1, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static isSamePackage(Ljava/io/File;Ljava/io/File;)Z
    .registers 8

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    if-eqz v0, :cond_f

    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v2, :cond_34

    :cond_f
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed, return false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_34
    if-eqz v1, :cond_3a

    iget-object v2, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v2, :cond_5f

    :cond_3a
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed, return false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5f
    iget-object v2, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const/4 v2, 0x1

    return v2

    :cond_6b
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isSamePackage return false."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private static isSystemAndNotUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 2

    if-eqz p0, :cond_f

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static isSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private static isUpdatedSystemApp(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string/jumbo v1, "/data/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static isValidIme(Ljava/lang/String;Ljava/util/Locale;)Z
    .registers 7

    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_47

    aget-object v2, v1, v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    aget-object v2, v1, v0

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    aget-object v2, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_42
    const/4 v2, 0x1

    return v2

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_47
    const/4 v2, 0x0

    return v2
.end method

.method private static parseAndDeleteDuplicatePreinstallApps()V
    .registers 16

    const/4 v14, 0x0

    invoke-static {}, Lcom/android/server/pm/PreinstallApp;->getAllPreinstallApplist()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v8

    if-eqz v8, :cond_23

    iget-object v11, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-nez v11, :cond_48

    :cond_23
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Parse "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " failed, skip"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_48
    iget-object v7, v8, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/android/server/pm/PreinstallApp$Item;

    invoke-direct {v2, v7, v5, v8, v14}, Lcom/android/server/pm/PreinstallApp$Item;-><init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;Landroid/content/pm/PackageParser$Package;)V

    sget-object v11, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5d

    sget-object v11, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v11, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_5d
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreinstallApp$Item;

    invoke-static {v2, v4}, Lcom/android/server/pm/PreinstallApp$Item;->betterThan(Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PreinstallApp$Item;)Z

    move-result v11

    if-eqz v11, :cond_ad

    sget-object v11, Lcom/android/server/pm/PreinstallApp;->sPreinstallApps:Ljava/util/Map;

    invoke-interface {v11, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_70
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is better than "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", ignore "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/server/pm/PreinstallApp$Item;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " !!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_ad
    move-object v10, v2

    move-object v3, v4

    move-object v4, v2

    move-object v2, v3

    goto :goto_70

    :cond_b2
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Parse preinstall apps, consume "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v0

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static readHistory(Ljava/lang/String;Ljava/util/Map;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v10, 0x0

    :try_start_2
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_165
    .catchall {:try_start_2 .. :try_end_c} :catchall_160

    move-result v21

    if-nez v21, :cond_16

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_16
    :try_start_16
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_165
    .catchall {:try_start_16 .. :try_end_1b} :catchall_160

    :try_start_1b
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_168
    .catchall {:try_start_1b .. :try_end_20} :catchall_162

    const/4 v13, 0x0

    const/16 v19, 0x0

    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_156

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_23

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_39} :catch_a2
    .catchall {:try_start_23 .. :try_end_39} :catchall_14c

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_23

    const-wide/16 v14, 0x0

    const/16 v21, 0x1

    :try_start_45
    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_4e} :catch_16c
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4e} :catch_a2
    .catchall {:try_start_45 .. :try_end_4e} :catchall_14c

    move-result-wide v14

    const/16 v21, 0x0

    :try_start_51
    aget-object v21, v20, v21

    sget-object v22, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_ac

    const/16 v21, 0x0

    aget-object v21, v20, v21

    sget-object v22, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/android/server/pm/PreinstallApp;->CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v21, 0x0

    aget-object v21, v20, v21

    sget-object v22, Lcom/android/server/pm/PreinstallApp;->OLD_PREINSTALL_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/android/server/pm/PreinstallApp;->NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_a1} :catch_a2
    .catchall {:try_start_51 .. :try_end_a1} :catchall_14c

    goto :goto_23

    :catch_a2
    move-exception v7

    move-object v10, v11

    move-object v5, v6

    :goto_a5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_ab
    return-void

    :cond_ac
    :try_start_ac
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_139

    const/16 v21, 0x0

    aget-object v21, v20, v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_139

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_139

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    aget-object v9, v18, v21

    const-string/jumbo v21, ".apk"

    const-string/jumbo v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v21, 0x0

    aget-object v21, v20, v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    new-instance v17, Ljava/io/File;

    const/16 v21, 0x0

    aget-object v21, v20, v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_139

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/pm/PreinstallApp;->isSamePackage(Ljava/io/File;Ljava/io/File;)Z

    move-result v21

    if-eqz v21, :cond_139

    const/16 v21, 0x0

    aput-object v19, v20, v21

    :cond_139
    const/16 v21, 0x0

    aget-object v21, v20, v21

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_14a} :catch_a2
    .catchall {:try_start_ac .. :try_end_14a} :catchall_14c

    goto/16 :goto_23

    :catchall_14c
    move-exception v21

    move-object v10, v11

    move-object v5, v6

    :goto_14f
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v21

    :cond_156
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v10, v11

    move-object v5, v6

    goto/16 :goto_ab

    :catchall_160
    move-exception v21

    goto :goto_14f

    :catchall_162
    move-exception v21

    move-object v10, v11

    goto :goto_14f

    :catch_165
    move-exception v7

    goto/16 :goto_a5

    :catch_168
    move-exception v7

    move-object v10, v11

    goto/16 :goto_a5

    :catch_16c
    move-exception v8

    goto/16 :goto_23
.end method

.method private static readHistory(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "/data/system/preinstall_history"

    invoke-static {v0, p0}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/lang/String;Ljava/util/Map;)V

    const-string/jumbo v0, "/data/app/preinstall_history"

    invoke-static {v0, p0}, Lcom/android/server/pm/PreinstallApp;->readHistory(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static readLineToSet(Ljava/io/File;Ljava/util/Set;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5a

    const/4 v1, 0x0

    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_16} :catch_86
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_16} :catch_88
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_16} :catch_76
    .catchall {:try_start_7 .. :try_end_16} :catchall_7e

    :try_start_16
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "vanward_applist"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5b

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v3, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_2d
    :goto_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_72

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2d

    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-static {v9, v3}, Lcom/android/server/pm/PreinstallApp;->isValidIme(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/4 v9, 0x0

    aget-object v9, v8, v9

    invoke-interface {p1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_51} :catch_52
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_51} :catch_69
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_51} :catch_8a
    .catchall {:try_start_16 .. :try_end_51} :catchall_83

    goto :goto_2d

    :catch_52
    move-exception v5

    move-object v1, v2

    :goto_54
    :try_start_54
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_7e

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_72

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_68} :catch_52
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_68} :catch_69
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_68} :catch_8a
    .catchall {:try_start_5b .. :try_end_68} :catchall_83

    goto :goto_5b

    :catch_69
    move-exception v6

    move-object v1, v2

    :goto_6b
    :try_start_6b
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_7e

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_5a

    :cond_72
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_5a

    :catch_76
    move-exception v4

    :goto_77
    :try_start_77
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7e

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_5a

    :catchall_7e
    move-exception v9

    :goto_7f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    :catchall_83
    move-exception v9

    move-object v1, v2

    goto :goto_7f

    :catch_86
    move-exception v5

    goto :goto_54

    :catch_88
    move-exception v6

    goto :goto_6b

    :catch_8a
    move-exception v4

    move-object v1, v2

    goto :goto_77
.end method

.method private static readPackageVersionMap()V
    .registers 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v3, 0x0

    :try_start_3
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/data/system/preinstall.list"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_74
    .catchall {:try_start_3 .. :try_end_10} :catchall_6a

    const/4 v2, 0x0

    :cond_11
    :goto_11
    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_63

    const-string/jumbo v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    array-length v7, v5

    if-eq v7, v10, :cond_26

    array-length v7, v5
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_24} :catch_42
    .catchall {:try_start_11 .. :try_end_24} :catchall_71

    if-ne v7, v11, :cond_11

    :cond_26
    const/4 v6, 0x0

    :try_start_27
    array-length v7, v5

    if-ne v7, v11, :cond_35

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_34} :catch_76
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_34} :catch_42
    .catchall {:try_start_27 .. :try_end_34} :catchall_71

    move-result v6

    :cond_35
    :try_start_35
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_41} :catch_42
    .catchall {:try_start_35 .. :try_end_41} :catchall_71

    goto :goto_11

    :catch_42
    move-exception v0

    move-object v3, v4

    :goto_44
    :try_start_44
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error occurs while read preinstalled packages "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_44 .. :try_end_5d} :catchall_6a

    if-eqz v3, :cond_62

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_62
    :goto_62
    return-void

    :cond_63
    if-eqz v4, :cond_68

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_68
    move-object v3, v4

    goto :goto_62

    :catchall_6a
    move-exception v7

    :goto_6b
    if-eqz v3, :cond_70

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_70
    throw v7

    :catchall_71
    move-exception v7

    move-object v3, v4

    goto :goto_6b

    :catch_74
    move-exception v0

    goto :goto_44

    :catch_76
    move-exception v1

    goto :goto_11
.end method

.method private static recordHistory(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->recordToHistory(Ljava/util/Map;Ljava/io/File;)V

    return-void
.end method

.method private static recordToHistory(Ljava/util/Map;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static recorded(Ljava/util/Map;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/server/pm/PreinstallApp$Item;",
            ")Z"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-static {p0, v0}, Lcom/android/server/pm/PreinstallApp;->recorded(Ljava/util/Map;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static recorded(Ljava/util/Map;Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeFromPreinstallList(Ljava/lang/String;)V
    .registers 16

    sget-object v12, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v12

    :try_start_3
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v11, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c4

    move-result v11

    if-nez v11, :cond_d

    monitor-exit v12

    return-void

    :cond_d
    :try_start_d
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v11, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_c4

    monitor-exit v12

    new-instance v9, Ljava/io/File;

    const-string/jumbo v11, "/data/system/preinstall.list.tmp"

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/util/JournaledFile;

    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "/data/system/preinstall.list"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v11, v9}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v10

    const/4 v1, 0x0

    const/4 v7, 0x0

    :try_start_2e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_e3
    .catchall {:try_start_2e .. :try_end_33} :catchall_d7

    :try_start_33
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_e5
    .catchall {:try_start_33 .. :try_end_38} :catchall_dc

    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    const/16 v12, 0x1a0

    const/16 v13, 0x3e8

    const/16 v14, 0x408

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v12
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4d} :catch_92
    .catchall {:try_start_38 .. :try_end_4d} :catchall_df

    :try_start_4d
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "\n"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_8e
    .catchall {:try_start_4d .. :try_end_8e} :catchall_8f

    goto :goto_57

    :catchall_8f
    move-exception v11

    :try_start_90
    monitor-exit v12

    throw v11
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_92} :catch_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_df

    :catch_92
    move-exception v0

    move-object v7, v8

    move-object v1, v2

    :goto_95
    :try_start_95
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "Failed to write preinstall.list + "

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V
    :try_end_a0
    .catchall {:try_start_95 .. :try_end_a0} :catchall_d7

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_a3
    sget-object v11, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Delete package:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " from preinstall.list"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_c4
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_c7
    :try_start_c7
    monitor-exit v12

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_d1} :catch_92
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_df

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v7, v8

    move-object v1, v2

    goto :goto_a3

    :catchall_d7
    move-exception v11

    :goto_d8
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11

    :catchall_dc
    move-exception v11

    move-object v1, v2

    goto :goto_d8

    :catchall_df
    move-exception v11

    move-object v7, v8

    move-object v1, v2

    goto :goto_d8

    :catch_e3
    move-exception v0

    goto :goto_95

    :catch_e5
    move-exception v0

    move-object v1, v2

    goto :goto_95
.end method

.method private static signCheck(Ljava/io/File;)Z
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_7

    return v4

    :cond_7
    invoke-static {}, Lmiui/util/PreinstallAppUtils;->supportSignVerifyInCust()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/cust/app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_18
    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sign support is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_60

    invoke-static {}, Lmiui/os/CustVerifier;->getInstance()Lmiui/os/CustVerifier;

    move-result-object v1

    if-nez v1, :cond_60

    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CustVerifier init error !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " will not be installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5e
    const/4 v0, 0x0

    goto :goto_18

    :cond_60
    if-eqz v0, :cond_90

    invoke-static {}, Lmiui/os/CustVerifier;->getInstance()Lmiui/os/CustVerifier;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lmiui/os/CustVerifier;->verifyApkSignatue(Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_90

    sget-object v1, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " verify failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_90
    return v4
.end method

.method private static skipOTA(Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 9

    const/4 v7, 0x0

    :try_start_1
    const-string/jumbo v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "get"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ro.product.name"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, ""

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "sagit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    const-string/jumbo v2, "com.xiaomi.youpin"

    iget-object v3, p0, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skipOTA, deviceName is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5f} :catch_60

    return v7

    :catch_60
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Get exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_69
    sget-object v2, Lcom/android/server/pm/PreinstallApp;->NOT_OTA_PACKAGE_NAMES:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private static systemAppDeletedOrDisabled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static tryInstallApp(Landroid/content/pm/IPackageManager;Ljava/io/File;I)I
    .registers 10

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-eqz v2, :cond_28

    sget-object v4, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Try install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", retry time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerProxy;->installApp(Landroid/content/pm/IPackageManager;Ljava/io/File;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_31

    move v1, v2

    :cond_30
    return v3

    :cond_31
    const-wide/16 v4, 0x3e8

    :try_start_33
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_3c

    :goto_36
    add-int/lit8 v1, v2, 0x1

    if-ge v2, p2, :cond_30

    move v2, v1

    goto :goto_2

    :catch_3c
    move-exception v0

    goto :goto_36
.end method

.method private static underData(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const-string/jumbo v1, "/data/app/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static writeHistory(Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_10
    new-instance v4, Ljava/io/FileWriter;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_8e
    .catchall {:try_start_2 .. :try_end_16} :catchall_7f

    :try_start_16
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_90
    .catchall {:try_start_16 .. :try_end_1b} :catchall_87

    :try_start_1b
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_23
    :goto_23
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v9, Ljava/io/File;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_23

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v8, "\n"

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_6b} :catch_6c
    .catchall {:try_start_1b .. :try_end_6b} :catchall_8a

    goto :goto_23

    :catch_6c
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    :goto_6f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_75
    return-void

    :cond_76
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    move-object v3, v4

    goto :goto_75

    :catchall_7f
    move-exception v8

    :goto_80
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v8

    :catchall_87
    move-exception v8

    move-object v3, v4

    goto :goto_80

    :catchall_8a
    move-exception v8

    move-object v0, v1

    move-object v3, v4

    goto :goto_80

    :catch_8e
    move-exception v2

    goto :goto_6f

    :catch_90
    move-exception v2

    move-object v3, v4

    goto :goto_6f
.end method

.method private static writeHistory(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/preinstall_history"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_11
    const-string/jumbo v1, "/data/app/preinstall_history"

    invoke-static {v1, p0}, Lcom/android/server/pm/PreinstallApp;->writeHistory(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static writePreinstallPackage(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Write preinstalled package name into /data/system/preinstall.list"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_10

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    :try_start_12
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string/jumbo v6, "/data/system/preinstall.list"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_20} :catch_93
    .catchall {:try_start_12 .. :try_end_20} :catchall_8b

    :try_start_20
    sget-object v7, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    monitor-enter v7
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_77
    .catchall {:try_start_20 .. :try_end_23} :catchall_90

    :try_start_23
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v8, Lcom/android/server/pm/PreinstallApp;->mPackageVersionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v5, "\n"

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_23 .. :try_end_73} :catchall_74

    goto :goto_2b

    :catchall_74
    move-exception v5

    :try_start_75
    monitor-exit v7

    throw v5
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_77} :catch_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_90

    :catch_77
    move-exception v2

    move-object v0, v1

    :goto_79
    :try_start_79
    sget-object v5, Lcom/android/server/pm/PreinstallApp;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error occurs when to write preinstalled package name."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_8b

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_84
    return-void

    :cond_85
    :try_start_85
    monitor-exit v7
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_86} :catch_77
    .catchall {:try_start_85 .. :try_end_86} :catchall_90

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    goto :goto_84

    :catchall_8b
    move-exception v5

    :goto_8c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    :catchall_90
    move-exception v5

    move-object v0, v1

    goto :goto_8c

    :catch_93
    move-exception v2

    goto :goto_79
.end method
