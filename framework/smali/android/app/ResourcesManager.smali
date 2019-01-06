.class public Landroid/app/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ResourcesManager$1;,
        Landroid/app/ResourcesManager$ActivityResources;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ResourcesManager"

.field private static final sEmptyReferencePredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sResourcesManager:Landroid/app/ResourcesManager;


# instance fields
.field private final mActivityResourceReferences:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/ResourcesManager$ActivityResources;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustedDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/DisplayAdjustments;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/Display;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

.field private final mResConfiguration:Landroid/content/res/Configuration;

.field private final mResourceImpls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/ResourcesImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mResourceReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/ResourcesManager$1;

    invoke-direct {v0}, Landroid/app/ResourcesManager$1;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    return-void
.end method

.method private static applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 6

    const/4 v3, 0x1

    iput v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v2, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v1}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_43

    const/4 v1, 0x2

    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    :goto_32
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    return-void

    :cond_43
    iput v3, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v1, v2}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_32
.end method

.method private cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V
    .registers 4

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    :cond_13
    return-void
.end method

.method private createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 9

    const/4 v6, 0x0

    new-instance v2, Landroid/view/DisplayAdjustments;

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v2, v5}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/Configuration;)V

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v5}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager;->createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_14

    return-object v6

    :cond_14
    iget v5, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    invoke-virtual {p0, v5, v2}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroid/app/ResourcesManager;->generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;

    move-result-object v1

    new-instance v4, Landroid/content/res/MiuiResourcesImpl;

    invoke-direct {v4, v0, v3, v1, v2}, Landroid/content/res/MiuiResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    return-object v4
.end method

.method private findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;
    .registers 8

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_2c

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ResourcesImpl;

    :goto_1a
    if-eqz v1, :cond_29

    if-ne p1, v1, :cond_29

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    return-object v4

    :cond_27
    const/4 v1, 0x0

    goto :goto_1a

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2c
    return-object v5
.end method

.method private findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 5

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method private findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ResourcesImpl;

    :goto_11
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->isUpToDate()Z

    move-result v2

    if-eqz v2, :cond_20

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_11

    :cond_20
    return-object v3
.end method

.method private generateConfig(Landroid/content/res/ResourcesKey;Landroid/util/DisplayMetrics;)Landroid/content/res/Configuration;
    .registers 7

    iget v3, p1, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v3, :cond_23

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {p1}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v1

    if-eqz v2, :cond_d

    if-eqz v1, :cond_25

    :cond_d
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-nez v2, :cond_1b

    invoke-static {p2, v0}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_1b
    if-eqz v1, :cond_22

    iget-object v3, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_22
    :goto_22
    return-object v0

    :cond_23
    const/4 v2, 0x0

    goto :goto_5

    :cond_25
    invoke-virtual {p0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_22
.end method

.method private getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;
    .registers 10

    const/4 v6, 0x0

    if-eqz p2, :cond_25

    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    :goto_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    monitor-enter p0

    :try_start_11
    iget-object v5, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_49

    if-eqz v0, :cond_2b

    monitor-exit p0

    return-object v0

    :cond_25
    new-instance v1, Landroid/view/DisplayAdjustments;

    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    goto :goto_8

    :cond_2b
    :try_start_2b
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_49

    move-result-object v2

    if-nez v2, :cond_33

    monitor-exit p0

    return-object v6

    :cond_33
    :try_start_33
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/view/DisplayAdjustments;

    invoke-virtual {v2, p1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v5, p0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_49

    :cond_47
    monitor-exit p0

    return-object v0

    :catchall_49
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public static getInstance()Landroid/app/ResourcesManager;
    .registers 2

    const-class v1, Landroid/app/ResourcesManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    if-nez v0, :cond_e

    new-instance v0, Landroid/app/ResourcesManager;

    invoke-direct {v0}, Landroid/app/ResourcesManager;-><init>()V

    sput-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;

    :cond_e
    sget-object v0, Landroid/app/ResourcesManager;->sResourcesManager:Landroid/app/ResourcesManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    if-nez v0, :cond_15

    new-instance v0, Landroid/app/ResourcesManager$ActivityResources;

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager$ActivityResources;-><init>(Landroid/app/ResourcesManager$ActivityResources;)V

    iget-object v1, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method

.method private getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 12

    const/4 v7, 0x0

    monitor-enter p0

    if-eqz p1, :cond_40

    :try_start_4
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    invoke-virtual {p2}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v5

    if-eqz v5, :cond_32

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v6, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_32

    new-instance v4, Landroid/content/res/Configuration;

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_32
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-eqz v3, :cond_55

    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p3, v3, v5}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_5d

    move-result-object v5

    monitor-exit p0

    return-object v5

    :cond_40
    :try_start_40
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    sget-object v6, Landroid/app/ResourcesManager;->sEmptyReferencePredicate:Ljava/util/function/Predicate;

    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->unstableRemoveIf(Ljava/util/ArrayList;Ljava/util/function/Predicate;)I

    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-eqz v3, :cond_55

    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p3, v3, v5}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    :try_end_52
    .catchall {:try_start_40 .. :try_end_52} :catchall_5d

    move-result-object v5

    monitor-exit p0

    return-object v5

    :cond_55
    monitor-exit p0

    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-nez v3, :cond_60

    return-object v7

    :catchall_5d
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_60
    monitor-enter p0

    :try_start_61
    invoke-direct {p0, p2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v1

    if-eqz v1, :cond_79

    invoke-virtual {v3}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    move-object v3, v1

    :goto_6f
    if-eqz p1, :cond_87

    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p1, p3, v3, v5}, Landroid/app/ResourcesManager;->getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    :try_end_76
    .catchall {:try_start_61 .. :try_end_76} :catchall_84

    move-result-object v2

    :goto_77
    monitor-exit p0

    return-object v2

    :cond_79
    :try_start_79
    iget-object v5, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_84

    goto :goto_6f

    :catchall_84
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_87
    :try_start_87
    iget-object v5, p2, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct {p0, p3, v3, v5}, Landroid/app/ResourcesManager;->getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_84

    move-result-object v2

    goto :goto_77
