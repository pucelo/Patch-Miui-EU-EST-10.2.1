.class public Lcom/android/server/pm/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# static fields
.field private static final ANDROID_INSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final GOOGLE_INSTALLER:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final MIUI_ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "miui.intent.action.PACKAGE_FIRST_LAUNCH"

.field private static final MIUI_INSTALLER:Ljava/lang/String; = "com.miui.packageinstaller"

.field private static final MIUI_PERMISSION:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/pm/SettingsInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkXSpaceApp(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v4

    if-eqz v4, :cond_73

    sget-object v4, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    invoke-virtual {p0, v6, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :goto_17
    sget-object v4, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    sget-object v4, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    :goto_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Component;

    iget-object v4, v0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    iget-object v4, v0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_54

    :cond_6e
    invoke-virtual {p0, v7, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_17

    :cond_72
    return v6

    :cond_73
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_c6

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c6

    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c6

    const-string/jumbo v4, "com.miui.packageinstaller"

    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9c

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    return v6

    :cond_9c
    const-string/jumbo v4, "com.google.android.packageinstaller"

    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v4

    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    return v6

    :cond_b1
    const-string/jumbo v4, "com.android.packageinstaller"

    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v4

    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    return v6

    :cond_c6
    return v7
.end method

.method private static isSystem(Lcom/android/server/pm/PackageSetting;)Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V
    .registers 6

    if-eqz p1, :cond_e

    invoke-static {p1}, Lcom/android/server/pm/SettingsInjector;->isSystem(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-nez v1, :cond_e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_f

    :cond_e
    return-void

    :cond_f
    new-instance v0, Lcom/android/server/pm/SettingsInjector$1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/SettingsInjector$1;-><init>(Lcom/android/server/pm/PackageSetting;I)V

    if-eqz p0, :cond_20

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    :goto_1f
    return-void

    :cond_20
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1f
.end method

.method public static shouldInstallInXSpace(Landroid/os/UserHandle;I)Z
    .registers 3

    if-nez p0, :cond_a

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x1

    return v0
.end method
