.class public Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformFullTransportBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupPreflight;,
        Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PFTBT"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field mBackupObserver:Landroid/app/backup/IBackupObserver;

.field mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

.field private final mBackupRunnerOpToken:I

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private volatile mIsDoingBackup:Z

.field mJob:Lcom/android/server/backup/FullBackupJob;

.field mLatch:Ljava/util/concurrent/CountDownLatch;

.field mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTransport:Lcom/android/internal/backup/IBackupTransport;

.field mUpdateSchedule:Z

.field mUserInitiated:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)Lcom/android/server/backup/RefactoredBackupManagerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V
    .registers 21

    invoke-direct {p0, p2}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-boolean p4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v4

    iput v4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v4

    iput v4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->isBackupOperationInProgress()Z

    move-result v4

    if-eqz v4, :cond_49

    const-string/jumbo v4, "PFTBT"

    const-string/jumbo v5, "Skipping full backup. A backup is already in progress."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    return-void

    :cond_49
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->registerTask()V

    const/4 v4, 0x0

    array-length v5, p3

    :goto_4e
    if-ge v4, v5, :cond_ef

    aget-object v3, p3, v4

    :try_start_52
    invoke-virtual {p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_7e

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v8, 0x9

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v6, v8, v7, v9, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v7, -0x7d1

    invoke-static {v6, v3, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    :goto_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    :cond_7e
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-nez v6, :cond_cb

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v8, 0xa

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v6, v8, v7, v9, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v7, -0x7d1

    invoke-static {v6, v3, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_99} :catch_9a

    goto :goto_7b

    :catch_9a
    move-exception v1

    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requested package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found; ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v8, 0xc

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v6, v8, v7, v9, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_7b

    :cond_cb
    :try_start_cb
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_e9

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v7, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v8, 0xb

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static {v6, v8, v7, v9, v10}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v7, -0x7d1

    invoke-static {v6, v3, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_7b

    :cond_e9
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cb .. :try_end_ee} :catch_9a

    goto :goto_7b

    :cond_ef
    return-void
.end method

.method private registerTask()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    const-string/jumbo v0, "PFTBT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "backupmanager pftbt token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_3b

    monitor-exit v1

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_1b

    aget-object v2, p1, v3

    if-eqz v2, :cond_10

    aget-object v1, p1, v3

    aput-object v4, p1, v3

    :try_start_d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_1c

    :cond_10
    :goto_10
    aget-object v2, p1, v5

    if-eqz v2, :cond_1b

    aget-object v1, p1, v5

    aput-object v4, p1, v5

    :try_start_18
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_27

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catch_27
    move-exception v0

    const-string/jumbo v2, "PFTBT"

    const-string/jumbo v3, "Unable to close pipe!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public execute()V
    .registers 1

    return-void
.end method

.method public handleCancel(Z)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p1, :cond_e

    :try_start_5
    const-string/jumbo v1, "PFTBT"

    const-string/jumbo v3, "Expected cancelAll to be true."

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "PFTBT"

    const-string/jumbo v3, "Ignoring duplicate cancel call."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_4e

    monitor-exit v2

    return-void

    :cond_1d
    const/4 v1, 0x1

    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    iget-boolean v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget v3, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    invoke-virtual {v1, v3, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->handleCancel(IZ)V
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_4e

    :try_start_2b
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_32
    .catchall {:try_start_2b .. :try_end_30} :catchall_4e

    :cond_30
    :goto_30
    monitor-exit v2

    return-void

    :catch_32
    move-exception v0

    :try_start_33
    const-string/jumbo v1, "PFTBT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error calling cancelFullBackup() on transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_4e

    goto :goto_30

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public operationComplete(J)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 37

    const/16 v21, 0x0

    const/16 v34, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->isProvisioned()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_10b

    :cond_1e
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "full backup requested but enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " provisioned="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->isProvisioned()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->isProvisioned()Z

    move-result v5

    if-eqz v5, :cond_104

    const/16 v26, 0xd

    :goto_66
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x0

    move/from16 v0, v26

    invoke-static {v5, v0, v6, v7, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_7c} :catch_4a0
    .catchall {:try_start_8 .. :try_end_7c} :catchall_5fe

    const/16 v16, -0x7d1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_86

    const/16 v16, -0x7d3

    :cond_86
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_c9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    :cond_c9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_d2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    :try_end_da
    .catchall {:try_start_d2 .. :try_end_da} :catchall_108

    monitor-exit v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_ef

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_ef
    const-string/jumbo v5, "PFTBT"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :cond_104
    const/16 v26, 0xe

    goto/16 :goto_66

    :catchall_108
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_10b
    :try_start_10b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v5, :cond_1c9

    const-string/jumbo v5, "PFTBT"

    const-string/jumbo v6, "Transport not present; full data backup not performed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, -0x3e8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v7, 0xf

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v5, v7, v6, v9, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_140} :catch_4a0
    .catchall {:try_start_10b .. :try_end_140} :catchall_5fe

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_148

    const/16 v16, -0x7d3

    :cond_148
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_18b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    :cond_18b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    :try_end_19c
    .catchall {:try_start_194 .. :try_end_19c} :catchall_1c6

    monitor-exit v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_1b1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_1b1
    const-string/jumbo v5, "PFTBT"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_1c6
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1c9
    :try_start_1c9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x2000

    new-array v0, v5, [B

    move-object/from16 v18, v0

    const/16 v24, 0x0

    :goto_1d9
    move/from16 v0, v24

    if-ge v0, v4, :cond_23e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mPackages:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Initiating full-data transport backup of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xb18

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUserInitiated:Z

    if-eqz v5, :cond_2c4

    const/16 v23, 0x1

    :goto_22b
    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    move-object/from16 v35, v0

    monitor-enter v35
    :try_end_237
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_237} :catch_4a0
    .catchall {:try_start_1c9 .. :try_end_237} :catchall_5fe

    :try_start_237
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z
    :try_end_23b
    .catchall {:try_start_237 .. :try_end_23b} :catchall_49d

    if-eqz v5, :cond_2c8

    :try_start_23d
    monitor-exit v35
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_23d .. :try_end_23e} :catch_4a0
    .catchall {:try_start_23d .. :try_end_23e} :catchall_5fe

    :cond_23e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_246

    const/16 v16, -0x7d3

    :cond_246
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_289

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    :cond_289
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    :try_end_29a
    .catchall {:try_start_292 .. :try_end_29a} :catchall_827

    monitor-exit v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_2af

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_2af
    const-string/jumbo v5, "PFTBT"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_2c3
    return-void

    :cond_2c4
    const/16 v23, 0x0

    goto/16 :goto_22b

    :cond_2c8
    :try_start_2c8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    const/4 v6, 0x0

    aget-object v6, v34, v6

    move/from16 v0, v23

    invoke-interface {v5, v8, v6, v0}, Lcom/android/internal/backup/IBackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v13

    if-nez v13, :cond_30b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v10

    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v21

    new-instance v5, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/4 v6, 0x1

    aget-object v7, v21, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunnerOpToken:I

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;-><init>(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;Landroid/os/ParcelFileDescriptor;Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/IBackupTransport;JI)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput-object v5, v21, v6

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z
    :try_end_30b
    .catchall {:try_start_2c8 .. :try_end_30b} :catchall_49d

    :cond_30b
    :try_start_30b
    monitor-exit v35

    if-nez v13, :cond_3eb

    const/4 v5, 0x0

    aget-object v5, v34, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v5, v34, v6

    new-instance v5, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    const-string/jumbo v7, "package-backup-bridge"

    invoke-direct {v5, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    new-instance v25, Ljava/io/FileInputStream;

    const/4 v5, 0x0

    aget-object v5, v21, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v28, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    aget-object v5, v34, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getPreflightResultBlocking()J

    move-result-wide v30

    const-wide/16 v6, 0x0

    cmp-long v5, v30, v6

    if-gez v5, :cond_554

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string/jumbo v7, "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

    const/4 v9, 0x0

    move-wide/from16 v0, v30

    invoke-static {v9, v7, v0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    const/16 v9, 0x10

    const/4 v12, 0x3

    invoke-static {v5, v9, v6, v12, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-wide/from16 v0, v30

    long-to-int v13, v0

    :cond_373
    :goto_373
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    invoke-virtual {v5}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->getBackupResultBlocking()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_380
    .catch Ljava/lang/Exception; {:try_start_30b .. :try_end_380} :catch_4a0
    .catchall {:try_start_30b .. :try_end_380} :catchall_5fe

    const/4 v5, 0x0

    :try_start_381
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mIsDoingBackup:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v5, :cond_399

    if-nez v17, :cond_688

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_394
    .catchall {:try_start_381 .. :try_end_394} :catchall_691

    move-result v22

    if-nez v13, :cond_399

    move/from16 v13, v22

    :cond_399
    :goto_399
    :try_start_399
    monitor-exit v6

    if-nez v13, :cond_3a0

    if-eqz v17, :cond_3a0

    move/from16 v13, v17

    :cond_3a0
    if-eqz v13, :cond_3c9

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " backing up "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->requestFullBackupTime()J

    move-result-wide v14

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport suggested backoff="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3eb
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_3fe

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v29

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    :cond_3fe
    const/16 v5, -0x3ea

    if-ne v13, v5, :cond_694

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v6, -0x3ea

    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport rejected backup of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v29, v5, v6

    const-string/jumbo v6, "transport rejected"

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/16 v6, 0xb19

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_441
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_499

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unbinding agent in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unbinding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_48c
    .catch Ljava/lang/Exception; {:try_start_399 .. :try_end_48c} :catch_4a0
    .catchall {:try_start_399 .. :try_end_48c} :catchall_5fe

    :try_start_48c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_499
    .catch Landroid/os/RemoteException; {:try_start_48c .. :try_end_499} :catch_830
    .catch Ljava/lang/Exception; {:try_start_48c .. :try_end_499} :catch_4a0
    .catchall {:try_start_48c .. :try_end_499} :catchall_5fe

    :cond_499
    :goto_499
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1d9

    :catchall_49d
    move-exception v5

    :try_start_49e
    monitor-exit v35

    throw v5
    :try_end_4a0
    .catch Ljava/lang/Exception; {:try_start_49e .. :try_end_4a0} :catch_4a0
    .catchall {:try_start_49e .. :try_end_4a0} :catchall_5fe

    :catch_4a0
    move-exception v20

    const/16 v16, -0x3e8

    :try_start_4a3
    const-string/jumbo v5, "PFTBT"

    const-string/jumbo v6, "Exception trying full transport backup"

    move-object/from16 v0, v20

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string/jumbo v7, "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v12, v7, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const/16 v9, 0x13

    const/4 v12, 0x3

    invoke-static {v5, v9, v6, v12, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_4cd
    .catchall {:try_start_4a3 .. :try_end_4cd} :catchall_5fe

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_4d5

    const/16 v16, -0x7d3

    :cond_4d5
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_518

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    :cond_518
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_521
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    :try_end_529
    .catchall {:try_start_521 .. :try_end_529} :catchall_82a

    monitor-exit v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_53e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_53e
    const-string/jumbo v5, "PFTBT"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2c3

    :cond_554
    const/16 v27, 0x0

    :cond_556
    :try_start_556
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v27

    if-lez v27, :cond_5a3

    const/4 v5, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    move/from16 v2, v27

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_56f
    .catch Ljava/lang/Exception; {:try_start_556 .. :try_end_56f} :catch_4a0
    .catchall {:try_start_556 .. :try_end_56f} :catchall_5fe

    :try_start_56f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-nez v5, :cond_57f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move/from16 v0, v27

    invoke-interface {v5, v0}, Lcom/android/internal/backup/IBackupTransport;->sendBackupData(I)I
    :try_end_57e
    .catchall {:try_start_56f .. :try_end_57e} :catchall_685

    move-result v13

    :cond_57f
    :try_start_57f
    monitor-exit v6

    move/from16 v0, v27

    int-to-long v6, v0

    add-long v32, v32, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    if-eqz v5, :cond_5a3

    const-wide/16 v6, 0x0

    cmp-long v5, v30, v6

    if-lez v5, :cond_5a3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    new-instance v6, Landroid/app/backup/BackupProgress;

    move-wide/from16 v0, v30

    move-wide/from16 v2, v32

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/app/backup/BackupProgress;-><init>(JJ)V

    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    :cond_5a3
    if-lez v27, :cond_5a7

    if-eqz v13, :cond_556

    :cond_5a7
    const/16 v5, -0x3ed

    if-ne v13, v5, :cond_373

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package hit quota limit in-flight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/16 v7, 0x12

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v5, v7, v6, v9, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupRunner:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1, v10, v11}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$SinglePackageBackupRunner;->sendQuotaExceeded(JJ)V
    :try_end_5fc
    .catch Ljava/lang/Exception; {:try_start_57f .. :try_end_5fc} :catch_4a0
    .catchall {:try_start_57f .. :try_end_5fc} :catchall_5fe

    goto/16 :goto_373

    :catchall_5fe
    move-exception v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v6, :cond_607

    const/16 v16, -0x7d3

    :cond_607
    const-string/jumbo v6, "PFTBT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Full backup completed with status: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v6, :cond_64a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v6}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    :cond_64a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_653
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    :try_end_65b
    .catchall {:try_start_653 .. :try_end_65b} :catchall_82d

    monitor-exit v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v6, :cond_670

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v6, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_670
    const-string/jumbo v6, "PFTBT"

    const-string/jumbo v7, "Full data backup pass finished."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    :catchall_685
    move-exception v5

    :try_start_686
    monitor-exit v6

    throw v5
    :try_end_688
    .catch Ljava/lang/Exception; {:try_start_686 .. :try_end_688} :catch_4a0
    .catchall {:try_start_686 .. :try_end_688} :catchall_5fe

    :cond_688
    :try_start_688
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->cancelFullBackup()V
    :try_end_68f
    .catchall {:try_start_688 .. :try_end_68f} :catchall_691

    goto/16 :goto_399

    :catchall_691
    move-exception v5

    :try_start_692
    monitor-exit v6

    throw v5

    :cond_694
    const/16 v5, -0x3ed

    if-ne v13, v5, :cond_6c8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v6, -0x3ed

    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport quota exceeded for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xb1d

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto/16 :goto_441

    :cond_6c8
    const/16 v5, -0x3eb

    if-ne v13, v5, :cond_705

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v6, -0x3eb

    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Application failure for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xb07

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_441

    :cond_705
    const/16 v5, -0x7d3

    if-ne v13, v5, :cond_751

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v6, -0x7d3

    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Backup cancelled. package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", cancelAll="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xb1e

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_441

    :cond_751
    if-eqz v13, :cond_80b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/16 v6, -0x3e8

    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport failed; aborting backup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xb1a

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_780
    .catch Ljava/lang/Exception; {:try_start_692 .. :try_end_780} :catch_4a0
    .catchall {:try_start_692 .. :try_end_780} :catchall_5fe

    const/16 v16, -0x3e8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCancelAll:Z

    if-eqz v5, :cond_78a

    const/16 v16, -0x7d3

    :cond_78a
    const-string/jumbo v5, "PFTBT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Full backup completed with status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    move/from16 v0, v16

    invoke-static {v5, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->cleanUpPipes([Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    if-eqz v5, :cond_7cd

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mJob:Lcom/android/server/backup/FullBackupJob;

    invoke-virtual {v5}, Lcom/android/server/backup/FullBackupJob;->finishBackupPass()V

    :cond_7cd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7d6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    :try_end_7de
    .catchall {:try_start_7d6 .. :try_end_7de} :catchall_808

    monitor-exit v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mUpdateSchedule:Z

    if-eqz v5, :cond_7f3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V

    :cond_7f3
    const-string/jumbo v5, "PFTBT"

    const-string/jumbo v6, "Full data backup pass finished."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_808
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_80b
    :try_start_80b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mBackupObserver:Landroid/app/backup/IBackupObserver;

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-static {v5, v0, v6}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    const/16 v5, 0xb1b

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_825
    .catch Ljava/lang/Exception; {:try_start_80b .. :try_end_825} :catch_4a0
    .catchall {:try_start_80b .. :try_end_825} :catchall_5fe

    goto/16 :goto_441

    :catchall_827
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_82a
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_82d
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_830
    move-exception v19

    goto/16 :goto_499
.end method

.method public unregisterTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    return-void
.end method
