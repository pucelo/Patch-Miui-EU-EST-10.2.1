.class public Lcom/android/server/backup/internal/RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunBackupReceiver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const-string/jumbo v2, "android.app.backup.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_14
    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_45

    move-result v2

    if-lez v2, :cond_48

    :try_start_20
    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_38
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_20 .. :try_end_38} :catch_3a
    .catchall {:try_start_20 .. :try_end_38} :catchall_45

    :goto_38
    monitor-exit v3

    :cond_39
    return-void

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Run init intent cancelled"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_45

    goto :goto_38

    :catchall_45
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_48
    :try_start_48
    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->isProvisioned()Z

    move-result v2

    if-eqz v2, :cond_97

    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->isBackupRunning()Z

    move-result v2

    if-nez v2, :cond_8d

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Running a backup pass"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->setBackupRunning(Z)V

    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_38

    :cond_8d
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Backup time but one already running"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_97
    const-string/jumbo v2, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Backup pass but e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " p="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->isProvisioned()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_48 .. :try_end_c8} :catchall_45

    goto/16 :goto_38
.end method
