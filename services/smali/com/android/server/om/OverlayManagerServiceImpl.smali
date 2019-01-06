.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;
    }
.end annotation


# instance fields
.field private final mDefaultOverlays:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Ljava/util/Set;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;",
            "Lcom/android/server/om/IdmapManager;",
            "Lcom/android/server/om/OverlayManagerSettings;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    return-void
.end method

.method private calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v1, 0x0

    return v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/pm/PackageInfo;I)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    return v1

    :cond_e
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x3

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x2

    goto :goto_19
.end method

.method private static isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget v1, p0, Landroid/content/pm/PackageInfo;->overlayFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private isPackageUpdatableOverlay(Ljava/lang/String;I)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    const/4 v1, 0x0

    return v1

    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .registers 10

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v4, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    :goto_11
    if-ge v4, v5, :cond_2a

    aget v2, v3, v4

    :try_start_15
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v7, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/content/om/OverlayInfo;->isEnabled()Z
    :try_end_22
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_15 .. :try_end_22} :catch_26

    move-result v6

    if-eqz v6, :cond_27

    return-void

    :catch_26
    move-exception v0

    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_2a
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v5, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v4, p1, v5}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    return-void
.end method

.method private updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z
    .registers 14

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_49

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v8, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_2f

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v8, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v9, v4, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v7, v8, v9}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v7

    or-int/2addr v3, v7

    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2f
    :try_start_2f
    invoke-direct {p0, p3, v6, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    :try_end_32
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2f .. :try_end_32} :catch_35

    move-result v7

    or-int/2addr v3, v7

    goto :goto_2c

    :catch_35
    move-exception v1

    const-string/jumbo v7, "OverlayManager"

    const-string/jumbo v8, "failed to update settings"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v8, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v7

    or-int/2addr v3, v7

    goto :goto_2c

    :cond_49
    return v3
.end method

.method private updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    if-eqz p1, :cond_1a

    const-string/jumbo v3, "android"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    :goto_11
    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/om/IdmapManager;->createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    :cond_1a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, p3, v5}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)I

    move-result v2

    if-eq v0, v2, :cond_3f

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p3, v2}, Lcom/android/server/om/OverlayManagerSettings;->setState(Ljava/lang/String;II)Z

    move-result v3

    or-int/2addr v1, v3

    :cond_3f
    return v1

    :cond_40
    const/4 v3, 0x0

    goto :goto_11
.end method


# virtual methods
.method getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_2a

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2a
    return-object v4
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    :try_end_5
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method onDump(Ljava/io/PrintWriter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Default overlays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:Ljava/util/Set;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onOverlayPackageAdded(Ljava/lang/String;I)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-nez v8, :cond_2d

    const-string/jumbo v0, "OverlayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overlay package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was added, but couldn\'t be found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    return-void

    :cond_2d
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v1, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v1, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    iget v6, v8, Landroid/content/pm/PackageInfo;->overlayPriority:I

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    :try_start_4a
    invoke-direct {p0, v9, v8, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v1, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_57
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_4a .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    return-void

    :catch_58
    move-exception v7

    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "failed to update settings"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    goto :goto_57
.end method

.method onOverlayPackageChanged(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "onOverlayPackageChanged called, but only pre-installed overlays supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "onOverlayPackageRemoved called, but only pre-installed overlays supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onOverlayPackageUpgraded(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "onOverlayPackageUpgraded called, but only pre-installed overlays supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onOverlayPackageUpgrading(Ljava/lang/String;I)V
    .registers 5

    const-string/jumbo v0, "OverlayManager"

    const-string/jumbo v1, "onOverlayPackageUpgrading called, but only pre-installed overlays supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onTargetPackageAdded(Ljava/lang/String;I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    return-void
.end method

.method onTargetPackageChanged(Ljava/lang/String;I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method onTargetPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    return-void
.end method

.method onTargetPackageUpgraded(Ljava/lang/String;I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method

.method onTargetPackageUpgrading(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAllOverlaysForTarget(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method onUserRemoved(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    return-void
.end method

.method setEnabled(Ljava/lang/String;ZI)Z
    .registers 12

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v5, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_a

    return v7

    :cond_a
    invoke-static {v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_11

    return v7

    :cond_11
    :try_start_11
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v6, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v1

    invoke-direct {p0, v4, v3, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v5

    or-int/2addr v1, v5

    if-eqz v1, :cond_33

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v6, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_33
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_11 .. :try_end_33} :catch_35

    :cond_33
    const/4 v5, 0x1

    return v5

    :catch_35
    move-exception v0

    return v7
.end method

.method setEnabledExclusive(Ljava/lang/String;I)Z
    .registers 16

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v9, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-nez v7, :cond_b

    return v11

    :cond_b
    :try_start_b
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v10, v6, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v9, v10, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v9, v6, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p0, v9, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_58

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    iget-object v2, v9, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v9, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_44

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v2, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v9

    or-int/2addr v5, v9

    :cond_41
    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_44
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-nez v9, :cond_41

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v10, 0x0

    invoke-virtual {v9, v2, p2, v10}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-direct {p0, v8, v1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v9

    or-int/2addr v5, v9

    goto :goto_41

    :cond_58
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v10, 0x1

    invoke-virtual {v9, p1, p2, v10}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v9

    or-int/2addr v5, v9

    invoke-direct {p0, v8, v7, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v9

    or-int/2addr v5, v9

    if-eqz v5, :cond_6e

    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v10, v6, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v9, v10, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_6e
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_b .. :try_end_6e} :catch_6f

    :cond_6e
    return v12

    :catch_6f
    move-exception v3

    return v11
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method updateOverlaysForUser(I)Ljava/util/ArrayList;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v21, Landroid/util/ArraySet;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v27

    new-instance v22, Landroid/util/ArrayMap;

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v14, 0x0

    :goto_1d
    move/from16 v0, v27

    if-ge v14, v0, :cond_4c

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/16 v16, 0x0

    :goto_2f
    move/from16 v0, v16

    if-ge v0, v12, :cond_49

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/om/OverlayInfo;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v16, v16, 0x1

    goto :goto_2f

    :cond_49
    add-int/lit8 v14, v14, 0x1

    goto :goto_1d

    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    const/4 v14, 0x0

    :goto_5b
    move/from16 v0, v20

    if-ge v14, v0, :cond_13a

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/om/OverlayInfo;

    if-eqz v17, :cond_85

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e9

    :cond_85
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v18 .. v18}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v9

    move-object/from16 v0, v18

    iget v10, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    move/from16 v6, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    if-nez v17, :cond_118

    invoke-static/range {v18 .. v18}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageStaticOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_bc

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:Ljava/util/Set;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ca

    :cond_bc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    :cond_ca
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "app"

    invoke-static {v4, v5}, Lcom/android/internal/os/RegionalizationEnvironment;->isRegionalizationCarrierOverlayPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    :cond_e9
    :goto_e9
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move/from16 v0, p1

    invoke-interface {v4, v5, v0}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v18

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z
    :try_end_102
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_e9 .. :try_end_102} :catch_122

    :goto_102
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5b

    :cond_118
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e9

    :catch_122
    move-exception v13

    const-string/jumbo v4, "OverlayManager"

    const-string/jumbo v5, "failed to update settings"

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    goto :goto_102

    :cond_13a
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v23

    const/4 v14, 0x0

    :goto_13f
    move/from16 v0, v23

    if-ge v14, v0, :cond_16d

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/om/OverlayInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v6, v0, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_13f

    :cond_16d
    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_171
    :goto_171
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-interface {v4, v0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-nez v4, :cond_171

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_171

    :cond_18f
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4
.end method
