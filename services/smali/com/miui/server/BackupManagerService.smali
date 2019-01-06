.class public Lcom/miui/server/BackupManagerService;
.super Lmiui/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/BackupManagerService$1;,
        Lcom/miui/server/BackupManagerService$2;,
        Lcom/miui/server/BackupManagerService$BackupHandler;,
        Lcom/miui/server/BackupManagerService$DeathLinker;,
        Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;
    }
.end annotation


# static fields
.field private static final COMPONENT_ENABLED_STATE_NONE:I = -0x1

.field private static final FD_NONE:I = -0x1

.field private static final PID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Backup:BackupManagerService"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBackupReadSide:Landroid/os/ParcelFileDescriptor;

.field private mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

.field private mCallerFd:I

.field private mContext:Landroid/content/Context;

.field private mCurrentCompletedSize:J

.field private mCurrentTotalSize:J

.field private mCurrentWorkingFeature:I

.field private mCurrentWorkingPkg:Ljava/lang/String;

.field private mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

.field private mEncryptedPwd:Ljava/lang/String;

.field private mEncryptedPwdInBakFile:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mICaller:Landroid/os/IBinder;

.field private mIsNeedBeKilled:Z

.field private mLastError:I

.field private mOwnerPid:I

.field private mPackageLastEnableState:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageStatsObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProgType:I

.field private mPwd:Ljava/lang/String;

.field private mShouldSkipData:Z

.field private mState:I

.field private mStateObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmiui/app/backup/IBackupServiceStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -get0(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/server/BackupManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/server/BackupManagerService;)I
    .registers 2

    iget v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    return v0
.end method

