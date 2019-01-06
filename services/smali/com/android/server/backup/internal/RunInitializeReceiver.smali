.class public Lcom/android/server/backup/internal/RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunInitializeReceiver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string/jumbo v2, "android.app.backup.intent.INIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_14
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Running a device init"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearPendingInits()V

    new-instance v0, Lcom/android/server/backup/internal/PerformInitializeTask;

    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_48
    .catchall {:try_start_14 .. :try_end_48} :catchall_4a

    monitor-exit v3

    :cond_49
    return-void

    :catchall_4a
    move-exception v2

    monitor-exit v3

    throw v2
.end method
