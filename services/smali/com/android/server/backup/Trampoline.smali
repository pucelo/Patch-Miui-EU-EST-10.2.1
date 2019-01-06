.class public Lcom/android/server/backup/Trampoline;
.super Landroid/app/backup/IBackupManager$Stub;
.source "Trampoline.java"


# static fields
.field static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field static final DEBUG_TRAMPOLINE:Z = false

.field static final TAG:Ljava/lang/String; = "BackupManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mGlobalDisable:Z

.field volatile mService:Lcom/android/server/backup/BackupManagerServiceInterface;

.field final mSuppressFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->isBackupDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->getSuppressFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_c

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerServiceInterface;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    :cond_c
    return-void
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_17

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/android/server/backup/BackupManagerServiceInterface;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    :cond_7
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_7
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->agentDisconnected(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public backupNow()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->backupNow()V

    :cond_7
    return-void
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method protected binderGetCallingUid()I
    .registers 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public cancelBackups()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->cancelBackups()V

    :cond_7
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;
    .registers 3

    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    return-object v0
.end method

.method protected createRefactoredBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;
    .registers 3

    new-instance v0, Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/backup/RefactoredBackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    return-object v0
.end method

.method protected createService()Lcom/android/server/backup/BackupManagerServiceInterface;
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->isRefactoredServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Instantiating RefactoredBackupManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createRefactoredBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    return-object v0

    :cond_14
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Instantiating BackupManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    return-object v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->dataChanged(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "BackupManagerService"

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_14

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerServiceInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    const-string/jumbo v1, "Inactive"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13
.end method

.method endFullBackup()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->endFullBackup()V

    :cond_7
    return-void
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->fullTransportBackup([Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 6

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v2

    :goto_8
    return-wide v2

    :cond_9
    const-wide/16 v2, 0x0

    goto :goto_8
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method protected getSuppressFile()Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v2, "backup-suppress"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public hasBackupPassword()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->hasBackupPassword()Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public initialize(I)V
    .registers 5

    if-nez p1, :cond_20

    iget-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Backup/restore not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_3c

    :goto_1f
    monitor-exit p0

    :cond_20
    return-void

    :cond_21
    :try_start_21
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Backup inactive in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_3c

    goto :goto_1f

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    :cond_7
    return-void
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method protected isBackupDisabled()Z
    .registers 3

    const-string/jumbo v0, "ro.backup.disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackupEnabled()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->isBackupEnabled()Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public isBackupServiceActive(I)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_e

    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    return v0
.end method

.method protected isRefactoredServiceEnabled()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "backup_refactored_service_disabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public opComplete(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerServiceInterface;->opComplete(IJ)V

    :cond_7
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-nez v0, :cond_7

    const/16 v1, -0x7d1

    return v1

    :cond_7
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerServiceInterface;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v1

    return v1
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->restoreAtInstall(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    return-object v1
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v1, :cond_8

    invoke-interface {v1, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    if-eqz p2, :cond_7

    const/16 v2, -0x7d1

    :try_start_c
    invoke-interface {p2, v2}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_7

    :catch_10
    move-exception v0

    goto :goto_7
.end method

.method public setAutoRestore(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setAutoRestore(Z)V

    :cond_7
    return-void
.end method

.method public setBackupEnabled(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public setBackupProvisioned(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupProvisioned(Z)V

    :cond_7
    return-void
.end method

.method public setBackupServiceActive(IZ)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_13

    if-eqz v0, :cond_13

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "No permission to configure backup activity"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    iget-boolean v2, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v2, :cond_21

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup/restore not supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_21
    if-nez p1, :cond_62

    monitor-enter p0

    :try_start_24
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->isBackupServiceActive(I)Z

    move-result v2

    if-eq p2, v2, :cond_61

    const-string/jumbo v3, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Making backup "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_63

    const-string/jumbo v2, ""

    :goto_3e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "active in user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_67

    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_61
    .catchall {:try_start_24 .. :try_end_61} :catchall_7b

    :cond_61
    :goto_61
    monitor-exit p0

    :cond_62
    return-void

    :cond_63
    :try_start_63
    const-string/jumbo v2, "in"

    goto :goto_3e

    :cond_67
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_7b

    :try_start_6a
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6f} :catch_70
    .catchall {:try_start_6a .. :try_end_6f} :catchall_7b

    goto :goto_61

    :catch_70
    move-exception v1

    :try_start_71
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Unable to persist backup service inactivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7b

    goto :goto_61

    :catchall_7b
    move-exception v2

    monitor-exit p0

    throw v2
.end method