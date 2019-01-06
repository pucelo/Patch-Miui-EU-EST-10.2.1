.class public Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "BackupHandler.java"


# static fields
.field public static final MSG_BACKUP_OPERATION_TIMEOUT:I = 0x11

.field public static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field public static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field public static final MSG_OP_COMPLETE:I = 0x15

.field public static final MSG_REQUEST_BACKUP:I = 0xf

.field public static final MSG_RESTORE_OPERATION_TIMEOUT:I = 0x12

.field public static final MSG_RESTORE_SESSION_TIMEOUT:I = 0x8

.field public static final MSG_RETRY_CLEAR:I = 0xc

.field public static final MSG_RETRY_INIT:I = 0xb

.field public static final MSG_RUN_ADB_BACKUP:I = 0x2

.field public static final MSG_RUN_ADB_RESTORE:I = 0xa

.field public static final MSG_RUN_BACKUP:I = 0x1

.field public static final MSG_RUN_CLEAR:I = 0x4

.field public static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field public static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field public static final MSG_RUN_RESTORE:I = 0x3

.field public static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field public static final MSG_WIDGET_BROADCAST:I = 0xd


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 51

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_644

    :cond_7
    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lcom/android/server/backup/RefactoredBackupManagerService;->setLastBackupPass(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    if-nez v4, :cond_4b

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Backup requested but no transport available"

    invoke-static {v3, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->setBackupRunning(Z)V
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_48

    monitor-exit v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_7

    :catchall_48
    move-exception v3

    monitor-exit v11

    throw v3

    :cond_4b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getJournal()Lcom/android/server/backup/DataChangedJournal;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_b0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_7f
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/backup/internal/BackupRequest;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_90
    .catchall {:try_start_61 .. :try_end_90} :catchall_91

    goto :goto_7f

    :catchall_91
    move-exception v3

    monitor-exit v11

    throw v3

    :cond_94
    :try_start_94
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "clearing pending backups"

    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    :try_end_b0
    .catchall {:try_start_94 .. :try_end_b0} :catchall_91

    :cond_b0
    monitor-exit v11

    const/16 v45, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_10d

    :try_start_b9
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/android/server/backup/internal/PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/internal/PerformBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Ljava/util/List;ZZ)V

    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_dd} :catch_fe

    :goto_dd
    if-nez v45, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    :try_start_e8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->setBackupRunning(Z)V
    :try_end_f0
    .catchall {:try_start_e8 .. :try_end_f0} :catchall_119

    monitor-exit v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catch_fe
    move-exception v28

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Transport became unavailable attempting backup or error initializing backup task"

    move-object/from16 v0, v28

    invoke-static {v3, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v45, 0x0

    goto :goto_dd

    :cond_10d
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Backup requested but nothing pending"

    invoke-static {v3, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v45, 0x0

    goto :goto_dd

    :catchall_119
    move-exception v3

    monitor-exit v11

    throw v3

    :pswitch_11c
    :try_start_11c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface/range {v46 .. v46}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_127
    .catch Ljava/lang/ClassCastException; {:try_start_11c .. :try_end_127} :catch_129

    goto/16 :goto_7

    :catch_129
    move-exception v27

    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid backup task in flight, obj="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_14a
    :try_start_14a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/util/Pair;

    move-object/from16 v0, v48

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/backup/BackupRestoreTask;

    move-object/from16 v0, v48

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-interface {v3, v12, v13}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_165
    .catch Ljava/lang/ClassCastException; {:try_start_14a .. :try_end_165} :catch_167

    goto/16 :goto_7

    :catch_167
    move-exception v27

    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid completion in flight, obj="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_188
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/server/backup/params/AdbBackupParams;

    new-instance v8, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v32

    iget-boolean v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    move-object/from16 v0, v32

    iget-boolean v13, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    move-object/from16 v0, v32

    iget-boolean v14, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    move-object/from16 v0, v32

    iget-boolean v15, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->curPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    move/from16 v18, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    move/from16 v19, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    move/from16 v20, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    move/from16 v21, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v23, v0

    invoke-direct/range {v8 .. v23}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v11, "adb-backup"

    invoke-direct {v3, v8, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    :pswitch_1ee
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v11, "transport-backup"

    move-object/from16 v0, v47

    invoke-direct {v3, v0, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    :pswitch_205
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/server/backup/params/RestoreParams;

    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "MSG_RUN_RESTORE observer="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v39

    iget-object v12, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v39

    iget-object v11, v0, Lcom/android/server/backup/params/RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v39

    iget-object v12, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v39

    iget-object v13, v0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v0, v39

    iget-wide v14, v0, Lcom/android/server/backup/params/RestoreParams;->token:J

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/backup/params/RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    move/from16 v17, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    move/from16 v18, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v9 .. v19}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v11

    monitor-enter v11

    :try_start_265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->isRestoreInProgress()Z

    move-result v3

    if-eqz v3, :cond_286

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Restore in progress, queueing."

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_283
    .catchall {:try_start_265 .. :try_end_283} :catchall_2a7

    :goto_283
    monitor-exit v11

    goto/16 :goto_7

    :cond_286
    :try_start_286
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Starting restore."

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->setRestoreInProgress(Z)V

    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2a6
    .catchall {:try_start_286 .. :try_end_2a6} :catchall_2a7

    goto :goto_283

    :catchall_2a7
    move-exception v3

    monitor-exit v11

    throw v3

    :pswitch_2aa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/backup/params/AdbRestoreParams;

    new-instance v10, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v34

    iget-object v12, v0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v34

    iget-object v13, v0, Lcom/android/server/backup/params/AdbRestoreParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v14, v0, Lcom/android/server/backup/params/AdbRestoreParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v15, v0, Lcom/android/server/backup/params/AdbRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/server/backup/params/AdbRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v11, "adb-restore"

    invoke-direct {v3, v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    :pswitch_2de
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/backup/params/ClearParams;

    new-instance v3, Lcom/android/server/backup/internal/PerformClearTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v36

    iget-object v12, v0, Lcom/android/server/backup/params/ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v36

    iget-object v13, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v3, v11, v12, v13}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v3}, Lcom/android/server/backup/internal/PerformClearTask;->run()V

    goto/16 :goto_7

    :pswitch_2fc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/backup/params/ClearRetryParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v37

    iget-object v11, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v12, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_31e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_350

    const/4 v3, 0x1

    move v11, v3

    :goto_32a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v11, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v11

    const/4 v13, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v3, v13, v0, v1, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_34d
    .catchall {:try_start_31e .. :try_end_34d} :catchall_353

    monitor-exit v12

    goto/16 :goto_7

    :cond_350
    const/4 v3, 0x0

    move v11, v3

    goto :goto_32a

    :catchall_353
    move-exception v3

    monitor-exit v12

    throw v3

    :pswitch_356
    const/16 v44, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/backup/params/RestoreGetSetsParams;

    :try_start_360
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v44

    move-object/from16 v0, v38

    iget-object v11, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v11
    :try_end_36d
    .catch Ljava/lang/Exception; {:try_start_360 .. :try_end_36d} :catch_3b0
    .catchall {:try_start_360 .. :try_end_36d} :catchall_454

    :try_start_36d
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-object/from16 v0, v44

    iput-object v0, v3, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;
    :try_end_375
    .catchall {:try_start_36d .. :try_end_375} :catchall_3ad

    :try_start_375
    monitor-exit v11

    if-nez v44, :cond_380

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v11, 0xb0f

    invoke-static {v11, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_380
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_380} :catch_3b0
    .catchall {:try_start_375 .. :try_end_380} :catchall_454

    :cond_380
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_38f

    :try_start_386
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_38f
    .catch Landroid/os/RemoteException; {:try_start_386 .. :try_end_38f} :catch_41d
    .catch Ljava/lang/Exception; {:try_start_386 .. :try_end_38f} :catch_3fc

    :cond_38f
    :goto_38f
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    const/16 v3, 0x8

    const-wide/32 v12, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catchall_3ad
    move-exception v3

    :try_start_3ae
    monitor-exit v11

    throw v3
    :try_end_3b0
    .catch Ljava/lang/Exception; {:try_start_3ae .. :try_end_3b0} :catch_3b0
    .catchall {:try_start_3ae .. :try_end_3b0} :catchall_454

    :catch_3b0
    move-exception v28

    :try_start_3b1
    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error from transport getting set list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3cf
    .catchall {:try_start_3b1 .. :try_end_3cf} :catchall_454

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_3de

    :try_start_3d5
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_3de
    .catch Landroid/os/RemoteException; {:try_start_3d5 .. :try_end_3de} :catch_449
    .catch Ljava/lang/Exception; {:try_start_3d5 .. :try_end_3de} :catch_429

    :cond_3de
    :goto_3de
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    const/16 v3, 0x8

    const-wide/32 v12, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v13}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catch_3fc
    move-exception v28

    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Restore observer threw: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38f

    :catch_41d
    move-exception v42

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Unable to report listing to observer"

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38f

    :catch_429
    move-exception v28

    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Restore observer threw: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3de

    :catch_449
    move-exception v42

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v11, "Unable to report listing to observer"

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3de

    :catchall_454
    move-exception v3

    move-object/from16 v0, v38

    iget-object v11, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v11, :cond_464

    :try_start_45b
    move-object/from16 v0, v38

    iget-object v11, v0, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v44

    invoke-interface {v11, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_464
    .catch Landroid/os/RemoteException; {:try_start_45b .. :try_end_464} :catch_4a1
    .catch Ljava/lang/Exception; {:try_start_45b .. :try_end_464} :catch_481

    :cond_464
    :goto_464
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    const/16 v11, 0x8

    const-wide/32 v12, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    :catch_481
    move-exception v28

    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Restore observer threw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_464

    :catch_4a1
    move-exception v42

    const-string/jumbo v11, "BackupManagerService"

    const-string/jumbo v12, "Unable to report listing to observer"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_464

    :pswitch_4ac
    const-string/jumbo v3, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Timeout message received for token="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->handleCancel(IZ)V

    goto/16 :goto_7

    :pswitch_4dc
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    monitor-enter v11

    :try_start_4e1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v3

    if-eqz v3, :cond_520

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Restore session timed out; aborting"

    invoke-static {v3, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/restore/ActiveRestoreSession;->markTimedOut()V

    new-instance v3, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v12}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v14}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v14

    invoke-direct {v3, v12, v13, v14}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_520
    .catchall {:try_start_4e1 .. :try_end_520} :catchall_523

    :cond_520
    monitor-exit v11

    goto/16 :goto_7

    :catchall_523
    move-exception v3

    monitor-exit v11

    throw v3

    :pswitch_526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v11

    monitor-enter v11

    :try_start_52f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v3

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/backup/params/AdbParams;

    if-eqz v33, :cond_574

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v12, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v3, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v3

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->delete(I)V

    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_568
    .catchall {:try_start_52f .. :try_end_568} :catchall_593

    if-eqz v3, :cond_571

    :try_start_56a
    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_571
    .catch Landroid/os/RemoteException; {:try_start_56a .. :try_end_571} :catch_640
    .catchall {:try_start_56a .. :try_end_571} :catchall_593

    :cond_571
    :goto_571
    monitor-exit v11

    goto/16 :goto_7

    :cond_574
    :try_start_574
    const-string/jumbo v3, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "couldn\'t find params for token "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_592
    .catchall {:try_start_574 .. :try_end_592} :catchall_593

    goto :goto_571

    :catchall_593
    move-exception v3

    monitor-exit v11

    throw v3

    :pswitch_596
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v11, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_7

    :pswitch_5af
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/server/backup/params/BackupParams;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v35

    iget-object v3, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_5c4
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5db

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    new-instance v3, Lcom/android/server/backup/internal/BackupRequest;

    move-object/from16 v0, v30

    invoke-direct {v3, v0}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5c4

    :cond_5db
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->setBackupRunning(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v2, Lcom/android/server/backup/internal/PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v35

    iget-object v13, v0, Lcom/android/server/backup/params/BackupParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v35

    iget-object v14, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v18, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    move/from16 v21, v0

    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object v11, v2

    invoke-direct/range {v11 .. v21}, Lcom/android/server/backup/internal/PerformBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Ljava/util/List;ZZ)V

    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :pswitch_62d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v41

    invoke-virtual {v3, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_640
    move-exception v26

    goto/16 :goto_571

    nop

    :pswitch_data_644
    .packed-switch 0x1
        :pswitch_8
        :pswitch_188
        :pswitch_205
        :pswitch_2de
        :pswitch_7
        :pswitch_356
        :pswitch_7
        :pswitch_4dc
        :pswitch_526
        :pswitch_2aa
        :pswitch_315
        :pswitch_2fc
        :pswitch_596
        :pswitch_1ee
        :pswitch_5af
        :pswitch_62d
        :pswitch_4ac
        :pswitch_4ac
        :pswitch_7
        :pswitch_11c
        :pswitch_14a
    .end packed-switch
.end method