.method static synthetic -get3(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/server/BackupManagerService;)Lcom/miui/server/BackupManagerService$DeathLinker;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/server/BackupManagerService;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/server/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get8(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/server/BackupManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/miui/server/BackupManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    iput-object p1, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/server/BackupManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/server/BackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->broadcastServiceIdle()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/server/BackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->releaseBackupWriteStream()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/BackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->waitForTheLastWorkingTask()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lmiui/app/backup/IBackupManager$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    iput v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    iput-object v3, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    new-instance v0, Lcom/miui/server/BackupManagerService$DeathLinker;

    invoke-direct {v0, p0, v3}, Lcom/miui/server/BackupManagerService$DeathLinker;-><init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$DeathLinker;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

    iput-object v3, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v3, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    iput v1, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mState:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/miui/server/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/miui/server/BackupManagerService$1;-><init>(Lcom/miui/server/BackupManagerService;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/miui/server/BackupManagerService$2;

    invoke-direct {v0, p0}, Lcom/miui/server/BackupManagerService$2;-><init>(Lcom/miui/server/BackupManagerService;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageStatsObserver:Landroid/content/pm/IPackageStatsObserver;

    iput-object p1, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MiuiBackup"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/server/BackupManagerService$BackupHandler;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/miui/server/BackupManagerService$BackupHandler;-><init>(Lcom/miui/server/BackupManagerService;Landroid/os/Looper;Lcom/miui/server/BackupManagerService$BackupHandler;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->getPackageEnableStateFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/BackupManagerService;->restoreLastPackageEnableState(Ljava/io/File;)V

    return-void
.end method

.method private appHasOwnBackupAgent(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1e

    const-class v3, Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1a} :catch_1f

    move-result v3

    if-nez v3, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    :goto_1e
    return v1

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1e
.end method

.method private broadcastServiceIdle()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lmiui/app/backup/IBackupServiceStateObserver;

    invoke-interface {v2}, Lmiui/app/backup/IBackupServiceStateObserver;->onServiceStateIdle()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    :try_start_18
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v2

    :try_start_20
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_34

    invoke-direct {p0, p1, p3}, Lcom/miui/server/BackupManagerService;->isDefaultIme(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/miui/server/BackupManagerService$5;

    invoke-direct {v5, p0, p3}, Lcom/miui/server/BackupManagerService$5;-><init>(Lcom/miui/server/BackupManagerService;Ljava/lang/String;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_24
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->getPackageEnableStateFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :goto_2b
    return-void

    :cond_2c
    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    invoke-virtual {v4, p1, v5, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_24

    :cond_34
    iget v4, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_41

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    :cond_41
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->getPackageEnableStateFile()Ljava/io/File;

    move-result-object v4

    iget v5, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    invoke-direct {p0, v4, p1, v5}, Lcom/miui/server/BackupManagerService;->saveCurrentPackageEnableState(Ljava/io/File;Ljava/lang/String;I)V

    :try_start_4a
    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5
    :try_end_5f
    .catchall {:try_start_4a .. :try_end_5f} :catchall_bc

    :try_start_5f
    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v6, v7}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait(J)V

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_79} :catch_ae
    .catchall {:try_start_5f .. :try_end_79} :catchall_b9

    :goto_79
    :try_start_79
    monitor-exit v5

    const-string/jumbo v4, "Backup:BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setApplicationEnabledSetting wait time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_79 .. :try_end_a4} :catchall_bc

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v4}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService;->waitUntilAppKilled(Ljava/lang/String;)V

    goto/16 :goto_2b

    :catch_ae
    move-exception v0

    :try_start_af
    const-string/jumbo v4, "Backup:BackupManagerService"

    const-string/jumbo v6, "mPkgChangingLock wait error"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_b9

    goto :goto_79

    :catchall_b9
    move-exception v4

    :try_start_ba
    monitor-exit v5

    throw v4
    :try_end_bc
    .catchall {:try_start_ba .. :try_end_bc} :catchall_bc

    :catchall_bc
    move-exception v4

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v5}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    throw v4
.end method

.method public static getCachedInstallFile()Ljava/io/File;
    .registers 4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "restoring_cached_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDefaultIme(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageEnableStateFile()Ljava/io/File;
    .registers 5

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "backup_pkg_enable_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .registers 7

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1e

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    :cond_1e
    return v2

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method private isApplicationRunning(Ljava/lang/String;)Z
    .registers 11

    const/4 v3, 0x0

    if-eqz p1, :cond_30

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v5, :cond_d

    iget-object v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_21
    if-ge v5, v7, :cond_d

    aget-object v4, v6, v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    const/4 v3, 0x1

    goto :goto_d

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_30
    return v3
.end method

.method private isDefaultIme(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_11

    const/16 v2, 0xa

    if-ne v1, v2, :cond_16

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_16
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7
.end method

.method private releaseBackupWriteStream()V
    .registers 6

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_19

    const/16 v3, 0x400

    new-array v0, v3, [B

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :cond_13
    :try_start_13
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_1a

    move-result v3

    if-gtz v3, :cond_13

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v1

    const-string/jumbo v3, "Backup:BackupManagerService"

    const-string/jumbo v4, "realeaseBackupReadStream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method private restoreLastPackageEnableState(Ljava/io/File;)V
    .registers 19

    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCachedInstallFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_d
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_65

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/high16 v13, -0x80000000

    :try_start_17
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_dc
    .catchall {:try_start_17 .. :try_end_1e} :catchall_bb

    :try_start_1e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    invoke-virtual {v10}, Ljava/io/FileInputStream;->read()I

    move-result v3

    if-ltz v3, :cond_66

    int-to-byte v14, v3

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_31} :catch_32
    .catchall {:try_start_1e .. :try_end_31} :catchall_d9

    goto :goto_23

    :catch_32
    move-exception v6

    move-object v9, v10

    :goto_34
    :try_start_34
    const-string/jumbo v14, "Backup:BackupManagerService"

    const-string/jumbo v15, "IOException"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_bb

    if-eqz v9, :cond_42

    :try_start_3f
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_b0

    :cond_42
    :goto_42
    if-eqz v11, :cond_cf

    const/high16 v14, -0x80000000

    if-eq v13, v14, :cond_cf

    const-string/jumbo v14, "Backup:BackupManagerService"

    const-string/jumbo v15, "Unfinished backup package found, restore it\'s enable state"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/miui/server/BackupManagerService;->getDefaultIme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput v13, v0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v14, v5}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_65
    :goto_65
    return-void

    :cond_66
    :try_start_66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v2, v14, [B

    const/4 v8, 0x0

    :goto_6d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_82

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    aput-byte v14, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    :cond_82
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v2}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9e

    array-length v14, v12

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9e

    const/4 v14, 0x0

    aget-object v11, v12, v14
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_97} :catch_32
    .catchall {:try_start_66 .. :try_end_97} :catchall_d9

    const/4 v14, 0x1

    :try_start_98
    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/NumberFormatException; {:try_start_98 .. :try_end_9d} :catch_df
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9d} :catch_32
    .catchall {:try_start_98 .. :try_end_9d} :catchall_d9

    move-result v13

    :cond_9e
    :goto_9e
    if-eqz v10, :cond_a3

    :try_start_a0
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a5

    :cond_a3
    :goto_a3
    move-object v9, v10

    goto :goto_42

    :catch_a5
    move-exception v6

    const-string/jumbo v14, "Backup:BackupManagerService"

    const-string/jumbo v15, "IOEception"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a3

    :catch_b0
    move-exception v6

    const-string/jumbo v14, "Backup:BackupManagerService"

    const-string/jumbo v15, "IOEception"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :catchall_bb
    move-exception v14

    :goto_bc
    if-eqz v9, :cond_c1

    :try_start_be
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    :cond_c1
    :goto_c1
    throw v14

    :catch_c2
    move-exception v6

    const-string/jumbo v15, "Backup:BackupManagerService"

    const-string/jumbo v16, "IOEception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c1

    :cond_cf
    const-string/jumbo v14, "Backup:BackupManagerService"

    const-string/jumbo v15, "backup_pkg_enable_state file broken"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    :catchall_d9
    move-exception v14

    move-object v9, v10

    goto :goto_bc

    :catch_dc
    move-exception v6

    goto/16 :goto_34

    :catch_df
    move-exception v7

    goto :goto_9e
