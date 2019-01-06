.class public Lcom/android/server/backup/internal/ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "ProvisionedObserver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->isProvisioned()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    if-nez v1, :cond_40

    :goto_10
    invoke-virtual {v2, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->setProvisioned(Z)V

    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1a
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->isProvisioned()Z

    move-result v2

    if-eqz v2, :cond_3e

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_3e
    .catchall {:try_start_1a .. :try_end_3e} :catchall_42

    :cond_3e
    monitor-exit v3

    return-void

    :cond_40
    const/4 v0, 0x1

    goto :goto_10

    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2
.end method
