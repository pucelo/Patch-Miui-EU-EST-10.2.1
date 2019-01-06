.class public Lcom/android/server/backup/internal/PerformInitializeTask;
.super Ljava/lang/Object;
.source "PerformInitializeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field mObserver:Landroid/app/backup/IBackupObserver;

.field mQueue:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    return-void
.end method

.method private notifyFinished(I)V
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    iput-object v2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    goto :goto_a
.end method

.method private notifyResult(Ljava/lang/String;I)V
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    iput-object v2, p0, Lcom/android/server/backup/internal/PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    goto :goto_a
.end method


# virtual methods
.method public run()V
    .registers 25

    const/4 v10, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->mQueue:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v16, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1d8

    aget-object v15, v17, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v14

    if-nez v14, :cond_4e

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Requested init for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " but not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4b
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    :cond_4e
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Initializing (wiping) backup transport storage: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0xb05

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v11

    if-nez v11, :cond_85

    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v11

    :cond_85
    if-nez v11, :cond_149

    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Device init successful"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v20, v20, v12

    move-wide/from16 v0, v20

    long-to-int v9, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0xb0b

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v21

    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/backup/RefactoredBackupManagerService;->resetBackupState(Ljava/io/File;)V

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    const/16 v20, 0xb09

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f4} :catch_10f
    .catchall {:try_start_1 .. :try_end_f4} :catchall_135

    :try_start_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_103
    .catchall {:try_start_f4 .. :try_end_103} :catchall_132

    :try_start_103
    monitor-exit v19

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_10d} :catch_10f
    .catchall {:try_start_103 .. :try_end_10d} :catchall_135

    goto/16 :goto_4b

    :catch_10f
    move-exception v8

    :try_start_110
    const-string/jumbo v16, "BackupManagerService"

    const-string/jumbo v17, "Unexpected error performing init"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11d
    .catchall {:try_start_110 .. :try_end_11d} :catchall_135

    const/16 v10, -0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_131
    return-void

    :catchall_132
    move-exception v16

    :try_start_133
    monitor-exit v19

    throw v16
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_135} :catch_10f
    .catchall {:try_start_133 .. :try_end_135} :catchall_135

    :catchall_135
    move-exception v16

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v16

    :cond_149
    :try_start_149
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Transport error in initializeDevice()"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "(initialize)"

    const/16 v20, 0xb06

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v19

    monitor-enter v19
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_169} :catch_10f
    .catchall {:try_start_149 .. :try_end_169} :catchall_135

    :try_start_169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_178
    .catchall {:try_start_169 .. :try_end_178} :catchall_1d5

    :try_start_178
    monitor-exit v19

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V

    move v10, v11

    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v6

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Init failed on "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " resched in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v20, v20, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/backup/RefactoredBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-wide/from16 v2, v20

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_4b

    :catchall_1d5
    move-exception v16

    monitor-exit v19

    throw v16
    :try_end_1d8
    .catch Ljava/lang/Exception; {:try_start_178 .. :try_end_1d8} :catch_10f
    .catchall {:try_start_178 .. :try_end_1d8} :catchall_135

    :cond_1d8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/internal/PerformInitializeTask;->notifyFinished(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/internal/PerformInitializeTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_131
.end method
