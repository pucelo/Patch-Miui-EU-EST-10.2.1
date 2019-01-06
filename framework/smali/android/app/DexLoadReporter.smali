.class Landroid/app/DexLoadReporter;
.super Ljava/lang/Object;
.source "DexLoadReporter.java"

# interfaces
.implements Ldalvik/system/BaseDexClassLoader$Reporter;


# static fields
.field private static final DEBUG:Z = false

.field private static final INSTANCE:Landroid/app/DexLoadReporter;

.field private static final TAG:Ljava/lang/String; = "DexLoadReporter"


# instance fields
.field private final mDataDirs:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDataDirs"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/DexLoadReporter;

    invoke-direct {v0}, Landroid/app/DexLoadReporter;-><init>()V

    sput-object v0, Landroid/app/DexLoadReporter;->INSTANCE:Landroid/app/DexLoadReporter;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    return-void
.end method

.method static getInstance()Landroid/app/DexLoadReporter;
    .registers 1

    sget-object v0, Landroid/app/DexLoadReporter;->INSTANCE:Landroid/app/DexLoadReporter;

    return-object v0
.end method

.method private isSecondaryDexFile(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    const/4 v2, 0x0

    array-length v3, p2

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_12

    aget-object v0, p2, v1

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v2
.end method

.method private notifyPackageManager(Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/BaseDexClassLoader;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/BaseDexClassLoader;

    invoke-virtual {v0}, Ldalvik/system/BaseDexClassLoader;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    :try_start_29
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v2, p2, v6}, Landroid/content/pm/IPackageManager;->notifyDexLoad(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_38} :catch_39

    :goto_38
    return-void

    :catch_39
    move-exception v4

    const-string/jumbo v5, "DexLoadReporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to notify PM about dex load for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38
.end method

.method private registerSecondaryDexForProfiling(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12

    invoke-direct {p0, p1, p2}, Landroid/app/DexLoadReporter;->isSecondaryDexFile(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    return-void

    :cond_7
    :try_start_7
    new-instance v3, Ljava/io/File;

    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v6, p1}, Llibcore/io/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_12} :catch_62

    new-instance v5, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "oat"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".cur.prof"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8d

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_8d

    const-string/jumbo v6, "DexLoadReporter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not create the profile directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_62
    move-exception v1

    const-string/jumbo v6, "DexLoadReporter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to get the real path of secondary dex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8d
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_9f

    move-result v0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :catch_9f
    move-exception v2

    const-string/jumbo v6, "DexLoadReporter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to create profile for secondary dex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerSecondaryDexForProfiling([Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    const-string/jumbo v3, "dalvik.vm.dexopt.secondary"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    :cond_b
    iget-object v3, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    monitor-enter v3

    :try_start_e
    iget-object v4, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_25

    monitor-exit v3

    array-length v3, p1

    :goto_1b
    if-ge v2, v3, :cond_28

    aget-object v1, p1, v2

    invoke-direct {p0, v1, v0}, Landroid/app/DexLoadReporter;->registerSecondaryDexForProfiling(Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_28
    return-void
.end method


# virtual methods
.method registerAppDataDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_b

    iget-object v1, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Landroid/app/DexLoadReporter;->mDataDirs:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit v1

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public report(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/BaseDexClassLoader;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_15

    const-string/jumbo v1, "DexLoadReporter"

    const-string/jumbo v2, "Bad call to DexLoadReporter: argument size mismatch"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo v1, "DexLoadReporter"

    const-string/jumbo v2, "Bad call to DexLoadReporter: empty dex paths"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_35

    return-void

    :cond_35
    invoke-direct {p0, p1, p2}, Landroid/app/DexLoadReporter;->notifyPackageManager(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroid/app/DexLoadReporter;->registerSecondaryDexForProfiling([Ljava/lang/String;)V

    return-void
.end method
