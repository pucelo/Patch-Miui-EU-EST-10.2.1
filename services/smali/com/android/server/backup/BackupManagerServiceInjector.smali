.class public Lcom/android/server/backup/BackupManagerServiceInjector;
.super Ljava/lang/Object;
.source "BackupManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Backup:BackupManagerServiceInjector"

.field private static sBinderDeathLinker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addRestoredSize(JI)V
    .registers 7

    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_9
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0, p0, p1}, Lmiui/app/backup/IBackupManager;->addCompletedSize(J)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v1

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "addRestoredSize failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method static doFullBackup(Landroid/app/IBackupAgent;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v5, "MiuiBackup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    invoke-interface {v0, p6}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->shouldSkipData()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1b

    :cond_17
    invoke-interface/range {p0 .. p5}, Landroid/app/IBackupAgent;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;)V

    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v5, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v6, "skip app data"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :try_start_25
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_45
    .catchall {:try_start_25 .. :try_end_2e} :catchall_5a

    const/4 v5, 0x4

    :try_start_2f
    new-array v1, v5, [B

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_69
    .catchall {:try_start_2f .. :try_end_34} :catchall_66

    if-eqz v4, :cond_39

    :try_start_36
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_40

    :cond_39
    :goto_39
    move-object v3, v4

    :cond_3a
    :goto_3a
    const-wide/16 v6, 0x0

    invoke-interface {p5, p4, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V

    goto :goto_1a

    :catch_40
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    :catch_45
    move-exception v2

    :goto_46
    :try_start_46
    const-string/jumbo v5, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v6, "Unable to finalize backup stream!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5a

    if-eqz v3, :cond_3a

    :try_start_51
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_3a

    :catch_55
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    :catchall_5a
    move-exception v5

    :goto_5b
    if-eqz v3, :cond_60

    :try_start_5d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    :cond_60
    :goto_60
    throw v5

    :catch_61
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_60

    :catchall_66
    move-exception v5

    move-object v3, v4

    goto :goto_5b

    :catch_69
    move-exception v2

    move-object v3, v4

    goto :goto_46
.end method

.method static errorOccur(II)V
    .registers 6

    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_9
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v1

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "errorOccur failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_d
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {p0, p1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/16 v3, 0x400

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_20

    move-result-object v3

    return-object v3

    :catch_20
    move-exception v1

    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "getApplicationInfo failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    return-object v3
.end method

.method static getCachedInstallPath(Ljava/io/File;Ljava/lang/String;J)Ljava/io/File;
    .registers 14

    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v2, v0, v4

    const/4 v6, 0x0

    cmp-long v8, v2, p2

    if-lez v8, :cond_1e

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1d
    return-object v6

    :cond_1e
    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCachedInstallFile()Ljava/io/File;

    move-result-object v6

    goto :goto_1d
.end method

.method static getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_d
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-static {p0, p1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const/16 v3, 0x440

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_20

    move-result-object v3

    return-object v3

    :catch_20
    move-exception v1

    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "getPackageInfo failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2a
    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    return-object v3
.end method

.method static isForceAllowBackup(I)Z
    .registers 5

    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_9
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_11

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    return v2

    :catch_11
    move-exception v1

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "isForceAllowBackup error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    const/4 v2, 0x0

    return v2
.end method

.method static isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z
    .registers 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_a

    invoke-static {p0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_a
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method static isForceAllowSysAppBackup(Landroid/content/pm/PackageInfo;I)Z
    .registers 3

    invoke-static {p0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static isNeedBeKilled(Ljava/lang/String;I)Z
    .registers 7

    const/4 v2, 0x1

    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_a
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isNeedBeKilled(Ljava/lang/String;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_15

    move-result v2

    :cond_14
    :goto_14
    return v2

    :catch_15
    move-exception v1

    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "isNeedBeKilled failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method static linkToDeath(Landroid/app/IBackupAgent;ILandroid/os/ParcelFileDescriptor;)V
    .registers 8

    if-eqz p0, :cond_14

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;-><init>(Landroid/os/IBinder;ILandroid/os/ParcelFileDescriptor;)V

    sget-object v3, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_11
    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    :cond_14
    :goto_14
    return-void

    :catch_15
    move-exception v2

    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "linkToDeath failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method static needUpdateToken(Landroid/app/IBackupAgent;I)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p0, :cond_1c

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    sget-object v2, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->setToken(I)V

    :cond_1c
    return v1
.end method

.method static onApkInstalled(I)V
    .registers 5

    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_9
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->onApkInstalled()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v1

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "onApkInstalled failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method static prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupRestoreTask;II)V
    .registers 19

    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lmiui/app/backup/IBackupManager;

    const/4 v8, 0x1

    :try_start_a
    move/from16 v0, p6

    invoke-interface {v9, v0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v9}, Lmiui/app/backup/IBackupManager;->getBackupTimeoutScale()I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_3d

    move-result v8

    :cond_16
    :goto_16
    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareOperationTimeout backupTimeoutScale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, v8

    mul-long v4, v2, p2

    move-object v2, p0

    move v3, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    return-void

    :catch_3d
    move-exception v10

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "prepareOperationTimeout failed"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method static readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
    .registers 6

    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_9
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v1

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "readMiuiBackupHeader failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method static restoreFileEnd(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Landroid/app/backup/IBackupManager;ILandroid/os/Handler;I)V
    .registers 26

    if-eqz p1, :cond_49

    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    check-cast v18, Lmiui/app/backup/IBackupManager;

    :try_start_b
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v3

    invoke-virtual/range {p4 .. p5}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/32 v4, 0x493e0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/server/backup/BackupManagerServiceInjector;->prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupRestoreTask;II)V

    const-wide/16 v7, 0x0

    sget-object v10, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move/from16 v16, v3

    move-object/from16 v17, p2

    invoke-interface/range {v5 .. v17}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v2

    if-eqz v2, :cond_49

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return-void

    :catch_4a
    move-exception v19

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "restoreFileEnd failed"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method

.method static routeSocketDataToOutput(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v13, "MiuiBackup"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lmiui/app/backup/IBackupManager;

    const/4 v10, 0x0

    const/4 v7, 0x0

    :try_start_b
    move/from16 v0, p3

    invoke-interface {v2, v0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v13

    if-eqz v13, :cond_45

    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1c} :catch_81
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_1c} :catch_65
    .catchall {:try_start_b .. :try_end_1c} :catchall_75

    :try_start_1c
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_9d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1c .. :try_end_21} :catch_a4
    .catchall {:try_start_1c .. :try_end_21} :catchall_96

    const v13, 0x8000

    :try_start_24
    new-array v3, v13, [B

    :cond_26
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-lez v4, :cond_ab

    :goto_2c
    if-lez v4, :cond_26

    array-length v13, v3

    if-le v4, v13, :cond_43

    array-length v12, v3

    :goto_32
    const/4 v13, 0x0

    invoke-virtual {v8, v3, v13, v12}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v14, v9

    invoke-interface {v2, v14, v15}, Lmiui/app/backup/IBackupManager;->addCompletedSize(J)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_41} :catch_a0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_24 .. :try_end_41} :catch_a7
    .catchall {:try_start_24 .. :try_end_41} :catchall_99

    sub-int/2addr v4, v9

    goto :goto_2c

    :cond_43
    move v12, v4

    goto :goto_32

    :cond_45
    :try_start_45
    const-string/jumbo v13, "routeSocketDataToOutput"

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object p2, v15, v16

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14, v15}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_5a} :catch_81
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_45 .. :try_end_5a} :catch_65
    .catchall {:try_start_45 .. :try_end_5a} :catchall_75

    :goto_5a
    if-eqz v10, :cond_5f

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_5f
    if-eqz v7, :cond_64

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_64
    :goto_64
    return-void

    :catch_65
    move-exception v6

    :goto_66
    :try_start_66
    const-string/jumbo v13, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v14, "routeSocketDataToOutput failed"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13}, Ljava/io/IOException;-><init>()V

    throw v13
    :try_end_75
    .catchall {:try_start_66 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v13

    :goto_76
    if-eqz v10, :cond_7b

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_7b
    if-eqz v7, :cond_80

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    :cond_80
    throw v13

    :catch_81
    move-exception v5

    :goto_82
    :try_start_82
    const-string/jumbo v13, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v14, "routeSocketDataToOutput failed"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_75

    if-eqz v10, :cond_90

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    :cond_90
    if-eqz v7, :cond_64

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    goto :goto_64

    :catchall_96
    move-exception v13

    move-object v10, v11

    goto :goto_76

    :catchall_99
    move-exception v13

    move-object v7, v8

    move-object v10, v11

    goto :goto_76

    :catch_9d
    move-exception v5

    move-object v10, v11

    goto :goto_82

    :catch_a0
    move-exception v5

    move-object v7, v8

    move-object v10, v11

    goto :goto_82

    :catch_a4
    move-exception v6

    move-object v10, v11

    goto :goto_66

    :catch_a7
    move-exception v6

    move-object v7, v8

    move-object v10, v11

    goto :goto_66

    :cond_ab
    move-object v7, v8

    move-object v10, v11

    goto :goto_5a
.end method

.method static setOutputFileDescriptor(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    if-eqz p0, :cond_4

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    :cond_4
    return-void
.end method

.method static startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z
    .registers 8

    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_9
    invoke-interface {v0, p3}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/IBackupManager;->startConfirmationUi(ILjava/lang/String;)V

    :goto_12
    const/4 v2, 0x1

    return v2

    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_12

    :catch_18
    move-exception v1

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "confirmation failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return v2
.end method

.method static tearDownAgentAndKill(Landroid/app/IActivityManager;Landroid/content/pm/ApplicationInfo;I)Z
    .registers 8

    const/4 v2, 0x0

    const-string/jumbo v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_a
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/android/server/backup/BackupManagerServiceInjector;->isNeedBeKilled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v2, 0x1

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return v2

    :catch_1d
    move-exception v1

    const-string/jumbo v3, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v4, "isNeedBeKilled failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method static unlinkToDeath(Landroid/app/IBackupAgent;)V
    .registers 4

    if-eqz p0, :cond_17

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    sget-object v1, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method static writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
    .registers 6

    const-string/jumbo v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    :try_start_9
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v1

    const-string/jumbo v2, "Backup:BackupManagerServiceInjector"

    const-string/jumbo v3, "writeMiuiBackupHeader failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method
