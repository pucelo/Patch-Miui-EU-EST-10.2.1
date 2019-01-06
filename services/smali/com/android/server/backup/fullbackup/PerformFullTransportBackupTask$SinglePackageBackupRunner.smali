.class Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;
.super Ljava/lang/Object;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SinglePackageBackupRunner"
.end annotation


# instance fields
.field final mBackupLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mBackupResult:I

.field private final mCurrentOpToken:I

.field private mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

.field private final mEphemeralToken:I

.field private volatile mIsCancelled:Z

.field final mOutput:Landroid/os/ParcelFileDescriptor;

.field final mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

.field final mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mPreflightResult:I

.field private final mQuota:J

.field final mTarget:Landroid/content/pm/PackageInfo;

.field final synthetic this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;JI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iput p7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    invoke-static {p1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEphemeralToken:I

    new-instance v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    iget v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEphemeralToken:I

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Lcom/android/internal/backup/IBackupTransport;JI)V

    iput-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    const/16 v0, -0x3eb

    iput v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    const/16 v0, -0x3eb

    iput v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I

    iput-wide p5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mQuota:J

    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->registerTask()V

    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    return-void
.end method

.method getBackupResultBlocking()I
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    if-eqz v1, :cond_11

    const/16 v1, -0x7d3

    return v1

    :cond_11
    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_13} :catch_14

    return v1

    :catch_14
    move-exception v0

    const/16 v1, -0x3eb

    return v1
.end method

.method getPreflightResultBlocking()J
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v4, v5, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    if-eqz v1, :cond_11

    const-wide/16 v2, -0x7d3

    return-wide v2

    :cond_11
    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;->getExpectedSizeOrErrorCode()J

    move-result-wide v2

    return-wide v2

    :cond_1c
    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1e} :catch_20

    int-to-long v2, v1

    return-wide v2

    :catch_20
    move-exception v0

    const-wide/16 v2, -0x3eb

    return-wide v2
.end method

.method public handleCancel(Z)V
    .registers 8

    const-string/jumbo v0, "PFTBT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Full backup cancel of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v1, v1, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    iget-object v2, v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v3, v2, v4, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEphemeralToken:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->handleCancel(IZ)V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    return-void
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method registerTask()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_23

    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 13

    const/4 v6, 0x0

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v1, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflight:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;

    iget-object v5, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-wide v8, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mQuota:J

    iget v10, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    move-object v7, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JI)V

    iput-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    :try_start_22
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    if-nez v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->preflightCheck()I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_51

    :cond_2e
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightResult:I

    if-nez v1, :cond_43

    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mIsCancelled:Z

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupResult:I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_43} :catch_58
    .catchall {:try_start_2e .. :try_end_43} :catchall_9b

    :cond_43
    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->unregisterTask()V

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :try_start_4b
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_50} :catch_90

    :goto_50
    return-void

    :catchall_51
    move-exception v1

    :try_start_52
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mPreflightLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_9b

    :catch_58
    move-exception v11

    :try_start_59
    const-string/jumbo v1, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception during full package backup of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mTarget:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_59 .. :try_end_77} :catchall_9b

    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->unregisterTask()V

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :try_start_7f
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_84} :catch_85

    goto :goto_50

    :catch_85
    move-exception v0

    const-string/jumbo v1, "PFTBT"

    const-string/jumbo v2, "Error closing transport pipe in runner"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :catch_90
    move-exception v0

    const-string/jumbo v1, "PFTBT"

    const-string/jumbo v2, "Error closing transport pipe in runner"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    :catchall_9b
    move-exception v1

    invoke-virtual {p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->unregisterTask()V

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mBackupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :try_start_a4
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mOutput:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a9} :catch_aa

    :goto_a9
    throw v1

    :catch_aa
    move-exception v0

    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v4, "Error closing transport pipe in runner"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9
.end method

.method public sendQuotaExceeded(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->sendQuotaExceeded(JJ)V

    return-void
.end method

.method unregisterTask()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->this$0:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-static {v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->-get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->mCurrentOpToken:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
