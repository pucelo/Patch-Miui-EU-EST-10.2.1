.class Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformInitializeTask"
.end annotation


# instance fields
.field mObserver:Landroid/app/backup/IBackupObserver;

.field mQueue:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    return-void
.end method

.method private notifyFinished(I)V
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    goto :goto_a
.end method

.method private notifyResult(Ljava/lang/String;I)V
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-interface {v1, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_b

    :cond_a
    :goto_a
    return-void

    :catch_b
    move-exception v0

    iput-object v2, p0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mObserver:Landroid/app/backup/IBackupObserver;

    goto :goto_a
.end method


# virtual methods
.method public run()V
    .registers 25

    const/4 v10, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->mQueue:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v16, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1e4

    aget-object v15, v17, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get6(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

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
    if-nez v11, :cond_151

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

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-interface {v14}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

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

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f8} :catch_113
    .catchall {:try_start_1 .. :try_end_f8} :catchall_13b

    :try_start_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_107
    .catchall {:try_start_f8 .. :try_end_107} :catchall_138

    :try_start_107
    monitor-exit v19

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v15, v1}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_111} :catch_113
    .catchall {:try_start_107 .. :try_end_111} :catchall_13b

    goto/16 :goto_4b

    :catch_113
    move-exception v8

    :try_start_114
    const-string/jumbo v16, "BackupManagerService"

    const-string/jumbo v17, "Unexpected error performing init"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_121
    .catchall {:try_start_114 .. :try_end_121} :catchall_13b

    const/16 v10, -0x3e8

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->notifyFinished(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_137
    return-void

    :catchall_138
    move-exception v16

    :try_start_139
    monitor-exit v19

    throw v16
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13b} :catch_113
    .catchall {:try_start_139 .. :try_end_13b} :catchall_13b

    :catchall_13b
    move-exception v16

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->notifyFinished(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v16

    :cond_151
    :try_start_151
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Transport error in initializeDevice()"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v19, "(initialize)"

    const/16 v20, 0xb06

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_173} :catch_113
    .catchall {:try_start_151 .. :try_end_173} :catchall_13b

    :try_start_173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V
    :try_end_182
    .catchall {:try_start_173 .. :try_end_182} :catchall_1e1

    :try_start_182
    monitor-exit v19

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v11}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->notifyResult(Ljava/lang/String;I)V

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

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    add-long v20, v20, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-wide/from16 v2, v20

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_4b

    :catchall_1e1
    move-exception v16

    monitor-exit v19

    throw v16
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1e4} :catch_113
    .catchall {:try_start_182 .. :try_end_1e4} :catchall_13b

    :cond_1e4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->notifyFinished(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_137
.end method
