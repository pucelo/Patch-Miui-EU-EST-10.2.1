.class Lcom/android/server/pm/PackageManagerProxy;
.super Ljava/lang/Object;
.source "PackageManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;,
        Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;
    }
.end annotation


# static fields
.field private static final INSTALL_TIME_OUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/pm/PackageManagerProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cleanUpResource(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)Z
    .registers 13

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_3
    const-string/jumbo v4, "packageFlagsToInstallFlags"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v4, v5, v6}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-class v4, Lcom/android/server/pm/InstructionSets;

    const-string/jumbo v5, "getAppDexInstructionSets"

    const-class v6, [Ljava/lang/String;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v4, v5, v6, v7}, Lmiui/util/ReflectionUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string/jumbo v4, "createInstallArgsForExisting"

    const-class v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x3

    aput-object v1, v6, v7

    invoke-static {p0, v4, v5, v6}, Lmiui/util/ReflectionUtils;->callMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_4d} :catch_50

    if-nez v0, :cond_5a

    return v9

    :catch_50
    move-exception v3

    sget-object v4, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to call method: cleanUpResource"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v9

    :cond_5a
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5d
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->cleanUpResourcesLI()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_62

    monitor-exit v4

    return v10

    :catchall_62
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method static copyOdexFileIfExists(Ljava/io/File;Ljava/io/File;)V
    .registers 15

    const/4 v6, 0x0

    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_5
    if-ge v5, v8, :cond_be

    aget-object v0, v7, v5

    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ".apk"

    const-string/jumbo v12, ".odex"

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_b8

    new-instance v9, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerProxy;->createIfNonexist(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_7c
    invoke-static {v4, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_bc

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v6}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    :goto_87
    sget-object v9, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copy odex file from: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_b8

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_b8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    :cond_bc
    const/4 v3, 0x0

    goto :goto_87

    :cond_be
    return-void
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

.method static deleteApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;Z)Z
    .registers 10

    const/4 v3, 0x2

    if-eqz p2, :cond_4

    const/4 v3, 0x3

    :cond_4
    new-instance v4, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;-><init>(Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;)V

    :try_start_a
    new-instance v5, Landroid/content/pm/VersionedPackage;

    const/4 v6, -0x1

    invoke-direct {v5, p1, v6}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v6, 0x0

    invoke-interface {p0, v5, v4, v6, v3}, Landroid/content/pm/IPackageManager;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    monitor-enter v4
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_15} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_2b

    :goto_15
    :try_start_15
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->finished:Z
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_23

    if-nez v5, :cond_1f

    :try_start_19
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->wait()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d
    .catchall {:try_start_19 .. :try_end_1c} :catchall_23

    goto :goto_15

    :catch_1d
    move-exception v1

    goto :goto_15

    :cond_1f
    :try_start_1f
    monitor-exit v4
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_20} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_20} :catch_2b

    :goto_20
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerProxy$PackageDeleteObserver;->result:Z

    return v5

    :catchall_23
    move-exception v5

    :try_start_24
    monitor-exit v4

    throw v5
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_26} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_26} :catch_2b

    :catch_26
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_20

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_20
.end method

.method static doRenameApk(Ljava/io/File;Ljava/lang/String;I)V
    .registers 9

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-eqz v3, :cond_4f

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "base.apk"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4f

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "INSTALL_FROM_BOOTING: Rename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_44
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/system/ErrnoException; {:try_start_44 .. :try_end_4f} :catch_50

    :cond_4f
    :goto_4f
    return-void

    :catch_50
    move-exception v2

    sget-object v3, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to rename "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f
.end method

.method static installApp(Landroid/content/pm/IPackageManager;Ljava/io/File;)I
    .registers 10

    new-instance v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;-><init>(Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;)V

    const/16 v3, 0x42

    const v3, 0x40000042    # 2.0000157f

    :try_start_b
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "system"

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    monitor-enter v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1b} :catch_53

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-boolean v0, v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_50

    if-nez v0, :cond_4c

    const-wide/32 v0, 0x493e0

    :try_start_22
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->wait(J)V

    iget-boolean v0, v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->finished:Z

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/server/pm/PackageManagerProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Install "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " timeout"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_49} :catch_4a
    .catchall {:try_start_22 .. :try_end_49} :catchall_50

    goto :goto_1b

    :catch_4a
    move-exception v7

    goto :goto_1b

    :cond_4c
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4d} :catch_53

    :goto_4d
    iget v0, v2, Lcom/android/server/pm/PackageManagerProxy$PackageInstallObserver;->result:I

    return v0

    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v2

    throw v0
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_53} :catch_53

    :catch_53
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4d
.end method

.method static parsePackage(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .registers 6

    const/4 v4, 0x0

    const/4 v1, 0x4

    :try_start_2
    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3}, Landroid/content/pm/PackageParser;-><init>()V

    invoke-virtual {v3, p0, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {v2, v1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_10
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_10} :catch_11

    :cond_10
    return-object v2

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    return-object v4
.end method

.method static parsePackageLite(Ljava/io/File;)Landroid/content/pm/PackageParser$PackageLite;
    .registers 3

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v1}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    :try_end_4
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    return-object v1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method
