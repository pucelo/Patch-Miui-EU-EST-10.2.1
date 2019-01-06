.class public Lcom/android/server/backup/internal/ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ClearDataObserver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->setClearingData(Z)V

    iget-object v0, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method