.end method

.method private saveCurrentPackageEnableState(Ljava/io/File;Ljava/lang/String;I)V
    .registers 11

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_32
    .catchall {:try_start_1 .. :try_end_6} :catchall_4d

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_20} :catch_62
    .catchall {:try_start_6 .. :try_end_20} :catchall_5f

    if-eqz v2, :cond_25

    :try_start_22
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_27

    :cond_25
    :goto_25
    move-object v1, v2

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    const-string/jumbo v4, "Backup:BackupManagerService"

    const-string/jumbo v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25

    :catch_32
    move-exception v0

    :goto_33
    :try_start_33
    const-string/jumbo v4, "Backup:BackupManagerService"

    const-string/jumbo v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_4d

    if-eqz v1, :cond_26

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_26

    :catch_42
    move-exception v0

    const-string/jumbo v4, "Backup:BackupManagerService"

    const-string/jumbo v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :catchall_4d
    move-exception v4

    :goto_4e
    if-eqz v1, :cond_53

    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    :cond_53
    :goto_53
    throw v4

    :catch_54
    move-exception v0

    const-string/jumbo v5, "Backup:BackupManagerService"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53

    :catchall_5f
    move-exception v4

    move-object v1, v2

    goto :goto_4e

    :catch_62
    move-exception v0

    move-object v1, v2

    goto :goto_33
.end method

.method private waitForTheLastWorkingTask()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/server/BackupManagerService$4;

    invoke-direct {v2, p0}, Lcom/miui/server/BackupManagerService$4;-><init>(Lcom/miui/server/BackupManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_36

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_32

    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_2f

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_35

    :try_start_24
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->wait()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_29} :catch_2a
    .catchall {:try_start_24 .. :try_end_29} :catchall_2f

    goto :goto_16

    :catch_2a
    move-exception v0

    :try_start_2b
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_16

    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v2

    throw v1
    :try_end_32
    .catchall {:try_start_30 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    :cond_36
    monitor-exit p0

    return-void
.end method

.method private waitUntilAppKilled(Ljava/lang/String;)V
    .registers 14

    const/16 v0, 0x14

    const/4 v7, 0x0

    const/4 v3, 0x1

    iget-object v9, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    :goto_f
    const/4 v3, 0x1

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_49

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    :cond_48
    const/4 v3, 0x0

    :cond_49
    if-eqz v3, :cond_6f

    :goto_4b
    if-eqz v3, :cond_87

    const-string/jumbo v9, "Backup:BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is killed. continue our routine."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return-void

    :cond_6f
    const-wide/16 v10, 0x1f4

    :try_start_71
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_74} :catch_7c

    add-int/lit8 v8, v7, 0x1

    const/16 v9, 0x14

    if-ge v7, v9, :cond_a9

    move v7, v8

    goto :goto_f

    :catch_7c
    move-exception v2

    const-string/jumbo v9, "Backup:BackupManagerService"

    const-string/jumbo v10, "interrupted while waiting"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :cond_87
    const-string/jumbo v9, "Backup:BackupManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "continue while app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is still alive!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    :cond_a9
    move v7, v8

    goto :goto_4b
