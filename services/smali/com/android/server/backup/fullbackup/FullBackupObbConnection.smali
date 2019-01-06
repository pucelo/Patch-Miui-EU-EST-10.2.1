.class public Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
.super Ljava/lang/Object;
.source "FullBackupObbConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field volatile mService:Lcom/android/internal/backup/IObbBackupService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    return-void
.end method

.method private waitForConnection()V
    .registers 3

    monitor-enter p0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v1, :cond_b

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_1

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .registers 13

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    const/4 v8, 0x0

    :try_start_5
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v1

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v8, v3

    iget-object v4, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-static {v0, p2}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_5c
    .catchall {:try_start_5 .. :try_end_34} :catchall_9e

    move-result v9

    :try_start_35
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v8, :cond_50

    const/4 v0, 0x0

    aget-object v0, v8, v0

    if-eqz v0, :cond_45

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_45
    const/4 v0, 0x1

    aget-object v0, v8, v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_50} :catch_51

    :cond_50
    :goto_50
    return v9

    :catch_51
    move-exception v6

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "I/O error closing down OBB backup"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :catch_5c
    move-exception v7

    :try_start_5d
    const-string/jumbo v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to back up OBBs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_9e

    :try_start_77
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v8, :cond_50

    const/4 v0, 0x0

    aget-object v0, v8, v0

    if-eqz v0, :cond_87

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_87
    const/4 v0, 0x1

    aget-object v0, v8, v0

    if-eqz v0, :cond_50

    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_92} :catch_93

    goto :goto_50

    :catch_93
    move-exception v6

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "I/O error closing down OBB backup"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    :catchall_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    if-eqz v8, :cond_ba

    const/4 v2, 0x0

    aget-object v2, v8, v2

    if-eqz v2, :cond_af

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_af
    const/4 v2, 0x1

    aget-object v2, v8, v2

    if-eqz v2, :cond_ba

    const/4 v2, 0x1

    aget-object v2, v8, v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_ba} :catch_bb

    :cond_ba
    :goto_ba
    throw v0

    :catch_bb
    move-exception v6

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "I/O error closing down OBB backup"

    invoke-static {v2, v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ba
.end method

.method public establish()V
    .registers 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.sharedstoragebackup"

    const-string/jumbo v4, "com.android.sharedstoragebackup.ObbBackupService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 30

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {v3 .. v15}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v2

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to restore OBBs for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public tearDown()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
