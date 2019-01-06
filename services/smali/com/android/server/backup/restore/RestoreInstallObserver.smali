.class public Lcom/android/server/backup/restore/RestoreInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "RestoreInstallObserver.java"


# instance fields
.field private final mDone:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDone"
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mResult:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .registers 2

    iget v0, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mResult:I

    return v0
.end method

.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_3
    iput p2, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mResult:I

    iput-object p1, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public waitForCompletion()V
    .registers 4

    iget-object v2, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v1

    if-nez v1, :cond_13

    :try_start_b
    iget-object v1, p0, Lcom/android/server/backup/restore/RestoreInstallObserver;->mDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_11
    .catchall {:try_start_b .. :try_end_10} :catchall_15

    goto :goto_3

    :catch_11
    move-exception v0

    goto :goto_3

    :cond_13
    monitor-exit v2

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method