.end method


# virtual methods
.method public acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p2, :cond_d

    const-string/jumbo v0, "Backup:BackupManagerService"

    const-string/jumbo v1, "caller should not be null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_d
    monitor-enter p0

    :try_start_e
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    iput-object p2, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_2d

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return v2

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addCompletedSize(J)V
    .registers 12

    iget-wide v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    iget v0, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v0, :cond_1b

    :try_start_d
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    iget-wide v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    iget-wide v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v7}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onCustomProgressChange(Ljava/lang/String;IIJJ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method public backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/IPackageBackupRestoreObserver;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput-object p2, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    iget v5, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    if-eq v4, v5, :cond_14

    const-string/jumbo v5, "Backup:BackupManagerService"

    const-string/jumbo v6, "You must acquire first to use the backup or restore service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    if-nez v5, :cond_22

    const-string/jumbo v5, "Backup:BackupManagerService"

    const-string/jumbo v6, "Caller is null You must acquire first with a binder"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_34

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_34

    iput-object p5, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    :cond_34
    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/miui/server/BackupManagerService;->getDefaultIme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, p3}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-direct {p0, p3}, Lcom/miui/server/BackupManagerService;->appHasOwnBackupAgent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    :goto_4b
    const/4 v5, -0x1

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    iput-object p3, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    if-nez v3, :cond_57

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p3, v5, v6}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_57
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v5

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/miui/server/BackupManagerService;->mShouldSkipData:Z

    monitor-enter p0

    :try_start_62
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_cf

    monitor-exit p0

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iput p4, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    const/4 v5, 0x1

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mState:I

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/miui/server/BackupManagerService;->mPackageStatsObserver:Landroid/content/pm/IPackageStatsObserver;

    invoke-static {v5, v6, p3, v7}, Lcom/miui/server/BackupManagerServiceProxy;->getPackageSizeInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    iget-object v6, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v6

    const/4 v5, 0x1

    :try_start_8f
    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v5, v7

    invoke-static {p1, v5, p7}, Lcom/miui/server/BackupManagerServiceProxy;->fullBackup(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_a2
    .catchall {:try_start_8f .. :try_end_a2} :catchall_d2

    monitor-exit v6

    if-nez v3, :cond_a9

    const/4 v5, 0x1

    invoke-direct {p0, p3, v5, v2}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_a9
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mState:I

    const/4 v5, -0x1

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    return-void

    :cond_ca
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    goto/16 :goto_4b

    :catchall_cf
    move-exception v5

    monitor-exit p0

    throw v5

    :catchall_d2
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public delCacheBackup()V
    .registers 4

    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCallingUid()I

    move-result v1

    const/16 v2, 0x264a

    if-eq v1, v2, :cond_c

    const/16 v2, 0x2648

    if-ne v1, v2, :cond_17

    :cond_c
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/cache/backup"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_17
    return-void
.end method

.method public errorOccur(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    if-nez v0, :cond_13

    iput p1, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    invoke-interface {v0, v1, v2, p1}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onError(Ljava/lang/String;II)V

    :cond_13
    return-void
.end method

.method public getBackupTimeoutScale()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->isProgRecordApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x6

    return v0

    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentRunningPackage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWorkingFeature()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    return v0
.end method

.method public getState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/miui/server/BackupManagerService;->mState:I

    return v0
.end method

.method public isNeedBeKilled(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public isRunningFromMiui(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isServiceIdle()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/server/BackupManagerService;->mState:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public onApkInstalled()V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_11
    return-void
.end method

.method public readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    .registers 10

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_6d

    :try_start_b
    invoke-static {v3}, Lmiui/app/backup/BackupFileResolver;->readMiuiHeader(Ljava/io/InputStream;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget v6, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->version:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4a

    iget-object v6, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v6, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->featureId:I

    iput v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    iget-boolean v6, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    if-eqz v6, :cond_50

    :goto_22
    iput-object v5, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwdInBakFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-static {v5, v6}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/miui/server/BackupManagerService;->appHasOwnBackupAgent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/miui/server/BackupManagerService;->isApplicationRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    :goto_41
    if-nez v4, :cond_4a

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_b .. :try_end_4a} :catchall_57

    :cond_4a
    if-eqz v3, :cond_4f

    :try_start_4c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5f

    :cond_4f
    return-void

    :cond_50
    :try_start_50
    iget-object v5, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->encryptedPwd:Ljava/lang/String;

    goto :goto_22

    :cond_53
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_57

    goto :goto_41

    :catchall_57
    move-exception v5

    move-object v2, v3

    :goto_59
    if-eqz v2, :cond_5e

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_66

    :cond_5e
    throw v5

    :catch_5f
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catch_66
    move-exception v0

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :catchall_6d
    move-exception v5

    goto :goto_59
.end method

.method public release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_17

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    if-ne v0, v1, :cond_19

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->waitForTheLastWorkingTask()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->broadcastServiceIdle()V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1f

    :cond_17
    :goto_17
    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_17

    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCallingPid()I

    move-result v1

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    if-eq v1, v2, :cond_16

    const-string/jumbo v2, "Backup:BackupManagerService"

    const-string/jumbo v3, "You must acquire first to use the backup or restore service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    if-nez v2, :cond_24

    const-string/jumbo v2, "Backup:BackupManagerService"

    const-string/jumbo v3, "Caller is null You must acquire first with a binder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/miui/server/BackupManagerService;->getDefaultIme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object p2, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    iput v6, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    iput v6, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    iput v8, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mState:I

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    monitor-enter p0

    :try_start_42
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_87

    monitor-exit p0

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    :try_start_4e
    iput-object p4, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    invoke-static {p1}, Lcom/miui/server/BackupManagerServiceProxy;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_62
    .catchall {:try_start_4e .. :try_end_62} :catchall_8a

    monitor-exit v3

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_72

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v2, v9, v0}, Lcom/miui/server/BackupManagerService;->enablePackageAndWaitIfNeeded(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_72
    iput-object v7, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    iput-object v7, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v9, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    iput v8, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    iput v6, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    iput v6, p0, Lcom/miui/server/BackupManagerService;->mState:I

    iput v8, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    return-void

    :catchall_87
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_8a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setCustomProgress(III)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput p1, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    int-to-long v4, p2

    int-to-long v6, p3

    move v3, p1

    invoke-interface/range {v0 .. v7}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    :cond_12
    return-void
.end method

.method public setIsNeedBeKilled(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean p2, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    :cond_c
    return-void
.end method

.method public shouldSkipData()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/server/BackupManagerService;->mShouldSkipData:Z

    return v0
.end method

.method public startConfirmationUi(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/server/BackupManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/BackupManagerService$3;-><init>(Lcom/miui/server/BackupManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_22
    .catchall {:try_start_1 .. :try_end_a} :catchall_29

    :try_start_a
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    iget-object v6, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lmiui/app/backup/BackupFileResolver;->writeMiuiHeader(Ljava/io/OutputStream;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_3a
    .catchall {:try_start_a .. :try_end_15} :catchall_37

    if-eqz v2, :cond_1a

    :try_start_17
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    :cond_1a
    return-void

    :catch_1b
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception v3

    :goto_2a
    if-eqz v1, :cond_2f

    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    :cond_2f
    throw v3

    :catch_30
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catchall_37
    move-exception v3

    move-object v1, v2

    goto :goto_2a

    :catch_3a
    move-exception v0

    move-object v1, v2

    goto :goto_23
.end method