.end method

.method private getOrCreateResourcesForActivityLocked(Landroid/os/IBinder;Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 12

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v0

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_31

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    if-ne v5, p3, :cond_2e

    return-object v3

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_31
    new-instance v3, Landroid/content/res/MiuiResources;

    invoke-direct {v3, p2}, Landroid/content/res/MiuiResources;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    iget-object v5, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method private getOrCreateResourcesLocked(Ljava/lang/ClassLoader;Landroid/content/res/ResourcesImpl;Landroid/content/res/CompatibilityInfo;)Landroid/content/res/Resources;
    .registers 10

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_2d

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/content/res/Resources;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    if-ne v4, p2, :cond_2a

    return-object v2

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2d
    new-instance v2, Landroid/content/res/MiuiResources;

    invoke-direct {v2, p1}, Landroid/content/res/MiuiResources;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    iget-object v4, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/ResourcesImpl;",
            "Landroid/content/res/ResourcesKey;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    return-void

    :cond_7
    iget-object v9, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v8, :cond_45

    iget-object v9, p0, Landroid/app/ResourcesManager;->mResourceReferences:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3d

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    :goto_20
    if-eqz v5, :cond_42

    invoke-virtual {v5}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    if-eqz v4, :cond_42

    invoke-direct {p0, v4}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-nez v3, :cond_3f

    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    const-string/jumbo v10, "failed to redirect ResourcesImpl"

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3d
    const/4 v5, 0x0

    goto :goto_20

    :cond_3f
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_45
    iget-object v9, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;

    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v2, 0x0

    :goto_62
    if-ge v2, v7, :cond_4f

    iget-object v9, v0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_91

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Resources;

    :goto_74
    if-eqz v5, :cond_96

    invoke-virtual {v5}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/ResourcesKey;

    if-eqz v4, :cond_96

    invoke-direct {p0, v4}, Landroid/app/ResourcesManager;->findOrCreateResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v3

    if-nez v3, :cond_93

    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    const-string/jumbo v10, "failed to redirect ResourcesImpl"

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_91
    const/4 v5, 0x0

    goto :goto_74

    :cond_93
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_99
    return-void
.end method


# virtual methods
.method public appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    monitor-enter p0

    :try_start_1
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v11

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v11, :cond_7b

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/ref/WeakReference;

    if-eqz v15, :cond_77

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/res/ResourcesImpl;

    :goto_2d
    if-eqz v10, :cond_74

    iget-object v1, v12, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, v12, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_74

    iget-object v1, v12, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v1, :cond_79

    iget-object v1, v12, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v1, v1

    :goto_4a
    add-int/lit8 v13, v1, 0x1

    new-array v5, v13, [Ljava/lang/String;

    iget-object v1, v12, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v1, :cond_5c

    iget-object v1, v12, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v2, v12, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5c
    add-int/lit8 v1, v13, -0x1

    aput-object p2, v5, v1

    new-instance v1, Landroid/content/res/ResourcesKey;

    iget-object v2, v12, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v3, v12, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v4, v12, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget v6, v12, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v7, v12, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v8, v12, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-direct/range {v1 .. v8}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {v14, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_77
    const/4 v10, 0x0

    goto :goto_2d

    :cond_79
    const/4 v1, 0x0

    goto :goto_4a

    :cond_7b
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_82

    monitor-exit p0

    return-void

    :catchall_82
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public applyCompatConfigurationLocked(ILandroid/content/res/Configuration;)Z
    .registers 4

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    const/4 v0, 0x1

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public final applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z
    .registers 21

    :try_start_0
    const-string/jumbo v15, "ResourcesManager#applyConfigurationToResourcesLocked"

    const-wide/16 v16, 0x2000

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_dd

    move-result v15

    if-nez v15, :cond_1f

    if-nez p2, :cond_1f

    const/4 v15, 0x0

    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return v15

    :cond_1f
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mAdjustedDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/ResourcesManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    if-eqz p2, :cond_52

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v15, :cond_4a

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_52

    :cond_4a
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ResourcesManager;->mResCompatibilityInfo:Landroid/content/res/CompatibilityInfo;

    or-int/lit16 v2, v2, 0xd00

    :cond_52
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v5, v1}, Landroid/content/res/Resources;->updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    add-int/lit8 v9, v15, -0x1

    :goto_6c
    if-ltz v9, :cond_ec

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/ResourcesKey;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/ref/WeakReference;

    if-eqz v14, :cond_d1

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/res/ResourcesImpl;

    :goto_8a
    if-eqz v12, :cond_e4

    iget v6, v11, Landroid/content/res/ResourcesKey;->mDisplayId:I

    if-nez v6, :cond_d3

    const/4 v10, 0x1

    :goto_91
    move-object v7, v5

    invoke-virtual {v11}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v8

    if-eqz v10, :cond_9a

    if-eqz v8, :cond_d5

    :cond_9a
    if-nez v13, :cond_a1

    new-instance v13, Landroid/content/res/Configuration;

    invoke-direct {v13}, Landroid/content/res/Configuration;-><init>()V

    :cond_a1
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {v12}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v3

    if-eqz p2, :cond_b7

    new-instance v4, Landroid/view/DisplayAdjustments;

    invoke-direct {v4, v3}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    move-object v3, v4

    :cond_b7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v7

    if-nez v10, :cond_c2

    invoke-static {v7, v13}, Landroid/app/ResourcesManager;->applyNonDefaultDisplayMetricsToConfiguration(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :cond_c2
    if-eqz v8, :cond_c9

    iget-object v15, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v13, v15}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_c9
    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v7, v0}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    :goto_ce
    add-int/lit8 v9, v9, -0x1

    goto :goto_6c

    :cond_d1
    const/4 v12, 0x0

    goto :goto_8a

    :cond_d3
    const/4 v10, 0x0

    goto :goto_91

    :cond_d5
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v5, v1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    :try_end_dc
    .catchall {:try_start_1f .. :try_end_dc} :catchall_dd

    goto :goto_ce

    :catchall_dd
    move-exception v15

    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    throw v15

    :cond_e4
    :try_start_e4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v15, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_eb
    .catchall {:try_start_e4 .. :try_end_eb} :catchall_dd

    goto :goto_ce

    :cond_ec
    if-eqz v2, :cond_f5

    const/4 v15, 0x1

    :goto_ef
    const-wide/16 v16, 0x2000

    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    return v15

    :cond_f5
    const/4 v15, 0x0

    goto :goto_ef
.end method

.method final applyNewResourceDirsLocked(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 17

    :try_start_0
    const-string/jumbo v0, "ResourcesManager#applyNewResourceDirsLocked"

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v8, 0x0

    :goto_14
    if-ge v8, v10, :cond_57

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/res/ResourcesKey;

    iget-object v0, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_55

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ResourcesImpl;

    :goto_2e
    if-eqz v9, :cond_52

    iget-object v0, v11, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget-object v0, v11, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_3c
    new-instance v0, Landroid/content/res/ResourcesKey;

    iget-object v1, v11, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v2, v11, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v4, v11, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget v5, v11, Landroid/content/res/ResourcesKey;->mDisplayId:I

    iget-object v6, v11, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v7, v11, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {v12, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_55
    const/4 v9, 0x0

    goto :goto_2e

    :cond_57
    invoke-direct {p0, v12}, Landroid/app/ResourcesManager;->redirectResourcesToNewImplLocked(Landroid/util/ArrayMap;)V
    :try_end_5a
    .catchall {:try_start_0 .. :try_end_5a} :catchall_60

    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_60
    move-exception v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method protected createAssetManager(Landroid/content/res/ResourcesKey;)Landroid/content/res/AssetManager;
    .registers 12

    const/4 v9, 0x0

    const/4 v4, 0x0

    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    if-eqz v5, :cond_30

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_30

    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to add asset path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_30
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    if-eqz v5, :cond_60

    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_38
    if-ge v5, v7, :cond_60

    aget-object v3, v6, v5

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_5d

    const-string/jumbo v4, "ResourcesManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to add split asset path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_60
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    if-eqz v5, :cond_72

    iget-object v6, p1, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    array-length v7, v6

    move v5, v4

    :goto_68
    if-ge v5, v7, :cond_72

    aget-object v1, v6, v5

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    :cond_72
    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v5, :cond_b0

    iget-object v5, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v6, v5

    :goto_79
    if-ge v4, v6, :cond_b0

    aget-object v2, v5, v4

    const-string/jumbo v7, ".apk"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_ad

    const-string/jumbo v7, "ResourcesManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Asset path \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' does not exist or contains no resources."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    :cond_b0
    return-object v0
.end method

.method public createBaseActivityResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 20

    :try_start_0
    const-string/jumbo v3, "ResourcesManager#createBaseActivityResources"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Landroid/content/res/ResourcesKey;

    if-eqz p7, :cond_39

    new-instance v8, Landroid/content/res/Configuration;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_13
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    if-eqz p9, :cond_3b

    :goto_20
    monitor-enter p0
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_43

    :try_start_21
    invoke-direct {p0, p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_40

    :try_start_24
    monitor-exit p0

    const/4 v3, 0x0

    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-virtual {p0, p1, v0, v1, v3}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V

    move-object/from16 v0, p9

    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_43

    move-result-object v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_39
    const/4 v8, 0x0

    goto :goto_13

    :cond_3b
    :try_start_3b
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p9

    goto :goto_20

    :catchall_40
    move-exception v3

    monitor-exit p0

    throw v3
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_10

    move-result-object v0

    if-nez v0, :cond_a

    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_a
    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/app/ResourcesManager;->mResConfiguration:Landroid/content/res/Configuration;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .registers 3

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;
    .registers 5

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct {p0, p1, p2}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_e
    return-object v1

    :cond_f
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    goto :goto_e
.end method

.method public getResources(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 20

    :try_start_0
    const-string/jumbo v3, "ResourcesManager#getResources"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v2, Landroid/content/res/ResourcesKey;

    if-eqz p7, :cond_2c

    new-instance v8, Landroid/content/res/Configuration;

    move-object/from16 v0, p7

    invoke-direct {v8, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    :goto_13
    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    if-eqz p9, :cond_2e

    :goto_20
    move-object/from16 v0, p9

    invoke-direct {p0, p1, v2, v0}, Landroid/app/ResourcesManager;->getOrCreateResources(Landroid/os/IBinder;Landroid/content/res/ResourcesKey;Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_33

    move-result-object v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-object v3

    :cond_2c
    const/4 v8, 0x0

    goto :goto_13

    :cond_2e
    :try_start_2e
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_33

    move-result-object p9

    goto :goto_20

    :catchall_33
    move-exception v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method public invalidatePath(Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    :try_start_3
    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_22

    iget-object v3, p0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ResourcesKey;

    invoke-virtual {v2, p1}, Landroid/content/res/ResourcesKey;->isPathReferenced(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-direct {p0, v2}, Landroid/app/ResourcesManager;->cleanupResourceImpl(Landroid/content/res/ResourcesKey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_22
    const-string/jumbo v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalidated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " asset managers that referenced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_49

    monitor-exit p0

    return-void

    :catchall_49
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    if-eqz p1, :cond_13

    :try_start_5
    iget-object v3, p0, Landroid/app/ResourcesManager;->mActivityResourceReferences:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ResourcesManager$ActivityResources;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_33

    :goto_d
    if-nez v0, :cond_17

    if-nez p2, :cond_15

    :goto_11
    monitor-exit p0

    return v1

    :cond_13
    const/4 v0, 0x0

    goto :goto_d

    :cond_15
    move v1, v2

    goto :goto_11

    :cond_17
    :try_start_17
    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    if-eqz p2, :cond_31

    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_31

    iget-object v3, v0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, v3}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_33

    move-result v3

    if-nez v3, :cond_2f

    :cond_2d
    :goto_2d
    monitor-exit p0

    return v1

    :cond_2f
    move v1, v2

    goto :goto_2d

    :cond_31
    move v1, v2

    goto :goto_2d

    :catchall_33
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;IZ)V
    .registers 25

    :try_start_0
    const-string/jumbo v3, "ResourcesManager#updateResourcesForActivity"

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    monitor-enter p0
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_63

    :try_start_9
    invoke-direct/range {p0 .. p1}, Landroid/app/ResourcesManager;->getOrCreateActivityResourcesStructLocked(Landroid/os/IBinder;)Landroid/app/ResourcesManager$ActivityResources;

    move-result-object v11

    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_60

    move-result v3

    if-eqz v3, :cond_22

    xor-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_63

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_22
    :try_start_22
    new-instance v13, Landroid/content/res/Configuration;

    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-direct {v13, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p2, :cond_5a

    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :goto_32
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    xor-int/lit8 v10, v3, 0x1

    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v12, 0x0

    :goto_43
    move/from16 v0, v16

    if-ge v12, v0, :cond_f0

    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/Resources;

    if-nez v17, :cond_6a

    :cond_57
    :goto_57
    add-int/lit8 v12, v12, 0x1

    goto :goto_43

    :cond_5a
    iget-object v3, v11, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->unset()V
    :try_end_5f
    .catchall {:try_start_22 .. :try_end_5f} :catchall_60

    goto :goto_32

    :catchall_60
    move-exception v3

    :try_start_61
    monitor-exit p0

    throw v3
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v3

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v3

    :cond_6a
    :try_start_6a
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/ResourcesManager;->findKeyForResourceImplLocked(Landroid/content/res/ResourcesImpl;)Landroid/content/res/ResourcesKey;

    move-result-object v14

    if-nez v14, :cond_95

    const-string/jumbo v3, "ResourcesManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t find ResourcesKey for resources impl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_95
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    if-eqz p2, :cond_a1

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_a1
    if-eqz v10, :cond_b2

    invoke-virtual {v14}, Landroid/content/res/ResourcesKey;->hasOverrideConfiguration()Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v13, v3}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :cond_b2
    new-instance v2, Landroid/content/res/ResourcesKey;

    iget-object v3, v14, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    iget-object v4, v14, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    iget-object v5, v14, Landroid/content/res/ResourcesKey;->mOverlayDirs:[Ljava/lang/String;

    iget-object v6, v14, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v9, v14, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    move/from16 v7, p3

    invoke-direct/range {v2 .. v9}, Landroid/content/res/ResourcesKey;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->findResourcesImplForKeyLocked(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v18

    if-nez v18, :cond_e1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ResourcesManager;->createResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v18

    if-eqz v18, :cond_e1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ResourcesManager;->mResourceImpls:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e1
    if-eqz v18, :cond_57

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_57

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V
    :try_end_ee
    .catchall {:try_start_6a .. :try_end_ee} :catchall_60

    goto/16 :goto_57

    :cond_f0
    :try_start_f0
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_63

    const-wide/16 v4, 0x2000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
