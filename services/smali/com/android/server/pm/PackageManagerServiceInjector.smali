.class public Lcom/android/server/pm/PackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerServiceInjector$1;,
        Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;,
        Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;
    }
.end annotation


# static fields
.field private static final APP_LIST_FILE:Ljava/lang/String; = "/system/etc/install_app_filter.xml"

.field private static final BLOCK_APPS:[[Ljava/lang/String;

.field static DEBUG_CHANGE:Z = false

.field static final DELETE_FAILED_FORBIDED_BY_MIUI:I = -0x3e8

.field private static final GLOBAL_SYNC_KEY_ENABLE:Ljava/lang/String; = "1"

.field static final INSTALL_IGNORE_PACKAGE:I = -0x3e8

.field private static final IS_X7_LTE_ALL:Z

.field private static final MIUI_BROWSER_PACKAGE:Ljava/lang/String; = "com.android.browser"

.field private static final MSG_INSTALL_APP_GOON:I = 0x0

.field private static final PACKAGE_INSTALLER_NAME:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final SUPPORT_OLDMAN_MODE:Ljava/lang/String; = "support_oldman_mode"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_ADD_APPS:Ljava/lang/String; = "add_apps"

.field private static final TAG_APP:Ljava/lang/String; = "app"

.field private static final TAG_IGNORE_APPS:Ljava/lang/String; = "ignore_apps"

.field private static final WIFI_ONLY_BLOCK_APPS:[Ljava/lang/String;

.field static mHandler:Landroid/os/Handler;

.field private static final migratedToDataPartitionApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAllowPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field static sCrossXSpaceIntent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultHome:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sEPAllowedPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sForbiddenToInstalledPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalAllowPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static sGlobalSyncKey:Ljava/lang/String;

.field private static sGlobalWhiteListPackages:Ljava/lang/String;

.field private static sIgnoreApks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIgnorePackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsPlatformSignature:Ljava/lang/Boolean;

.field private static sMostUsagePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotDisable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sShellCheckPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSilentlyUninstallPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sXSpaceFriendlyActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static updateSystemPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->updatePackageWhiteList(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v0, Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/pm/PackageManagerServiceInjector;->DEBUG_CHANGE:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string/jumbo v0, "X7-LTE-ALL"

    const-string/jumbo v3, "persist.radio.modem"

    invoke-static {v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->IS_X7_LTE_ALL:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->migratedToDataPartitionApps:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    const-string/jumbo v0, "1"

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalSyncKey:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    if-eqz v0, :cond_76

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v3, "/system/app/TSMClient"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v3, "/system/app/NfcNci"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v3, "/system/priv-app/SmartcardService"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_76
    const-string/jumbo v0, "support_fm"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8f

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v3, "/system/app/FM.apk"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v3, "/system/app/FM"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_8f
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->IS_X7_LTE_ALL:Z

    if-eqz v0, :cond_a3

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v3, "/system/app/VirtualSim.apk"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    const-string/jumbo v3, "/system/app/VirtualSim"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a3
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->readIgnoreApks()V

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string/jumbo v3, "com.sogou.inputmethod.mi"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v3, "ro.miui.product.home"

    const-string/jumbo v4, "com.miui.home"

    invoke-static {v3, v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v3, "com.xiaomi.market"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v3, "com.xiaomi.mipicks"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v3, "com.xiaomi.discover"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v3, "com.xiaomi.gamecenter"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v3, "com.xiaomi.gamecenter.pad"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v3, "com.miui.global.packageinstaller"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    const-string/jumbo v3, "com.miui.greenguard"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_116

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v0, :cond_4b0

    const-string/jumbo v0, "platina"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b3

    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    :goto_112
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11e

    :cond_116
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    const-string/jumbo v3, "com.miui.dmregservice"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11e
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->migratedToDataPartitionApps:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.virtualsim"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->migratedToDataPartitionApps:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.Qunar"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->migratedToDataPartitionApps:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.lens"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->migratedToDataPartitionApps:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.drivemode"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->migratedToDataPartitionApps:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.mi.globalTrendNews"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.android.thememanager"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.miui.securitycenter"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.miui.cleanmaster"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.mi.android.globalFileexplorer"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.miui.home"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.miui.player"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.xiaomi.midrop"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.mi.android.globalpersonalassistant"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.android.calendar"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.android.browser"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.android.mms"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.miui.android.fashiongallery"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.miui.weather2"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    const-string/jumbo v3, "com.miui.msa.global"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhiteListPackages:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/PackageManagerServiceInjector$1;

    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerServiceInjector$1;-><init>()V

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.sina.weibo.action.sdkidentity"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.sina.weibo.remotessoservice"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.intent.action.DIAL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.intent.action.PICK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.intent.action.INSERT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v3, "content"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v3, "http"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v3, "https"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v3, "file"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v3, "ftp"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v3, "ed2k"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v3, "geo"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.lbe.security.miui"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.securitycenter"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.updater"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.market"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.finddevice"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.home"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.SEND_SMS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.CLEAR_APP_USER_DATA"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.MANAGE_DEVICE_ADMINS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    const-string/jumbo v3, "android.permission.SET_PREFERRED_APPLICATIONS"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ro.debuggable"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_356

    const-string/jumbo v0, "ro.secureboot.devicelock"

    invoke-static {v0, v2}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_35a

    const-string/jumbo v0, "unlocked"

    const-string/jumbo v3, "ro.secureboot.lockstate"

    invoke-static {v3}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35a

    :cond_356
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_35f

    :cond_35a
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_35f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.market"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.vending"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.backup"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.packageinstaller"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.managedprovisioning"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.securitycenter"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.cloudbackup"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.analytics"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.provision"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.powerkeeper"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.systemAdSolution"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.msa.global"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.packageinstaller"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.discover"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.mipicks"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.mihomemanager"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.glgm"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.facebook.system"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.mediatek.backuprestore"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.securitycore"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.orange.update"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.ironsource.appcloud.oobe.hutchison"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.naranya.claroapps"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sForbiddenToInstalledPackages:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sForbiddenToInstalledPackages:Ljava/util/Set;

    const-string/jumbo v3, "com.android.camera"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "com.android.mms"

    aput-object v3, v0, v2

    const-string/jumbo v3, "com.miui.smsextra"

    aput-object v3, v0, v1

    const-string/jumbo v3, "com.miui.yellowpage"

    aput-object v3, v0, v5

    const-string/jumbo v3, "com.android.incallui"

    aput-object v3, v0, v6

    const-string/jumbo v3, "com.miui.virtualsim"

    const/4 v4, 0x4

    aput-object v3, v0, v4

    const-string/jumbo v3, "com.xiaomi.mimobile.noti"

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-string/jumbo v3, "com.miui.vsimcore"

    const/4 v4, 0x6

    aput-object v3, v0, v4

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->WIFI_ONLY_BLOCK_APPS:[Ljava/lang/String;

    new-array v0, v5, [[Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v4, "com.jeejen.family.miui"

    aput-object v4, v3, v2

    aput-object v3, v0, v2

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "com.miui.home"

    aput-object v4, v3, v2

    const-string/jumbo v2, "com.android.mms"

    aput-object v2, v3, v1

    const-string/jumbo v2, "com.android.contacts"

    aput-object v2, v3, v5

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEPAllowedPackage:Ljava/util/List;

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEPAllowedPackage:Ljava/util/List;

    const-string/jumbo v1, "com.android.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEPAllowedPackage:Ljava/util/List;

    const-string/jumbo v1, "com.miui.packageinstaller"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4b0
    move v0, v1

    goto/16 :goto_112

    :cond_4b3
    move v0, v2

    goto/16 :goto_112
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addIgnoreApk(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_7

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method static addIgnorePackage(Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_7

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method static addLostPackagePropertyForOta(Landroid/content/Context;)V
    .registers 6

    const/4 v4, 0x2

    const-string/jumbo v0, "com.google.android.setupwizard"

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_1b

    if-eqz p0, :cond_27

    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    if-eq v4, v3, :cond_1b

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "pm Argument is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :catch_25
    move-exception v1

    goto :goto_1b

    :cond_27
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "context Argument is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_25

    goto :goto_1b
.end method

.method static addMiuiSharedUids(Lcom/android/server/pm/Settings;Z)V
    .registers 7

    const/16 v1, 0x2710

    const/16 v4, 0x8

    const/4 v3, 0x1

    const-string/jumbo v2, "android.uid.backup"

    if-eqz p1, :cond_2e

    const/16 v0, 0x2648

    :goto_c
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string/jumbo v2, "android.uid.theme"

    if-eqz p1, :cond_30

    const/16 v0, 0x2649

    :goto_16
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string/jumbo v2, "android.uid.updater"

    if-eqz p1, :cond_32

    const/16 v0, 0x264a

    :goto_20
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    const-string/jumbo v0, "android.uid.finddevice"

    if-eqz p1, :cond_2a

    const/16 v1, 0x2652

    :cond_2a
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    return-void

    :cond_2e
    move v0, v1

    goto :goto_c

    :cond_30
    move v0, v1

    goto :goto_16

    :cond_32
    move v0, v1

    goto :goto_20
.end method

.method static addUpdateSystemApp(Lcom/android/server/pm/PackageSetting;)V
    .registers 3

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;)V

    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Landroid/content/pm/PackageParser$Package;",
            "ZZZ)V"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->adjustCpuAbisForSharedUserLPw(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;Landroid/content/pm/PackageParser$Package;ZZZ)V

    return-void
.end method

.method public static beforeSystemReady(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/miui/server/SecSpaceManagerService;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->installBlockApps(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->hideOrDisplayApp()V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->registerDataObserver(Landroid/content/Context;)V

    :cond_13
    return-void
.end method

.method static checkAndResolveFlags(Landroid/content/Intent;Ljava/lang/String;II)I
    .registers 6

    if-eqz p0, :cond_16

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceFriendlyActionList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    or-int/lit16 p2, p2, 0x2000

    :cond_16
    return p2
.end method

.method static checkAndRunPreInstallation(Landroid/os/Handler;Landroid/os/Message;)Z
    .registers 13

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v7, :cond_1e

    const-string/jumbo v7, "com.xiaomi.market"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1e

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    if-eqz v7, :cond_38

    :cond_1e
    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "callingpackage is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_38
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageManagerService$InstallParams;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->getApkPathFromInstallParams(Lcom/android/server/pm/PackageManagerService$InstallParams;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "security"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Lcom/miui/server/SecurityManagerService;

    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "check if need preinstall apps"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_51
    invoke-virtual {v6}, Lcom/miui/server/SecurityManagerService;->getGoogleBaseService()Lmiui/security/ISecurityCallback;

    move-result-object v3

    if-eqz v3, :cond_8f

    invoke-interface {v3, v0}, Lmiui/security/ISecurityCallback;->checkPreInstallNeeded(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8f

    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pending installation for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$InstallAppParam;-><init>(Landroid/os/Handler;Landroid/os/Message;)V

    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4}, Lcom/miui/server/SecurityManagerService;->registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-interface {v3}, Lmiui/security/ISecurityCallback;->preInstallApps()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_84} :catch_86

    const/4 v7, 0x1

    return v7

    :catch_86
    move-exception v2

    sget-object v7, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "googlebase remote error\uff01"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8f
    return v10
.end method

.method static checkAndRunPreInstallation(Landroid/os/Handler;Landroid/os/Message;ILjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method static checkEnterpriseRestriction(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.enterprise.permission.ACCESS_ENTERPRISE_API"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/enterprise/signature/EnterpriseVerifier;->verify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3f

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Verify enterprise signature of package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3f
    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_44

    return v3

    :cond_44
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/enterprise/ApplicationHelper;->checkEnterprisePackageRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Installation of package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is restricted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_72
    return v3
.end method

.method static checkGetInstalledAppsPermission(IILjava/lang/String;)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_7

    return v6

    :cond_7
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_10

    return v6

    :cond_10
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    return v6

    :cond_1b
    :try_start_1b
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v3, :cond_2c

    const-string/jumbo v3, "appops"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    sput-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    :cond_2c
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v4, 0x2726

    invoke-interface {v3, v4, p1, v1}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_6f

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MIUILOG- Permission Denied "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_65} :catch_66

    return v7

    :catch_66
    move-exception v2

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkGetInstalledAppsPermission"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6f
    return v6
.end method

.method public static checkInstallerPkgName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.packageinstaller"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_18

    move-result v2

    if-eqz v2, :cond_22

    return-object v1

    :catch_18
    move-exception v0

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 v2, 0x0

    return-object v2
.end method

.method static checkMiuiIntent(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    if-eqz p1, :cond_13b

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_13b

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_42

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    const-string/jumbo v1, "com.jeejen.family.miui"

    const-string/jumbo v2, "com.jeejen.home.launcher.Launcher"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_182

    move/from16 v0, p5

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    :cond_38
    const-string/jumbo v1, "com.miui.home"

    const-string/jumbo v2, "com.miui.home.launcher.Launcher"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b

    :cond_42
    const-string/jumbo v1, "android.intent.action.ASSIST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    const-string/jumbo v1, "android.intent.action.VOICE_COMMAND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    :cond_5c
    move-object/from16 v0, p4

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    :cond_63
    const-string/jumbo v1, "http"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    const-string/jumbo v1, "https"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    :cond_7d
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_9b

    return-object v10

    :cond_9b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_2b

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2b

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    move-object/from16 v0, p4

    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_2b

    return-object v10

    :cond_b6
    const-string/jumbo v1, "mimarket"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    const-string/jumbo v1, "market"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    :cond_dd
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_2b

    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2b

    const-string/jumbo v1, "details"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fb

    const-string/jumbo v1, "search"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_fb
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_2b

    return-object v10

    :cond_102
    const-string/jumbo v1, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_12a

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v1

    if-nez v1, :cond_12a

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_137

    :cond_12a
    const-string/jumbo v9, "com.google.android.packageinstaller"

    :goto_12d
    invoke-virtual {p1, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v0, p5

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    :cond_137
    const-string/jumbo v9, "com.miui.packageinstaller"

    goto :goto_12d

    :cond_13b
    if-eqz p1, :cond_182

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_182

    const-string/jumbo v1, "application/vnd.android.package-archive"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15b

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_168

    :cond_15b
    const-string/jumbo v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_175

    :cond_168
    const-string/jumbo v1, "com.google.android.packageinstaller"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v0, p5

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1

    :cond_175
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->isOpenByGooglePlayStore(Landroid/content/Intent;Lcom/android/server/pm/PackageManagerService;)Z

    move-result v1

    if-eqz v1, :cond_182

    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getGlobalMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_182

    return-object v10

    :cond_182
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v1
.end method

.method static checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->checkMiuiSdk(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageManagerService;)Z

    move-result v0

    return v0
.end method

.method public static checkPackageInstallerStatus(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 9

    const/4 v6, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_49

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_49

    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_49

    iget-object v4, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string/jumbo v5, "com.miui.packageinstaller"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    iget-object v4, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string/jumbo v5, "com.google.android.packageinstaller"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget-object v4, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    const-string/jumbo v5, "com.android.packageinstaller"

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v2

    if-eqz v3, :cond_3f

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_3f
    if-eqz v1, :cond_44

    invoke-virtual {v1, v2, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_44
    if-eqz v0, :cond_49

    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_49
    return-void
.end method

.method static checkPackageState(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;I)Z
    .registers 9

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_4
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_2f

    if-nez v0, :cond_14

    monitor-exit v3

    return v2

    :cond_14
    :try_start_14
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    iget-boolean v4, v1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_2d

    iget-boolean v4, v1, Landroid/content/pm/PackageUserState;->hidden:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2d

    iget v4, v1, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2d

    iget v4, v1, Landroid/content/pm/PackageUserState;->enabled:I
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2f

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    monitor-exit v3

    return v2

    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static checkPkgInstallerOptMode(Lcom/android/server/pm/PackageManagerService;)V
    .registers 4

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_10

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-static {p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkPackageInstallerStatus(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    :try_start_8
    monitor-exit v2

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->checkPkgInstallerOptMode()V

    :goto_c
    return-void

    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    move-exception v0

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method static cleanupUpdateFailedSystemPackage(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .registers 7

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const-string/jumbo v1, "cleanupInstallFailedPackage"

    const-class v2, Ljava/lang/Void;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p1, v1, v2, v3}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    :cond_26
    return-void
.end method

.method static clearUpdateSystemApps()V
    .registers 1

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method static copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerProxy;->copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V

    return-void
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

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_38

    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

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

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteContents(Ljava/io/File;)Z

    :cond_9
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static doRenameApk(Ljava/io/File;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/PackageManagerProxy;->doRenameApk(Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method

.method private static existsApkFileUnderDir(Ljava/io/File;)Z
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1f

    array-length v4, v0

    move v2, v3

    :goto_9
    if-ge v2, v4, :cond_1f

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v2, 0x1

    return v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1f
    return v3
.end method

.method static filterBackgroundDexOptApps(Lcom/android/server/pm/PackageManagerService;Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->filterBackgroundDexOptApps(Lcom/android/server/pm/PackageManagerService;Ljava/util/Collection;)V

    return-void
.end method

.method static getBrowserResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v3, "CN"

    invoke-static {v3}, Lmiui/os/Build;->checkRegion(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    return-object v4

    :cond_b
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_35

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v3, "com.android.browser"

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-boolean v3, v1, Landroid/content/pm/ResolveInfo;->system:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_15

    move-object v0, v1

    :cond_35
    return-object v0
.end method

.method public static getDefaultHome(I)Ljava/lang/String;
    .registers 3

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getGlobalMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v3, "com.android.vending"

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_5

    move-object v0, v1

    :cond_23
    return-object v0
.end method

.method static getInstalledApplicationsWithoutPermission(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    return-object p1

    :cond_9
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_13
    if-ltz v0, :cond_2b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_28

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_28

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_2b
    return-object p1
.end method

.method static getInstalledPackagesWithoutPermission(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    return-object p1

    :cond_9
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_13
    if-ltz v0, :cond_2d

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v2, :cond_2a

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2a

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_2d
    return-object p1
.end method

.method static getInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    const-string/jumbo v0, "adb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p0, :cond_16

    const-string/jumbo v0, "com.android.cts."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-object v1

    :cond_16
    return-object p1
.end method

.method static getMarketResolveInfo(Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const-string/jumbo v3, "com.xiaomi.market"

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v3, :cond_5

    move-object v0, v1

    :cond_23
    return-object v0
.end method

.method public static getMiuiDefaultBrowserPkg()Ljava/lang/String;
    .registers 2

    const/4 v1, 0x0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->isCTS()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object v1

    :cond_d
    const-string/jumbo v0, "com.android.browser"

    return-object v0
.end method

.method private static getMostUsagePackageList(Lcom/android/server/pm/PackageManagerService;J)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x7

    invoke-static {v6, p1, p2, v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->getSortedUsageStatsByForegroundTime(Landroid/content/Context;JI)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    return-object v6

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xa

    if-ge v6, v7, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    :try_start_36
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_46

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_4b

    :cond_46
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_6e

    :cond_49
    :goto_49
    monitor-exit v7

    goto :goto_1b

    :cond_4b
    :try_start_4b
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found most usage Package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_4b .. :try_end_6d} :catchall_6e

    goto :goto_49

    :catchall_6e
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_71
    return-object v1
.end method

.method private static getPackageName(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerProxy;->parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    :cond_9
    return-object v1
.end method

.method private static getSortedUsageStatsByForegroundTime(Landroid/content/Context;JI)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    const-string/jumbo v7, "usagestats"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStatsManager;

    mul-int/lit8 v7, p3, 0x18

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v0, v7

    if-nez v6, :cond_19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    return-object v7

    :cond_19
    sub-long v8, p1, v0

    invoke-virtual {v6, v8, v9, p1, p2}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_55

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_55

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_4c
    new-instance v7, Lcom/android/server/pm/PackageManagerServiceInjector$4;

    invoke-direct {v7}, Lcom/android/server/pm/PackageManagerServiceInjector$4;-><init>()V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v4

    :cond_55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    return-object v7
.end method

.method static getSystemPackageFilePath(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)Ljava/io/File;
    .registers 3

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method static getSystemResolveInfo(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v0, v5, Landroid/content/pm/ResolveInfo;->match:I

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget v6, v3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget v5, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v6, v5, :cond_2d

    :cond_2c
    return-object v2

    :cond_2d
    iget v5, v3, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v0, :cond_44

    iget v0, v3, Landroid/content/pm/ResolveInfo;->match:I

    const/4 v2, 0x0

    :cond_34
    iget-boolean v5, v3, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v5, :cond_14

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v5}, Lmiui/content/pm/ExtraPackageManager;->isMiuiSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object v2, v3

    goto :goto_14

    :cond_44
    iget v5, v3, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v5, v0, :cond_14

    if-eqz v2, :cond_34

    goto :goto_14
.end method

.method static hasMigratedToDataPartition(Ljava/lang/String;)Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_d

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->migratedToDataPartitionApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static hideOrDisplayApp()V
    .registers 15

    const/4 v9, 0x0

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x18

    if-lt v10, v11, :cond_70

    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_70

    sget-boolean v10, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-eqz v10, :cond_70

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v10

    invoke-static {v10}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageHideManager;->getIgnoreApkPkgNameList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_26

    return-void

    :cond_26
    invoke-virtual {v4}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v0

    sget-object v10, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "appHide: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v11, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    :try_start_48
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4c
    :goto_4c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v10, v8, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_4c

    if-eqz v0, :cond_6d

    move v10, v9

    :goto_65
    const/4 v12, 0x0

    invoke-virtual {v3, v10, v12}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V
    :try_end_69
    .catchall {:try_start_48 .. :try_end_69} :catchall_6a

    goto :goto_4c

    :catchall_6a
    move-exception v9

    monitor-exit v11

    throw v9

    :cond_6d
    const/4 v10, 0x1

    goto :goto_65

    :cond_6f
    monitor-exit v11

    :cond_70
    const-string/jumbo v10, "clover"

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ac

    const-string/jumbo v10, "ro.radio.noril"

    invoke-static {v10, v9}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v10

    :try_start_8d
    sget-object v11, Lcom/android/server/pm/PackageManagerServiceInjector;->WIFI_ONLY_BLOCK_APPS:[Ljava/lang/String;

    array-length v12, v11

    :goto_90
    if-ge v9, v12, :cond_ab

    aget-object v5, v11, v9

    iget-object v13, v7, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v13, v13, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v13, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_a8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v13}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V
    :try_end_a8
    .catchall {:try_start_8d .. :try_end_a8} :catchall_ad

    :cond_a8
    add-int/lit8 v9, v9, 0x1

    goto :goto_90

    :cond_ab
    monitor-exit v10

    :cond_ac
    return-void

    :catchall_ad
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method static ignoreApk(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static ignorePackage(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_9

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnorePackages:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static initTempInitApk(Z)V
    .registers 5

    invoke-static {p0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageHideManager;->getIgnoreApkPathList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->addIgnoreApk(Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method private static installBlockApps(Landroid/content/Context;)V
    .registers 12

    const/4 v6, 0x0

    const-string/jumbo v5, "support_oldman_mode"

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v0, 0x0

    :goto_13
    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3a

    sget-object v5, Lcom/android/server/pm/PackageManagerServiceInjector;->BLOCK_APPS:[[Ljava/lang/String;

    aget-object v7, v5, v0

    array-length v8, v7

    move v5, v6

    :goto_1e
    if-ge v5, v8, :cond_37

    aget-object v2, v7, v5

    iget-object v9, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_34

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v9}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_3a
    return-void
.end method

.method private static installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    if-nez p2, :cond_b

    if-eqz p0, :cond_b

    :try_start_4
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-interface {p0, v1, p1, p3, v2}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_14

    :cond_b
    :goto_b
    if-eqz p2, :cond_13

    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, p1, p3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_13
    return-void

    :catch_14
    move-exception v0

    goto :goto_b
.end method

.method static isAllowedDisable(Ljava/lang/String;I)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    return v0

    :cond_6
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sNotDisable:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isAllowedHideApp(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZI)Z
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_30

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const-string/jumbo v2, "com.android.browser"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v2, "com.android.chrome"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const/4 v1, 0x0

    :cond_1b
    if-eqz p2, :cond_38

    if-nez v1, :cond_27

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_38

    :cond_27
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "MIUILOG- Not Support"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_30
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_38
    const/4 v2, 0x1

    return v2
.end method

.method public static isAllowedInstall(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_5

    return v5

    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->isAllowedInstall(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Z)Z

    move-result v0

    return v0
.end method

.method static isAllowedInstall(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;)Z
    .registers 11

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    :try_start_6
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->isAllowedInstall(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Z)Z
    :try_end_9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_6 .. :try_end_9} :catch_b

    move-result v0

    return v0

    :catch_b
    move-exception v6

    const/4 v0, 0x1

    return v0
.end method

.method private static isAllowedInstall(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Z)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    if-eqz p1, :cond_1d

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->isApkForbiddenToInstall(Ljava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_1d

    const-string/jumbo v14, "The package is forbid to install"

    const/16 v15, -0x6f

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v15, v1, v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V

    const/4 v14, 0x0

    return v14

    :cond_1d
    move-object/from16 v8, p3

    const/16 v14, 0x7d0

    move/from16 v0, p2

    if-ne v0, v14, :cond_6e

    const/4 v9, -0x1

    :try_start_26
    invoke-static/range {p1 .. p1}, Lcom/android/commands/pm/PmInjector;->installVerify(Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_64

    move-result v9

    :goto_2a
    const/4 v14, 0x2

    if-eq v9, v14, :cond_6e

    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIUILOG- INSTALL_FAILED_USER_RESTRICTED  uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " pkg : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/commands/pm/PmInjector;->statusToString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v14, -0x6f

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v14, v1, v7}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V

    const/4 v14, 0x0

    return v14

    :catch_64
    move-exception v5

    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Error"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2a

    :cond_6e
    if-eqz p2, :cond_76

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v14

    if-eqz v14, :cond_78

    :cond_76
    const/4 v14, 0x1

    return v14

    :cond_78
    if-nez p5, :cond_86

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    if-ne v14, v15, :cond_86

    const/4 v14, 0x1

    return v14

    :cond_86
    if-nez p5, :cond_90

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-static {v14}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v8

    :cond_90
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1, v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->isEnterpriseAllowedInstall(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a8

    const-string/jumbo v14, "Enterprise restricted"

    const/16 v15, -0x6f

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v15, v1, v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V

    const/4 v14, 0x0

    return v14

    :cond_a8
    const-string/jumbo v14, "com.android.vending"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_cc

    const-string/jumbo v14, "com.xiaomi.market"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_cc

    const-string/jumbo v14, "com.xiaomi.gamecenter"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_cc

    const-string/jumbo v14, "com.miui.securitycenter"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ce

    :cond_cc
    const/4 v14, 0x1

    return v14

    :cond_ce
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->isReleaseRom(Landroid/content/pm/PackageManager;)Z

    move-result v14

    if-eqz v14, :cond_19e

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v14, "com.miui.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "com.miui.securitycenter"

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v14, 0x10000000

    invoke-virtual {v12, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v14, "path"

    move-object/from16 v0, p1

    invoke-virtual {v12, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v14, "installerPackage"

    invoke-virtual {v12, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v14, -0x64

    invoke-direct {v10, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v14, 0x1

    invoke-direct {v3, v14}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v6, Lcom/android/server/pm/PackageManagerServiceInjector$2;

    invoke-direct {v6, v10, v3}, Lcom/android/server/pm/PackageManagerServiceInjector$2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    const-string/jumbo v14, "observer"

    invoke-virtual {v12, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const/16 v14, 0x7d0

    move/from16 v0, p2

    if-ne v0, v14, :cond_11c

    const/4 v11, 0x0

    :cond_11c
    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v11}, Landroid/os/UserHandle;-><init>(I)V

    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "Package verify start"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-wide/16 v14, 0x258

    :try_start_133
    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_13a
    .catch Ljava/lang/InterruptedException; {:try_start_133 .. :try_end_13a} :catch_1e2

    :goto_13a
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v14, -0x64

    if-ne v2, v14, :cond_168

    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIUILOG- INSTALL_FAILED_VERIFICATION time out  uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " pkg : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_168
    if-nez v2, :cond_19e

    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIUILOG- INSTALL_FAILED_VERIFICATION_FAILURE  uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " pkg : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "FAILED_VERIFICATION_FAILURE MIUI"

    const/16 v15, -0x16

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v15, v1, v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V

    const/4 v14, 0x0

    return v14

    :cond_19e
    const/16 v14, 0x7d0

    move/from16 v0, p2

    if-eq v0, v14, :cond_1ac

    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->sAllowPackage:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1ae

    :cond_1ac
    const/4 v14, 0x1

    return v14

    :cond_1ae
    sget-object v14, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MIUILOG- Install Reject uid: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " pkg : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "Permission Denied"

    const/16 v15, -0x6e

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v15, v1, v14}, Lcom/android/server/pm/PackageManagerServiceInjector;->installError(Landroid/content/pm/IPackageInstallObserver2;IZLjava/lang/String;)V

    const/4 v14, 0x0

    return v14

    :catch_1e2
    move-exception v4

    goto/16 :goto_13a
.end method

.method static isAlwaysSpeedDexOpt(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/PackageDexOptimizerManager;->isAlwaysSpeedDexOpt(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method private static isApkForbiddenToInstall(Ljava/io/File;)Z
    .registers 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_19

    array-length v3, v1

    if-lez v3, :cond_19

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v2

    :cond_19
    :goto_19
    if-eqz v2, :cond_4c

    iget-object v3, v2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4c

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sForbiddenToInstalledPackages:Ljava/util/Set;

    iget-object v4, v2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MIUILOG- INSTALL_FAILED_USER_RESTRICTED pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_46
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_4a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_4a} :catch_4d

    move-result-object v2

    goto :goto_19

    :cond_4c
    return v6

    :catch_4d
    move-exception v0

    return v6
.end method

.method public static isCTS()Z
    .registers 3

    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    invoke-static {v2}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isCallerAllowedToSilentlyUninstall(ILcom/android/server/pm/PackageManagerService;)Z
    .registers 8

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_8
    :try_start_8
    array-length v3, v2

    if-ge v0, v3, :cond_31

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sSilentlyUninstallPackages:Ljava/util/Set;

    aget-object v5, v2, v0

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    aget-object v5, v2, v0

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_2e

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_34

    if-ne v3, v5, :cond_2e

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_31
    monitor-exit v4

    const/4 v3, 0x0

    return v3

    :catchall_34
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static isEnterpriseAllowedInstall(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 6

    const/4 v1, 0x1

    sget-boolean v0, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/enterprise/ApplicationHelper;->isTrustedAppStoresEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sEPAllowedPackage:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4d

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/enterprise/ApplicationHelper;->getTrustedAppStores(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "Enterprise"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Installer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was forbid to install pkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_4d
    return v1
.end method

.method static isNonProfileFilterNeeded(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 4

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sMostUsagePackageList:Ljava/util/List;

    if-nez v0, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getMostUsagePackageList(Lcom/android/server/pm/PackageManagerService;J)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sMostUsagePackageList:Ljava/util/List;

    :cond_e
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sMostUsagePackageList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isOpenByGooglePlayStore(Landroid/content/Intent;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v3, "market"

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1e

    :cond_1d
    return v5

    :cond_1e
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2f

    :cond_2e
    return v5

    :cond_2f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_38
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    const-string/jumbo v3, "1"

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalSyncKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhiteListPackages:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_51} :catch_61
    .catchall {:try_start_38 .. :try_end_51} :catchall_89

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_57

    :cond_56
    const/4 v2, 0x0

    :cond_57
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_60
    return v2

    :catch_61
    move-exception v1

    :try_start_62
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_62 .. :try_end_7f} :catchall_89

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_60

    :catchall_89
    move-exception v3

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v3
.end method

.method private static isPackageInstalled(Lcom/android/server/pm/Settings;Ljava/lang/String;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method static isPreinstallApp(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->isPreinstallApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized isReleaseRom(Landroid/content/pm/PackageManager;)Z
    .registers 11

    const-class v7, Lcom/android/server/pm/PackageManagerServiceInjector;

    monitor-enter v7

    :try_start_3
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_43

    if-nez v6, :cond_2e

    const/4 v1, 0x0

    :try_start_8
    const-string/jumbo v6, "android"

    const/16 v8, 0x40

    invoke-virtual {p0, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v3, Landroid/content/pm/Signature;

    const-string/jumbo v6, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v3, v6}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    array-length v8, v4

    :goto_1d
    if-ge v6, v8, :cond_28

    aget-object v5, v4, v6

    invoke-virtual {v3, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_39
    .catchall {:try_start_8 .. :try_end_24} :catchall_43

    move-result v9

    if-eqz v9, :cond_36

    const/4 v1, 0x1

    :cond_28
    :goto_28
    :try_start_28
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;

    :cond_2e
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->sIsPlatformSignature:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_43

    move-result v6

    monitor-exit v7

    return v6

    :cond_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :catch_39
    move-exception v0

    :try_start_3a
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "error"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_43

    goto :goto_28

    :catchall_43
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method static isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method static isTrueSystemPackage(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_59

    move-result-object v0

    if-nez v0, :cond_52

    const/4 v1, 0x1

    :goto_15
    monitor-exit v3

    :cond_16
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_5c

    const-string/jumbo v2, ""

    :goto_3f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " a true system package"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return v1

    :cond_52
    :try_start_52
    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_59

    move-result v1

    goto :goto_15

    :catchall_59
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_5c
    const-string/jumbo v2, "not"

    goto :goto_3f
.end method

.method static isUpdateSystemApp(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->updateSystemPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isXSpaceCrossUser(I)Z
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    return v1
.end method

.method static logComponentStateChanged(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 10

    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceInjector;->DEBUG_CHANGE:Z

    if-eqz v0, :cond_94

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "component state changed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p0, :cond_95

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_99

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " new state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " calling uid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " calling pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p5, :cond_9d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " calling package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    return-void

    :cond_95
    const-string/jumbo v0, ""

    goto :goto_28

    :cond_99
    const-string/jumbo v0, ""

    goto :goto_42

    :cond_9d
    const-string/jumbo v0, ""

    goto :goto_89
.end method

.method static markCoreAppDexopt(JJ)V
    .registers 8

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    sub-long v2, p2, p0

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->setCoreAppDexopt(J)V

    return-void
.end method

.method static markPackageOptimized(Landroid/content/pm/PackageParser$Package;)V
    .registers 3

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isSystemApp()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptSystemAppCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setDexoptSystemAppCount(I)V

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {v0}, Lmiui/mqsas/sdk/BootEventManager;->getDexoptThirdAppCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setDexoptThirdAppCount(I)V

    goto :goto_1b
.end method

.method static markPmsScanDetail(Lcom/android/server/pm/PackageManagerService;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    :try_start_6
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4b

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/server/pm/Settings;->isDisabledSystemPackageLPr(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_34

    add-int/lit8 v4, v4, 0x1

    :cond_34
    :goto_34
    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v6, :cond_48

    iget-object v6, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_44
    .catchall {:try_start_6 .. :try_end_44} :catchall_73

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_10

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_4e
    monitor-exit v7

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lmiui/mqsas/sdk/BootEventManager;->setSystemAppCount(I)V

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lmiui/mqsas/sdk/BootEventManager;->setThirdAppCount(I)V

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Lmiui/mqsas/sdk/BootEventManager;->setPersistAppCount(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    if-eqz v6, :cond_76

    const/4 v5, 0x2

    :goto_6b
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lmiui/mqsas/sdk/BootEventManager;->setBootType(I)V

    return-void

    :catchall_73
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_76
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v6

    if-eqz v6, :cond_7e

    const/4 v5, 0x3

    goto :goto_6b

    :cond_7e
    const/4 v5, 0x1

    goto :goto_6b
.end method

.method public static needClearDefaultBrowserSettings(Ljava/lang/String;)Z
    .registers 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceInjector;->isCTS()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_d

    return v1

    :cond_d
    const-string/jumbo v0, "com.android.browser"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static onPackageDeleted(Ljava/lang/String;I)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    return-void

    :cond_4
    new-instance v0, Lmiui/mqsas/sdk/event/PackageEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/PackageEvent;->setTimeStamp(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setAction(I)V

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/PackageEvent;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnCode(I)V

    if-eqz p2, :cond_45

    :goto_21
    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnMsg(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-onPackageDeleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    return-void

    :cond_45
    const-string/jumbo p2, ""

    goto :goto_21
.end method

.method public static onPackageInstalled(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    return-void

    :cond_4
    new-instance v0, Lmiui/mqsas/sdk/event/PackageEvent;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lmiui/mqsas/sdk/event/PackageEvent;->setType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/event/PackageEvent;->setTimeStamp(J)V

    if-eqz p3, :cond_18

    const/4 v1, 0x3

    :cond_18
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setAction(I)V

    invoke-virtual {v0, p0}, Lmiui/mqsas/sdk/event/PackageEvent;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnCode(I)V

    if-eqz p2, :cond_5a

    :goto_23
    invoke-virtual {v0, p2}, Lmiui/mqsas/sdk/event/PackageEvent;->setReturnMsg(Ljava/lang/String;)V

    if-eqz p4, :cond_5e

    iget v1, p4, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    :goto_2a
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setVersionCode(I)V

    if-eqz p4, :cond_60

    iget-object v1, p4, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    :goto_31
    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/event/PackageEvent;->setVersionName(Ljava/lang/String;)V

    if-eqz p5, :cond_64

    :goto_36
    invoke-virtual {v0, p5}, Lmiui/mqsas/sdk/event/PackageEvent;->setInstallerPkgName(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-onPackageInstalled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    return-void

    :cond_5a
    const-string/jumbo p2, ""

    goto :goto_23

    :cond_5e
    const/4 v1, 0x0

    goto :goto_2a

    :cond_60
    const-string/jumbo v1, ""

    goto :goto_31

    :cond_64
    const-string/jumbo p5, ""

    goto :goto_36
.end method

.method public static onPackageInstalled(Ljava/lang/String;IZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/pm/PackageParser$Package;Ljava/lang/String;)V

    return-void
.end method

.method static performPreinstallApp(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PreinstallApp;->copyPreinstallApps(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkPackageInstallerStatus(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V

    return-void
.end method

.method static preCheckUidPermission(Ljava/lang/String;I)I
    .registers 5

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_33

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sShellCheckPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string/jumbo v0, "persist.security.adbinput"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MIUILOG- permission\u3000denied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_33
    const/16 v0, -0x64

    return v0
.end method

.method static protectAppFromDeleting(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/Object;I)Z
    .registers 16

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    :try_start_6
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Package;
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_16

    monitor-exit v9

    if-eqz v7, :cond_15

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_19

    :cond_15
    return v10

    :catchall_16
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_19
    sget-boolean v8, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v8, :cond_5a

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v8, p1, v9}, Lcom/miui/enterprise/ApplicationHelper;->protectedFromDelete(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_5a

    :try_start_29
    sget-object v8, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MIUILOG- can\'t uninstall pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " callingUid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", reason Enterprise"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x3e8

    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_59} :catch_130

    :goto_59
    return v11

    :cond_5a
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_a4

    if-eqz p3, :cond_a4

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_a4

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, p1, v10}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a4

    sget-boolean v8, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_a4

    :try_start_7a
    sget-object v8, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MIUILOG- can\'t uninstall pkg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " callingUid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v8, -0x3e8

    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_a3} :catch_12d

    :goto_a3
    return v11

    :cond_a4
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_124

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v8, :cond_124

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string/jumbo v9, "com.miui.sdk.module"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_124

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v8

    if-eqz v8, :cond_d7

    const/16 v8, -0x3e8

    :try_start_ce
    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_d1} :catch_d2

    return v11

    :catch_d2
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    return v10

    :cond_d7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;

    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.miui.action.PACKAGE_DELETE_CONFIRM"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "extra_pkgname"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "observer"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_ff
    const-string/jumbo v8, "pm"

    invoke-static {v0, v8, v4}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->startActivity(Landroid/app/IActivityManager;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v8

    if-eqz v8, :cond_109

    return v10

    :cond_109
    monitor-enter v6
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_ff .. :try_end_10a} :catch_128

    :goto_10a
    :try_start_10a
    iget-boolean v8, v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->finished:Z
    :try_end_10c
    .catchall {:try_start_10a .. :try_end_10c} :catchall_125

    if-nez v8, :cond_118

    :try_start_10e
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->wait()V
    :try_end_111
    .catch Ljava/lang/InterruptedException; {:try_start_10e .. :try_end_111} :catch_112
    .catchall {:try_start_10e .. :try_end_111} :catchall_125

    goto :goto_10a

    :catch_112
    move-exception v2

    :try_start_113
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_125

    :try_start_116
    monitor-exit v6
    :try_end_117
    .catch Landroid/os/RemoteException; {:try_start_116 .. :try_end_117} :catch_128

    return v10

    :cond_118
    :try_start_118
    iget-boolean v8, v6, Lcom/android/server/pm/PackageManagerServiceInjector$PackageDeleteConfirmObserver;->delete:Z

    if-nez v8, :cond_123

    const/16 v8, -0x3e8

    invoke-static {p2, p1, v8}, Lcom/android/server/pm/PackageManagerServiceInjectorProxy;->returnPackageDeletedResultToObserver(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_121
    .catchall {:try_start_118 .. :try_end_121} :catchall_125

    :try_start_121
    monitor-exit v6

    return v11

    :cond_123
    monitor-exit v6

    :cond_124
    return v10

    :catchall_125
    move-exception v8

    monitor-exit v6

    throw v8
    :try_end_128
    .catch Landroid/os/RemoteException; {:try_start_121 .. :try_end_128} :catch_128

    :catch_128
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    return v10

    :catch_12d
    move-exception v1

    goto/16 :goto_a3

    :catch_130
    move-exception v1

    goto/16 :goto_59
.end method

.method private static readIgnoreApks()V
    .registers 17

    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    return-void

    :cond_b
    const/4 v7, 0x0

    :try_start_c
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v15, Ljava/io/File;

    const-string/jumbo v16, "/system/etc/install_app_filter.xml"

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_19} :catch_ec
    .catchall {:try_start_c .. :try_end_19} :catchall_de

    :try_start_19
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    const-string/jumbo v15, "UTF-8"

    invoke-interface {v11, v8, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x0

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v14

    :goto_2e
    const/4 v15, 0x1

    if-eq v15, v14, :cond_d3

    packed-switch v14, :pswitch_data_ee

    :cond_34
    :goto_34
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    goto :goto_2e

    :pswitch_39
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    if-lez v15, :cond_48

    const/4 v15, 0x0

    invoke-interface {v11, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_48
    const-string/jumbo v15, "add_apps"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_53

    const/4 v9, 0x1

    goto :goto_34

    :cond_53
    const-string/jumbo v15, "ignore_apps"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5e

    const/4 v9, 0x0

    goto :goto_34

    :cond_5e
    const-string/jumbo v15, "app"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_34

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v6, 0x0

    :goto_74
    array-length v15, v12

    if-ge v6, v15, :cond_80

    aget-object v15, v12, v6

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_98

    const/4 v10, 0x1

    :cond_80
    if-eqz v9, :cond_86

    xor-int/lit8 v15, v10, 0x1

    if-nez v15, :cond_8a

    :cond_86
    if-nez v9, :cond_9b

    if-eqz v10, :cond_9b

    :cond_8a
    sget-object v15, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_8f} :catch_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_8f} :catch_ad
    .catchall {:try_start_19 .. :try_end_8f} :catchall_e7

    goto :goto_34

    :catch_90
    move-exception v2

    move-object v7, v8

    :goto_92
    if-eqz v7, :cond_97

    :try_start_94
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_dc

    :cond_97
    :goto_97
    return-void

    :cond_98
    add-int/lit8 v6, v6, 0x1

    goto :goto_74

    :cond_9b
    if-eqz v9, :cond_34

    if-eqz v10, :cond_34

    :try_start_9f
    sget-object v15, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v15, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_34

    sget-object v15, Lcom/android/server/pm/PackageManagerServiceInjector;->sIgnoreApks:Ljava/util/Set;

    invoke-interface {v15, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_ac} :catch_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9f .. :try_end_ac} :catch_ad
    .catchall {:try_start_9f .. :try_end_ac} :catchall_e7

    goto :goto_34

    :catch_ad
    move-exception v3

    move-object v7, v8

    :goto_af
    if-eqz v7, :cond_97

    :try_start_b1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_97

    :catch_b5
    move-exception v2

    goto :goto_97

    :pswitch_b7
    :try_start_b7
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v15, "add_apps"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c7

    const/4 v9, 0x0

    goto/16 :goto_34

    :cond_c7
    const-string/jumbo v15, "ignore_apps"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_cd} :catch_90
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_cd} :catch_ad
    .catchall {:try_start_b7 .. :try_end_cd} :catchall_e7

    move-result v15

    if-eqz v15, :cond_34

    const/4 v9, 0x1

    goto/16 :goto_34

    :cond_d3
    if-eqz v8, :cond_d8

    :try_start_d5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_da

    :cond_d8
    :goto_d8
    move-object v7, v8

    goto :goto_97

    :catch_da
    move-exception v2

    goto :goto_d8

    :catch_dc
    move-exception v2

    goto :goto_97

    :catchall_de
    move-exception v15

    :goto_df
    if-eqz v7, :cond_e4

    :try_start_e1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    :cond_e4
    :goto_e4
    throw v15

    :catch_e5
    move-exception v2

    goto :goto_e4

    :catchall_e7
    move-exception v15

    move-object v7, v8

    goto :goto_df

    :catch_ea
    move-exception v2

    goto :goto_92

    :catch_ec
    move-exception v3

    goto :goto_af

    :pswitch_data_ee
    .packed-switch 0x2
        :pswitch_39
        :pswitch_b7
    .end packed-switch
.end method

.method private static registerDataObserver(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageManagerServiceInjector$3;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/server/pm/PackageManagerServiceInjector$3;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static removeFromPreinstallList(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5

    invoke-static {p0}, Lmiui/os/MiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_a
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1d

    if-eqz v0, :cond_18

    monitor-exit v2

    return-void

    :cond_18
    monitor-exit v2

    invoke-static {p0}, Lcom/android/server/pm/PreinstallApp;->removeFromPreinstallList(Ljava/lang/String;)V

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static removePackageFromSharedUser(Lcom/android/server/pm/PackageSetting;)V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    :cond_9
    return-void
.end method

.method static resolveContentProvider(Lcom/android/server/pm/Settings;Landroid/content/pm/ProviderInfo;IILandroid/content/pm/PackageParser$Provider;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;
    .registers 8

    const/4 v1, 0x0

    const/16 v0, 0x3e7

    if-ne p3, v0, :cond_14

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerServiceCompat;->isEnabledAndMatchLPr(Lcom/android/server/pm/Settings;Landroid/content/pm/ProviderInfo;II)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p5, v1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    invoke-static {p4, p2, v0, v1}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method static resolveUserId(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 7

    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_6b

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sCrossXSpaceIntent:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_48

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_48

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sXSpaceDataSchemeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_48

    return p2

    :cond_48
    invoke-static {p0, p2}, Lmiui/securityspace/XSpaceIntentCompat;->prepareToLeaveUser(Landroid/content/Intent;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :try_start_50
    const-string/jumbo v2, "miui.intent.extra.USER_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string/jumbo v2, "miui.intent.extra.USER_ID"

    invoke-virtual {p0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5f} :catch_61

    :cond_5f
    :goto_5f
    const/4 v2, 0x0

    return v2

    :catch_61
    move-exception v0

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Private intent: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5f

    :cond_6b
    return p2
.end method

.method static setDefaultHome(ILjava/lang/String;)V
    .registers 4

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceInjector;->sDefaultHome:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setExtraRestoreconFlag()V
    .registers 0

    invoke-static {}, Lcom/android/server/pm/ExtraPackageManagerService;->setExtraRestoreconFlag()V

    return-void
.end method

.method private static shouldDeletePackage(Ljava/util/Set;Lcom/android/server/pm/Settings;Ljava/io/File;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/Settings;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    return v3

    :cond_c
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->existsApkFileUnderDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".+-[0-9]+$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_24
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    return v3

    :cond_32
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getPackageName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->isPackageInstalled(Lcom/android/server/pm/Settings;Ljava/lang/String;)Z

    move-result v1

    :goto_3c
    return v1

    :cond_3d
    const/4 v1, 0x1

    goto :goto_3c
.end method

.method static tryDeleteInvalidOrDuplicatePackages(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;)V
    .registers 12

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    if-nez v6, :cond_69

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v6, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    iget-object v6, v6, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2d
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/data/app"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_69

    const/4 v6, 0x0

    array-length v7, v1

    :goto_3d
    if-ge v6, v7, :cond_69

    aget-object v0, v1, v6

    invoke-static {v5, p1, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->shouldDeletePackage(Ljava/util/Set;Lcom/android/server/pm/Settings;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_66

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Try to delete invalid or duplicate package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-static {v9, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->deleteFileOrDirectory(Ljava/io/File;)V

    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_69
    return-void
.end method

.method private static updatePackageWhiteList(Landroid/content/Context;)V
    .registers 6

    :try_start_0
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "IntentInterceptHelper"

    const-string/jumbo v3, "global_intenttogp_packagelist"

    sget-object v4, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalAllowPackageSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalWhiteListPackages:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "IntentInterceptHelper"

    const-string/jumbo v3, "global_intenttogp_switch"

    const-string/jumbo v4, "1"

    invoke-static {v1, v2, v3, v4}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalSyncKey:Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_3c
    .catchall {:try_start_0 .. :try_end_32} :catchall_64

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    :try_start_3d
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_64

    sget-object v1, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_3b

    :catchall_64
    move-exception v1

    sget-object v2, Lcom/android/server/pm/PackageManagerServiceInjector;->sGlobalRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method static updatePsTimestamp(Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;Z)Z
    .registers 9

    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    const/4 v1, 0x0

    if-eqz p0, :cond_23

    :try_start_6
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_23

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    if-eqz p2, :cond_22

    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_25

    :cond_22
    const/4 v1, 0x1

    :cond_23
    monitor-exit v3

    return v1

    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2
.end method
