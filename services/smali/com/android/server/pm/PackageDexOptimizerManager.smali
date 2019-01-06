.class public Lcom/android/server/pm/PackageDexOptimizerManager;
.super Ljava/lang/Object;
.source "PackageDexOptimizerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;,
        Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;,
        Lcom/android/server/pm/PackageDexOptimizerManager$Holder;
    }
.end annotation


# static fields
.field private static final DEFAULT_BOOTDEXOPT_DATA_APPS_THRESHOLD:I = 0xa

.field private static final DEXOPT_WHITELIST:[Ljava/lang/String;

.field private static final START_DEXOPT_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PackageDexOptimizerManager"

.field private static sPerformDexOptMethod:Ljava/lang/reflect/Method;

.field private static final sPreferredInstructionSet:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field final mPendingDexOpt:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 7

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.eg.android.AlipayGphone"

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.tencent.mm"

    aput-object v3, v2, v5

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->DEXOPT_WHITELIST:[Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-static {v2}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sPreferredInstructionSet:Ljava/lang/String;

    :try_start_1b
    const-class v2, Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "performDexOpt"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1b .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    :try_start_3f
    const-class v2, Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "performDexOpt"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/miui/whetstone/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;
    :try_end_5c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3f .. :try_end_5c} :catch_5d

    goto :goto_3d

    :catch_5d
    move-exception v1

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/pm/PackageDexOptimizerManager;->sPerformDexOptMethod:Ljava/lang/reflect/Method;

    goto :goto_3d
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "PackageDexOptimizerManager"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;

    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;-><init>(Lcom/android/server/pm/PackageDexOptimizerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageDexOptimizerManager;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizerManager;-><init>()V

    return-void
.end method

.method static getDefaultMostUsagePackageList(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v9, 0x7

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageDexOptimizerManager;->getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    return-object v8

    :cond_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v8, "persist.sys.dexopt_threshold"

    const/16 v9, 0xa

    invoke-static {v8, v9}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    const/4 v0, 0x0

    :goto_26
    :try_start_26
    sget-object v8, Lcom/android/server/pm/PackageDexOptimizerManager;->DEXOPT_WHITELIST:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_5b

    sget-object v8, Lcom/android/server/pm/PackageDexOptimizerManager;->DEXOPT_WHITELIST:[Ljava/lang/String;

    aget-object v3, v8, v0

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_58

    const-string/jumbo v8, "PackageDexOptimizerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found default Package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catchall {:try_start_26 .. :try_end_56} :catchall_8a

    add-int/lit8 v6, v6, -0x1

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_5b
    monitor-exit v9

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_60
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b6

    if-lez v6, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStats;

    invoke-virtual {v7}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v9

    :try_start_75
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_85

    invoke-static {v4}, Lcom/android/server/pm/PackageDexOptimizerManager;->isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v8

    if-eqz v8, :cond_8d

    :cond_85
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_88
    .catchall {:try_start_75 .. :try_end_88} :catchall_b3

    :cond_88
    :goto_88
    monitor-exit v9

    goto :goto_60

    :catchall_8a
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_8d
    :try_start_8d
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_88

    const-string/jumbo v8, "PackageDexOptimizerManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Found most usage Package: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b0
    .catchall {:try_start_8d .. :try_end_b0} :catchall_b3

    add-int/lit8 v6, v6, -0x1

    goto :goto_88

    :catchall_b3
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_b6
    return-object v2
.end method

.method public static getInstance()Lcom/android/server/pm/PackageDexOptimizerManager;
    .registers 1

    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager$Holder;->INSTANCE:Lcom/android/server/pm/PackageDexOptimizerManager;

    return-object v0
.end method

.method private static getPrimaryInstructionSet(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/pm/PackageDexOptimizerManager;->sPreferredInstructionSet:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getRecentlyUsedPackages(Landroid/content/Context;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageDexOptimizerManager;->getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_36

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_17

    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_35
    return-object v1

    :cond_36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method static getSortedUsageStatsByForegroundTime(Landroid/content/Context;I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    const-string/jumbo v9, "usagestats"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStatsManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    mul-int/lit8 v9, p1, 0x18

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v0, v9

    sub-long v10, v6, v0

    invoke-virtual {v8, v10, v11, v6, v7}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v5

    const/4 v4, 0x0

    if-eqz v5, :cond_52

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_52

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_4a
    new-instance v9, Lcom/android/server/pm/PackageDexOptimizerManager$1;

    invoke-direct {v9}, Lcom/android/server/pm/PackageDexOptimizerManager$1;-><init>()V

    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_52
    return-object v4
.end method

.method public static isAlwaysSpeedDexOpt(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method private static isSystemPackage(Landroid/content/pm/PackageParser$Package;)Z
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


# virtual methods
.method public ensurePackageDexOpt(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageDexOptimizerManager;->ensurePackageDexOpt(Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)Z

    move-result v0

    return v0
.end method

.method public ensurePackageDexOpt(Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)Z
    .registers 9

    const/4 v5, 0x1

    const-string/jumbo v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getOptimizablePackages()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const/4 v3, 0x0

    return v3

    :cond_16
    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v4

    :try_start_19
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_3a

    move-result v3

    if-eqz v3, :cond_23

    monitor-exit v4

    return v5

    :cond_23
    :try_start_23
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_3a

    monitor-exit v4

    new-instance v0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;-><init>(Lcom/android/server/pm/PackageDexOptimizerManager;Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)V

    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return v5

    :catchall_3a
    move-exception v3

    monitor-exit v4

    throw v3
.end method
