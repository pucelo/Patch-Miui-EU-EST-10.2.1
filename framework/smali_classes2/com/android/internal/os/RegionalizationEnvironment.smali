.class public Lcom/android/internal/os/RegionalizationEnvironment;
.super Ljava/lang/Object;
.source "RegionalizationEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RegionalizationEnvironment$Package;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final ISREGIONAL_APP:Ljava/lang/String; = "app"

.field public static final ISREGIONAL_FRAMEWORK:Ljava/lang/String; = "Framework"

.field private static final SPEC_FILE_PATH:Ljava/lang/String; = "/persist/speccfg/spec"

.field private static final SUPPORTED:Z

.field private static final TAG:Ljava/lang/String; = "RegionalizationEnvironment"

.field private static isLoaded:Z

.field private static mExcludedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/RegionalizationEnvironment$Package;",
            ">;"
        }
    .end annotation
.end field

.field private static mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string/jumbo v0, "ro.regionalization.support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/RegionalizationEnvironment;->SUPPORTED:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/android/internal/os/RegionalizationEnvironment;->isLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllPackageDirectories()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    const-string/jumbo v3, "RegionalizationEnvironment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package Directoriy("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_4c
    return-object v0
.end method

.method public static getAllPackageNames()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    invoke-virtual {v0}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    return-object v2
.end method

.method public static getPackagesCount()I
    .registers 1

    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;
    .registers 1

    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    return-object v0
.end method

.method public static getStoragePos()Ljava/lang/String;
    .registers 7

    sget-object v4, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    invoke-virtual {v1}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getStoragePos()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    return-object v3

    :cond_1d
    :try_start_1d
    sget-object v4, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Read wrong package for Carrier!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    const-string/jumbo v4, "RegionalizationEnvironment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Get storage pos error, caused by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, ""

    return-object v4
.end method

.method private static init()V
    .registers 2

    const-string/jumbo v1, "regionalization"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IRegionalizationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IRegionalizationService;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    sget-object v1, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v1, :cond_1a

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->loadSwitchedPackages()V

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->loadExcludedApplist()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/RegionalizationEnvironment;->isLoaded:Z

    :cond_1a
    return-void
.end method

.method public static isExcludedApp(Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getPackagesCount()I

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string/jumbo v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2c
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRegionalizationCarrierOverlayPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez p0, :cond_b

    :cond_a
    return v6

    :cond_b
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getAllPackageNames()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_27

    const/4 v0, 0x1

    :cond_27
    if-eqz v0, :cond_14

    const-string/jumbo v4, "Framework"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string/jumbo v4, "Framework"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_3d

    :goto_3b
    const/4 v4, 0x1

    return v4

    :cond_3d
    const-string/jumbo v4, "app"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_3b

    :cond_47
    return v6
.end method

.method public static isSupported()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/os/RegionalizationEnvironment;->SUPPORTED:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/internal/os/RegionalizationEnvironment;->isLoaded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->init()V

    :cond_d
    sget-boolean v0, Lcom/android/internal/os/RegionalizationEnvironment;->SUPPORTED:Z

    return v0
.end method

.method private static loadExcludedApplist()V
    .registers 13

    const-string/jumbo v10, "RegionalizationEnvironment"

    const-string/jumbo v11, "loadExcludedApps!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getPackagesCount()I

    move-result v10

    if-nez v10, :cond_10

    return-void

    :cond_10
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_99

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    const-string/jumbo v10, "RegionalizationEnvironment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "load excluded apps for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getExcludedListFilePath()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    :try_start_45
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const/4 v11, 0x0

    invoke-interface {v10, v6, v11}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_50} :catch_94

    :goto_50
    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_16

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5c
    :goto_5c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5c

    const-string/jumbo v10, "/"

    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5c

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5c

    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5c

    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c

    :catch_94
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_50

    :cond_99
    return-void
.end method

.method private static loadSwitchedPackages()V
    .registers 14

    const-string/jumbo v11, "RegionalizationEnvironment"

    const-string/jumbo v12, "load packages for Carrier!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_a
    sget-object v11, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string/jumbo v12, "/persist/speccfg/spec"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_59
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_18} :catch_39

    :goto_18
    if-eqz v1, :cond_58

    :try_start_1a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_58

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "packStorage="

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5e

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Can\'t read storage pos for Carrier package!"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_39} :catch_39

    :catch_39
    move-exception v3

    const-string/jumbo v11, "RegionalizationEnvironment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Load package for carrier error, caused by: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-void

    :catch_59
    move-exception v2

    :try_start_5a
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18

    :cond_5e
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "packStorage="

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7f

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Storage pos for Carrier package is wrong!"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_7f
    const-string/jumbo v8, "^packCount=[0-9]$"

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_98

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Can\'t read package count of Carrier!"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_98
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "packCount="

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_b6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v11, v7, :cond_bf

    :cond_b6
    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Package count of Carrier is wrong!"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_bf
    const/4 v5, 0x2

    :goto_c0
    add-int/lit8 v11, v7, 0x2

    if-ge v5, v11, :cond_58

    const-string/jumbo v9, "^strSpec[0-9]=\\w+$"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12d

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string/jumbo v12, "strSpec"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_e9} :catch_39

    move-result v11

    if-nez v11, :cond_117

    const/4 v4, 0x0

    :try_start_ed
    sget-object v11, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_10a} :catch_11a
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_10a} :catch_39

    move-result v4

    :goto_10b
    if-eqz v4, :cond_11f

    :try_start_10d
    sget-object v11, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    invoke-direct {v12, v6, v5, v10}, Lcom/android/internal/os/RegionalizationEnvironment$Package;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_117
    add-int/lit8 v5, v5, 0x1

    goto :goto_c0

    :catch_11a
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10b

    :cond_11f
    sget-object v11, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Read wrong packages for Carrier!"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_12d
    sget-object v11, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    new-instance v11, Ljava/io/IOException;

    const-string/jumbo v12, "Read wrong packages for Carrier!"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_13b} :catch_39
.end method
