.class public Lcom/android/server/backup/BackupManagerService;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$1;,
        Lcom/android/server/backup/BackupManagerService$2;,
        Lcom/android/server/backup/BackupManagerService$3;,
        Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/backup/BackupManagerService$AdbBackupParams;,
        Lcom/android/server/backup/BackupManagerService$AdbParams;,
        Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;,
        Lcom/android/server/backup/BackupManagerService$AdbRestoreParams;,
        Lcom/android/server/backup/BackupManagerService$BackupHandler;,
        Lcom/android/server/backup/BackupManagerService$BackupParams;,
        Lcom/android/server/backup/BackupManagerService$BackupRequest;,
        Lcom/android/server/backup/BackupManagerService$BackupState;,
        Lcom/android/server/backup/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/backup/BackupManagerService$ClearParams;,
        Lcom/android/server/backup/BackupManagerService$ClearRetryParams;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEngine;,
        Lcom/android/server/backup/BackupManagerService$FullBackupEntry;,
        Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;,
        Lcom/android/server/backup/BackupManagerService$FullBackupPreflight;,
        Lcom/android/server/backup/BackupManagerService$FullBackupTask;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$Lifecycle;,
        Lcom/android/server/backup/BackupManagerService$Operation;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformClearTask;,
        Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;,
        Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;,
        Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;,
        Lcom/android/server/backup/BackupManagerService$RestoreEngine;,
        Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/backup/BackupManagerService$RestoreParams;,
        Lcom/android/server/backup/BackupManagerService$RestorePolicy;,
        Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/backup/BackupManagerService$UnifiedRestoreState;
    }
.end annotation


# static fields
.field static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"

.field static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field static final BACKUP_FILE_VERSION:I = 0x5

.field static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field static final BACKUP_MANIFEST_VERSION:I = 0x1

.field static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field static final BACKUP_METADATA_VERSION:I = 0x1

.field static final BACKUP_PW_FILE_VERSION:I = 0x2

.field static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field static final COMPRESS_FULL_BACKUPS:Z = true

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field static final DEBUG:Z = true

.field static final DEBUG_BACKUP_TRACE:Z = true

.field static final DEBUG_SCHEDULING:Z = true

.field static final ENCRYPTION_ALGORITHM_NAME:Ljava/lang/String; = "AES-256"

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field static final MIN_FULL_BACKUP_INTERVAL:J = 0x5265c00L

.field static final MORE_DEBUG:Z = false

.field private static final MSG_BACKUP_OPERATION_TIMEOUT:I = 0x11

.field static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field private static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field static final MSG_OP_COMPLETE:I = 0x15

.field private static final MSG_REQUEST_BACKUP:I = 0xf

.field private static final MSG_RESTORE_OPERATION_TIMEOUT:I = 0x12

.field private static final MSG_RESTORE_SESSION_TIMEOUT:I = 0x8

.field private static final MSG_RETRY_CLEAR:I = 0xc

.field private static final MSG_RETRY_INIT:I = 0xb

.field private static final MSG_RUN_ADB_BACKUP:I = 0x2

.field private static final MSG_RUN_ADB_RESTORE:I = 0xa

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field private static final MSG_WIDGET_BROADCAST:I = 0xd

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field private static final OP_TYPE_BACKUP:I = 0x2

.field static final OP_TYPE_BACKUP_WAIT:I = 0x0

.field static final OP_TYPE_RESTORE_WAIT:I = 0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field static final PBKDF2_HASH_ROUNDS:I = 0x2710

.field static final PBKDF2_KEY_SIZE:I = 0x100

.field static final PBKDF2_SALT_SIZE:I = 0x200

.field static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field static final SCHEDULE_FILE_VERSION:I = 0x1

.field static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field static final TAR_HEADER_LONG_RADIX:I = 0x8

.field static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_FINISHED_INTERVAL:J = 0x7530L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$AdbParams;",
            ">;"
        }
    .end annotation
.end field

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field volatile mBackupRunning:Z

.field final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCurrentOpLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/BackupManagerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentToken:J

.field mDataDir:Ljava/io/File;

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field mFullBackupScheduleFile:Ljava/io/File;

.field mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mIsRestoreInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingRestores"
    .end annotation
.end field

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field final mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordHashFile:Ljava/io/File;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private mPasswordVersionFile:Ljava/io/File;

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRestores:Ljava/util/Queue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingRestores"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field mProvisionedObserver:Landroid/database/ContentObserver;

.field final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation
.end field

.field private mStorageManager:Landroid/os/storage/IStorageManager;

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field private mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/BackupManagerService;)Landroid/app/IActivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/backup/BackupManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mIsRestoreInProgress:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/backup/BackupManagerService;)Ljava/util/Queue;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/backup/BackupManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mIsRestoreInProgress:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/backup/BackupManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->readBackupEnableState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)[B
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap14(Lcom/android/server/backup/BackupManagerService;I)[B
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap15(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap16(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/backup/BackupManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Landroid/app/backup/IBackupObserver;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    return-void
.end method

.method static synthetic -wrap21(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap22(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap24(ZI)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/backup/BackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->backupSettingMigrated(I)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V
    .registers 24

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPendingRestores:Ljava/util/Queue;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/backup/BackupManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/backup/BackupManagerService$1;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/backup/BackupManagerService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/backup/BackupManagerService$2;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

    new-instance v2, Lcom/android/server/backup/BackupManagerService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/backup/BackupManagerService$3;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string/jumbo v2, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "backup"

    const/16 v6, 0xa

    invoke-direct {v2, v3, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string/jumbo v2, "device_provisioned"

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_391

    const/4 v2, 0x1

    :goto_14c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    const-string/jumbo v2, "backup_auto_restore"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_394

    const/4 v2, 0x1

    :goto_15d
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    new-instance v2, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v6, "backup"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1c0

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SELinux restorecon failed on "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v6, "backup_stage"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v6, "pwversion"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_211

    const/4 v11, 0x0

    const/4 v13, 0x0

    :try_start_1f1
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1fa
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_1fa} :catch_3a3
    .catchall {:try_start_1f1 .. :try_end_1fa} :catchall_3c5

    :try_start_1fa
    new-instance v14, Ljava/io/DataInputStream;

    invoke-direct {v14, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1ff
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_1ff} :catch_439
    .catchall {:try_start_1fa .. :try_end_1ff} :catchall_432

    :try_start_1ff
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I
    :try_end_207
    .catch Ljava/io/IOException; {:try_start_1ff .. :try_end_207} :catch_43d
    .catchall {:try_start_1ff .. :try_end_207} :catchall_435

    if-eqz v14, :cond_20c

    :try_start_209
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    :cond_20c
    if-eqz v12, :cond_211

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_211} :catch_397

    :cond_211
    :goto_211
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v6, "pwhash"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_267

    const/4 v11, 0x0

    const/4 v13, 0x0

    :try_start_22d
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_236
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_236} :catch_3e8
    .catchall {:try_start_22d .. :try_end_236} :catchall_40a

    :try_start_236
    new-instance v14, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v14, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_240
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_240} :catch_42b
    .catchall {:try_start_236 .. :try_end_240} :catchall_424

    :try_start_240
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v14}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_25d
    .catch Ljava/io/IOException; {:try_start_240 .. :try_end_25d} :catch_42e
    .catchall {:try_start_240 .. :try_end_25d} :catchall_427

    if-eqz v14, :cond_262

    :try_start_25f
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V

    :cond_262
    if-eqz v12, :cond_267

    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_267
    .catch Ljava/io/IOException; {:try_start_25f .. :try_end_267} :catch_3dc

    :cond_267
    :goto_267
    new-instance v2, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunBackupReceiver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.app.backup.intent.RUN"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "android.permission.BACKUP"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$RunInitializeReceiver;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.app.backup.intent.INIT"

    invoke-virtual {v10, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "android.permission.BACKUP"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.backup.intent.RUN"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v8, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.backup.intent.INIT"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v15, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v15, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v6, "pending"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v6, "fb-schedule"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->initPackageTracking()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_316
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_31b
    .catchall {:try_start_316 .. :try_end_31b} :catchall_421

    monitor-exit v2

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "backup_transport"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_337

    const/16 v20, 0x0

    :cond_337
    move-object/from16 v5, v20

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting with transport "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/backup/TransportManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService;->mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/TransportManager;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Lcom/android/server/backup/TransportManager$TransportBoundListener;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->registerAllTransports()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v6, v0}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v3, "*backup*"

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-void

    :cond_391
    const/4 v2, 0x0

    goto/16 :goto_14c

    :cond_394
    const/4 v2, 0x0

    goto/16 :goto_15d

    :catch_397
    move-exception v9

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Error closing pw version files"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_211

    :catch_3a3
    move-exception v9

    :goto_3a4
    :try_start_3a4
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Unable to read backup pw version"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ad
    .catchall {:try_start_3a4 .. :try_end_3ad} :catchall_3c5

    if-eqz v13, :cond_3b2

    :try_start_3af
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    :cond_3b2
    if-eqz v11, :cond_211

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3b7
    .catch Ljava/io/IOException; {:try_start_3af .. :try_end_3b7} :catch_3b9

    goto/16 :goto_211

    :catch_3b9
    move-exception v9

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Error closing pw version files"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_211

    :catchall_3c5
    move-exception v2

    :goto_3c6
    if-eqz v13, :cond_3cb

    :try_start_3c8
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    :cond_3cb
    if-eqz v11, :cond_3d0

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3d0
    .catch Ljava/io/IOException; {:try_start_3c8 .. :try_end_3d0} :catch_3d1

    :cond_3d0
    :goto_3d0
    throw v2

    :catch_3d1
    move-exception v9

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v6, "Error closing pw version files"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d0

    :catch_3dc
    move-exception v9

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Unable to close streams"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_267

    :catch_3e8
    move-exception v9

    :goto_3e9
    :try_start_3e9
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Unable to read saved backup pw hash"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f2
    .catchall {:try_start_3e9 .. :try_end_3f2} :catchall_40a

    if-eqz v13, :cond_3f7

    :try_start_3f4
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    :cond_3f7
    if-eqz v11, :cond_267

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3fc
    .catch Ljava/io/IOException; {:try_start_3f4 .. :try_end_3fc} :catch_3fe

    goto/16 :goto_267

    :catch_3fe
    move-exception v9

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Unable to close streams"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_267

    :catchall_40a
    move-exception v2

    :goto_40b
    if-eqz v13, :cond_410

    :try_start_40d
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V

    :cond_410
    if-eqz v11, :cond_415

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_415
    .catch Ljava/io/IOException; {:try_start_40d .. :try_end_415} :catch_416

    :cond_415
    :goto_415
    throw v2

    :catch_416
    move-exception v9

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v6, "Unable to close streams"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_415

    :catchall_421
    move-exception v3

    monitor-exit v2

    throw v3

    :catchall_424
    move-exception v2

    move-object v11, v12

    goto :goto_40b

    :catchall_427
    move-exception v2

    move-object v13, v14

    move-object v11, v12

    goto :goto_40b

    :catch_42b
    move-exception v9

    move-object v11, v12

    goto :goto_3e9

    :catch_42e
    move-exception v9

    move-object v13, v14

    move-object v11, v12

    goto :goto_3e9

    :catchall_432
    move-exception v2

    move-object v11, v12

    goto :goto_3c6

    :catchall_435
    move-exception v2

    move-object v13, v14

    move-object v11, v12

    goto :goto_3c6

    :catch_439
    move-exception v9

    move-object v11, v12

    goto/16 :goto_3a4

    :catch_43d
    move-exception v9

    move-object v13, v14

    move-object v11, v12

    goto/16 :goto_3a4
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_1a

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1a
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-nez v3, :cond_32

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_32
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x10

    invoke-virtual {v5, v7, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_47
    return-void
.end method

.method private static appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x4000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    :cond_14
    return v0
.end method

.method private static appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_e

    const/4 v0, 0x0

    return v0

    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v0, :cond_15

    return v2

    :cond_15
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.sharedstoragebackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    return v2

    :cond_21
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_28

    return v2

    :cond_28
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_33

    invoke-static {p0, p1}, Lcom/android/server/backup/BackupManagerService;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_32
    return v0

    :cond_33
    const/4 v0, 0x1

    goto :goto_32
.end method

.method private static appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static appIsStopped(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method private backupPasswordMatches(Ljava/lang/String;)Z
    .registers 7

    const/16 v4, 0x2710

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->hasBackupPassword()Z

    move-result v1

    if-eqz v1, :cond_33

    iget v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    const/4 v3, 0x2

    if-ge v1, v3, :cond_2f

    const/4 v0, 0x1

    :goto_f
    const-string/jumbo v1, "PBKDF2WithHmacSHA1"

    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_33

    if-eqz v0, :cond_31

    const-string/jumbo v1, "PBKDF2WithHmacSHA1And8bit"

    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    :goto_21
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_33

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v3, "Backup password mismatch; aborting"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2f
    const/4 v0, 0x0

    goto :goto_f

    :cond_31
    move v1, v2

    goto :goto_21

    :cond_33
    const/4 v1, 0x1

    return v1
.end method

.method private static backupSettingMigrated(I)Z
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "backup"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "backup_enabled"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;
    .registers 11

    :try_start_0
    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v4, 0x100

    invoke-direct {v3, p2, p3, p4, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_e} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v4

    return-object v4

    :catch_10
    move-exception v0

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "PBKDF2 unavailable!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    const/4 v4, 0x0

    return-object v4

    :catch_1c
    move-exception v1

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Invalid key spec for PBKDF2!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    return-object v1
.end method

.method private buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    .registers 6

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_19

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_33

    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_36
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    new-instance v0, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    invoke-direct {v0, p0, p1}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4c

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_53

    :cond_4c
    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    return-void

    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_28

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_17
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_25

    monitor-exit v5

    return-object v4

    :catchall_25
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_28
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v4, "@pm@"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    const-string/jumbo v4, "@pm@"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3c
    return-object v3

    :cond_3d
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    :try_start_40
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_47
    if-ge v1, v0, :cond_59

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-eqz v2, :cond_56

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_5b

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_59
    monitor-exit v5

    goto :goto_3c

    :catchall_5b
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v3, "Defined backup agents:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    const-string/jumbo v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_38
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_7
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Backup Manager is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_14a

    const-string/jumbo v26, "enabled"

    :goto_1e
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " / "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    move/from16 v26, v0

    if-nez v26, :cond_14f

    const-string/jumbo v26, "not "

    :goto_38
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "provisioned / "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArraySet;->size()I

    move-result v26

    if-nez v26, :cond_154

    const-string/jumbo v26, "not "

    :goto_56
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "pending init"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Auto-restore is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    move/from16 v26, v0

    if-eqz v26, :cond_159

    const-string/jumbo v26, "enabled"

    :goto_87
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    move/from16 v26, v0

    if-eqz v26, :cond_ac

    const-string/jumbo v26, "Backup currently running"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ac
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Last backup pass started: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " (now = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x29

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "  next scheduled: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Lcom/android/server/backup/KeyValueBackupJob;->nextScheduled()J

    move-result-wide v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v26, "Transport whitelist:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_125
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ComponentName;

    const-string/jumbo v26, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_146
    .catchall {:try_start_7 .. :try_end_146} :catchall_147

    goto :goto_125

    :catchall_147
    move-exception v26

    monitor-exit v28

    throw v26

    :cond_14a
    :try_start_14a
    const-string/jumbo v26, "disabled"

    goto/16 :goto_1e

    :cond_14f
    const-string/jumbo v26, ""

    goto/16 :goto_38

    :cond_154
    const-string/jumbo v26, ""

    goto/16 :goto_56

    :cond_159
    const-string/jumbo v26, "disabled"

    goto/16 :goto_87

    :cond_15e
    const-string/jumbo v26, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2ae

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v29

    const/16 v26, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v27, v26

    :goto_17b
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_2ae

    aget-object v20, v29, v27

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_274

    const-string/jumbo v26, "  * "

    :goto_19f
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1ba
    .catchall {:try_start_14a .. :try_end_1ba} :catchall_147

    :try_start_1ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v22

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "       destination: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "       intent: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v31

    const/16 v26, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v32, v0

    :goto_234
    move/from16 v0, v26

    move/from16 v1, v32

    if-ge v0, v1, :cond_2a8

    aget-object v11, v31, v26

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "       "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " - "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " state bytes"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_271} :catch_279
    .catchall {:try_start_1ba .. :try_end_271} :catchall_147

    add-int/lit8 v26, v26, 0x1

    goto :goto_234

    :cond_274
    :try_start_274
    const-string/jumbo v26, "    "

    goto/16 :goto_19f

    :catch_279
    move-exception v8

    const-string/jumbo v26, "BackupManagerService"

    const-string/jumbo v31, "Error in transport"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "        Error: "

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2a8
    add-int/lit8 v26, v27, 0x1

    move/from16 v27, v26

    goto/16 :goto_17b

    :cond_2ae
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Pending init: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArraySet;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2dd
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_309

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2dd

    :cond_309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_310
    .catchall {:try_start_274 .. :try_end_310} :catchall_147

    :try_start_310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_363

    const-string/jumbo v26, "Most recent backup trace:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_330
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_363

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "   "

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35f
    .catchall {:try_start_310 .. :try_end_35f} :catchall_360

    goto :goto_330

    :catchall_360
    move-exception v26

    :try_start_361
    monitor-exit v27

    throw v26

    :cond_363
    monitor-exit v27

    const-string/jumbo v26, "Ancestral: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v26, "Current:   "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-string/jumbo v26, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_3af
    if-ge v12, v4, :cond_40d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    const-string/jumbo v26, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashSet;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3e0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_40a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3e0

    :cond_40a
    add-int/lit8 v12, v12, 0x1

    goto :goto_3af

    :cond_40d
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Ancestral packages: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    if-nez v26, :cond_473

    const-string/jumbo v26, "none"

    :goto_424
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    if-eqz v26, :cond_482

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_449
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_482

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_449

    :cond_473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->size()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    goto :goto_424

    :cond_482
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Ever backed up: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashSet;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4b1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4db

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4b1

    :cond_4db
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Pending key/value backup: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_50e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_53a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "    "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_50e

    :cond_53a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Full backup queue:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_569
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5a0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    const-string/jumbo v26, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v26, " : "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_59f
    .catchall {:try_start_361 .. :try_end_59f} :catchall_147

    goto :goto_569

    :cond_5a0
    monitor-exit v28

    return-void
.end method

.method private fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z
    .registers 11

    const/4 v8, 0x0

    if-nez p1, :cond_d

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Transport not present; full data backup not performed"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_d
    :try_start_d
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "@pm@"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_54

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup requested but dataset not yet initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_33} :catch_34

    return v8

    :catch_34
    move-exception v0

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get transport name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_54
    const/4 v3, 0x1

    return v3
.end method

.method static getInstance()Lcom/android/server/backup/Trampoline;
    .registers 1

    sget-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    return-object v0
.end method

.method private getMessageIdForOperationType(I)I
    .registers 5

    packed-switch p1, :pswitch_data_26

    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMessageIdForOperationType called on invalid operation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :pswitch_1f
    const/16 v0, 0x11

    return v0

    :pswitch_22
    const/16 v0, 0x12

    return v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method private getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_17

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Hex string must have an even number of digits"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_17
    new-array v2, v0, [B

    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_34

    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_1a

    :cond_34
    return-object v2
.end method

.method private initPackageTracking()V
    .registers 24

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "ancestral"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    const/16 v19, 0x0

    const/4 v15, 0x0

    :try_start_17
    new-instance v16, Ljava/io/DataInputStream;

    new-instance v18, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_34} :catch_169
    .catchall {:try_start_17 .. :try_end_34} :catchall_1d2

    :try_start_34
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7a

    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    if-ltz v11, :cond_7a

    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const/4 v8, 0x0

    :goto_66
    if-ge v8, v11, :cond_7a

    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_77} :catch_1d8
    .catchall {:try_start_34 .. :try_end_77} :catchall_1d4

    add-int/lit8 v8, v8, 0x1

    goto :goto_66

    :cond_7a
    if-eqz v16, :cond_7f

    :try_start_7c
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_162
    .catch Ljava/io/FileNotFoundException; {:try_start_7c .. :try_end_7f} :catch_82
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_1ce

    :cond_7f
    :goto_7f
    if-eqz v19, :cond_165

    :try_start_81
    throw v19
    :try_end_82
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_82} :catch_82
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_82} :catch_1ce

    :catch_82
    move-exception v7

    move-object/from16 v15, v16

    :goto_85
    const-string/jumbo v18, "BackupManagerService"

    const-string/jumbo v19, "No ancestral data"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8e
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string/jumbo v20, "processed"

    invoke-direct/range {v18 .. v20}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_ef

    const/16 v19, 0x0

    const/4 v9, 0x0

    :try_start_b1
    new-instance v10, Ljava/io/DataInputStream;

    new-instance v18, Ljava/io/BufferedInputStream;

    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_cc} :catch_1cb
    .catchall {:try_start_b1 .. :try_end_cc} :catchall_1c4

    :goto_cc
    :try_start_cc
    invoke-virtual {v10}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_db} :catch_dc
    .catchall {:try_start_cc .. :try_end_db} :catchall_1c7

    goto :goto_cc

    :catch_dc
    move-exception v18

    move-object v9, v10

    :goto_de
    :try_start_de
    throw v18
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_df

    :catchall_df
    move-exception v19

    move-object/from16 v22, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v22

    :goto_e6
    if-eqz v9, :cond_eb

    :try_start_e8
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_eb} :catch_19e
    .catch Ljava/io/EOFException; {:try_start_e8 .. :try_end_eb} :catch_ee
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_1b0

    :cond_eb
    :goto_eb
    if-eqz v19, :cond_1c0

    :try_start_ed
    throw v19
    :try_end_ee
    .catch Ljava/io/EOFException; {:try_start_ed .. :try_end_ee} :catch_ee
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_ee} :catch_1b0

    :catch_ee
    move-exception v4

    :cond_ef
    :goto_ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_f6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_100
    .catchall {:try_start_f6 .. :try_end_100} :catchall_1c1

    monitor-exit v19

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v18, "package"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v18, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v18, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_162
    move-exception v19

    goto/16 :goto_7f

    :cond_165
    move-object/from16 v15, v16

    goto/16 :goto_8e

    :catch_169
    move-exception v18

    :goto_16a
    :try_start_16a
    throw v18
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_16b

    :catchall_16b
    move-exception v19

    move-object/from16 v22, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v22

    :goto_172
    if-eqz v15, :cond_177

    :try_start_174
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_174 .. :try_end_177} :catch_17d
    .catch Ljava/io/FileNotFoundException; {:try_start_174 .. :try_end_177} :catch_17a
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_18d

    :cond_177
    :goto_177
    if-eqz v19, :cond_19d

    :try_start_179
    throw v19

    :catch_17a
    move-exception v7

    goto/16 :goto_85

    :catch_17d
    move-exception v20

    if-nez v19, :cond_183

    move-object/from16 v19, v20

    goto :goto_177

    :cond_183
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_177

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_18c
    .catch Ljava/io/FileNotFoundException; {:try_start_179 .. :try_end_18c} :catch_17a
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_18c} :catch_18d

    goto :goto_177

    :catch_18d
    move-exception v5

    :goto_18e
    const-string/jumbo v18, "BackupManagerService"

    const-string/jumbo v19, "Unable to read token file"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8e

    :cond_19d
    :try_start_19d
    throw v18
    :try_end_19e
    .catch Ljava/io/FileNotFoundException; {:try_start_19d .. :try_end_19e} :catch_17a
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_19e} :catch_18d

    :catch_19e
    move-exception v20

    if-nez v19, :cond_1a5

    move-object/from16 v19, v20

    goto/16 :goto_eb

    :cond_1a5
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_eb

    :try_start_1ab
    invoke-virtual/range {v19 .. v20}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_1ae
    .catch Ljava/io/EOFException; {:try_start_1ab .. :try_end_1ae} :catch_ee
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1ae} :catch_1b0

    goto/16 :goto_eb

    :catch_1b0
    move-exception v5

    const-string/jumbo v18, "BackupManagerService"

    const-string/jumbo v19, "Error in processed file"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ef

    :cond_1c0
    :try_start_1c0
    throw v18
    :try_end_1c1
    .catch Ljava/io/EOFException; {:try_start_1c0 .. :try_end_1c1} :catch_ee
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1c1} :catch_1b0

    :catchall_1c1
    move-exception v18

    monitor-exit v19

    throw v18

    :catchall_1c4
    move-exception v18

    goto/16 :goto_e6

    :catchall_1c7
    move-exception v18

    move-object v9, v10

    goto/16 :goto_e6

    :catch_1cb
    move-exception v18

    goto/16 :goto_de

    :catch_1ce
    move-exception v5

    move-object/from16 v15, v16

    goto :goto_18e

    :catchall_1d2
    move-exception v18

    goto :goto_172

    :catchall_1d4
    move-exception v18

    move-object/from16 v15, v16

    goto :goto_172

    :catch_1d8
    move-exception v18

    move-object/from16 v15, v16

    goto :goto_16a
.end method

.method private isBackupOperationInProgress()Z
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$Operation;

    iget v2, v1, Lcom/android/server/backup/BackupManagerService$Operation;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_21

    iget v2, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_26

    if-nez v2, :cond_21

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_24
    monitor-exit v3

    return v5

    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    .registers 9

    array-length v3, p2

    new-array v2, v3, [C

    const/4 v1, 0x0

    :goto_4
    array-length v3, p2

    if-ge v1, v3, :cond_f

    aget-byte v3, p2, v1

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/server/backup/BackupManagerService;->buildCharArrayKey(Ljava/lang/String;[C[BI)Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    return-object v3
.end method

.method private static monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;
    .registers 10

    const/4 v4, 0x0

    if-eqz p0, :cond_39

    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_26

    const-string/jumbo v2, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_26
    if-eqz p4, :cond_2b

    invoke-virtual {v0, p4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2b
    invoke-interface {p0, v0}, Landroid/app/backup/IBackupManagerMonitor;->onEvent(Landroid/os/Bundle;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception v1

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "backup manager monitor went away"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-object v4
.end method

.method private parseLeftoverJournals()V
    .registers 15

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    :goto_8
    if-ge v8, v10, :cond_7c

    aget-object v4, v9, v8

    iget-object v11, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    if-eqz v11, :cond_18

    iget-object v11, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    invoke-virtual {v4, v11}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v11

    if-eqz v11, :cond_45

    :cond_18
    const/4 v5, 0x0

    :try_start_19
    const-string/jumbo v11, "BackupManagerService"

    const-string/jumbo v12, "Found stale backup journal, scheduling"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v12, 0x2000

    invoke-direct {v0, v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_33
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_33} :catch_80
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_33} :catch_48
    .catchall {:try_start_19 .. :try_end_33} :catchall_70

    :goto_33
    :try_start_33
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/io/EOFException; {:try_start_33 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_82
    .catchall {:try_start_33 .. :try_end_3a} :catchall_7d

    goto :goto_33

    :catch_3b
    move-exception v1

    move-object v5, v6

    :goto_3d
    if-eqz v5, :cond_42

    :try_start_3f
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_6e

    :cond_42
    :goto_42
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_45
    :goto_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :catch_48
    move-exception v3

    :goto_49
    :try_start_49
    const-string/jumbo v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Can\'t read "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_49 .. :try_end_63} :catchall_70

    if-eqz v5, :cond_68

    :try_start_65
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_6c

    :cond_68
    :goto_68
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_45

    :catch_6c
    move-exception v2

    goto :goto_68

    :catch_6e
    move-exception v2

    goto :goto_42

    :catchall_70
    move-exception v8

    :goto_71
    if-eqz v5, :cond_76

    :try_start_73
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_7a

    :cond_76
    :goto_76
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v8

    :catch_7a
    move-exception v2

    goto :goto_76

    :cond_7c
    return-void

    :catchall_7d
    move-exception v8

    move-object v5, v6

    goto :goto_71

    :catch_80
    move-exception v1

    goto :goto_3d

    :catch_82
    move-exception v3

    move-object v5, v6

    goto :goto_49
.end method

.method private putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method private putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;
    .registers 6

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p1
.end method

.method private putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;
    .registers 4

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_7
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method private randomBytes(I)[B
    .registers 4

    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static readBackupEnableState(I)Z
    .registers 12

    const/4 v9, 0x0

    const/4 v7, 0x0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v8, "backup"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "backup_enabled"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5e

    const/4 v3, 0x0

    :try_start_1d
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_42
    .catchall {:try_start_1d .. :try_end_22} :catchall_68

    :try_start_22
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_6d
    .catchall {:try_start_22 .. :try_end_25} :catchall_6a

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v6, 0x1

    :goto_29
    if-eqz v4, :cond_2e

    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_31

    :cond_2e
    :goto_2e
    if-eqz v7, :cond_41

    :try_start_30
    throw v7
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    move-exception v1

    move-object v3, v4

    :goto_33
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Cannot read enable state; assuming disabled"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return v9

    :cond_3d
    move v6, v9

    goto :goto_29

    :catch_3f
    move-exception v7

    goto :goto_2e

    :cond_41
    return v6

    :catch_42
    move-exception v6

    :goto_43
    :try_start_43
    throw v6
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_48
    if-eqz v3, :cond_4d

    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_52
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_50

    :cond_4d
    :goto_4d
    if-eqz v7, :cond_5d

    :try_start_4f
    throw v7

    :catch_50
    move-exception v1

    goto :goto_33

    :catch_52
    move-exception v8

    if-nez v7, :cond_57

    move-object v7, v8

    goto :goto_4d

    :cond_57
    if-eq v7, v8, :cond_4d

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4d

    :cond_5d
    throw v6
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5e} :catch_50

    :cond_5e
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "isBackupEnabled() => false due to absent settings file"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :catchall_68
    move-exception v6

    goto :goto_48

    :catchall_6a
    move-exception v6

    move-object v3, v4

    goto :goto_48

    :catch_6d
    move-exception v6

    move-object v3, v4

    goto :goto_43
.end method

.method private readFullBackupSchedule()Ljava/util/ArrayList;
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/BackupManagerService$FullBackupEntry;",
            ">;"
        }
    .end annotation

    const/4 v12, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_14b

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/16 v19, 0x0

    :try_start_1e
    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v30, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_228
    .catchall {:try_start_1e .. :try_end_2d} :catchall_1fe

    :try_start_2d
    new-instance v11, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_34} :catch_22b
    .catchall {:try_start_2d .. :try_end_34} :catchall_20f

    :try_start_34
    new-instance v20, Ljava/io/DataInputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_230
    .catchall {:try_start_34 .. :try_end_3b} :catchall_213

    :try_start_3b
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_71

    const-string/jumbo v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Unknown backup schedule version "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_65} :catch_236
    .catchall {:try_start_3b .. :try_end_65} :catchall_218

    const/16 v30, 0x0

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v30

    :cond_71
    :try_start_71
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    new-instance v28, Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7c} :catch_236
    .catchall {:try_start_71 .. :try_end_7c} :catchall_218

    :try_start_7c
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15, v6}, Ljava/util/HashSet;-><init>(I)V

    const/16 v18, 0x0

    :goto_83
    move/from16 v0, v18

    if-ge v0, v6, :cond_1a0

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v24

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_94} :catch_122
    .catchall {:try_start_7c .. :try_end_94} :catchall_21f

    :try_start_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_d5

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v30

    if-eqz v30, :cond_d5

    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d2
    add-int/lit8 v18, v18, 0x1

    goto :goto_83

    :cond_d5
    const-string/jumbo v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " no longer eligible for full backup"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_94 .. :try_end_fa} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_fa} :catch_122
    .catchall {:try_start_94 .. :try_end_fa} :catchall_21f

    goto :goto_d2

    :catch_fb
    move-exception v13

    :try_start_fc
    const-string/jumbo v30, "BackupManagerService"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Package "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " not installed; dropping from full backup"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_121} :catch_122
    .catchall {:try_start_fc .. :try_end_121} :catchall_21f

    goto :goto_d2

    :catch_122
    move-exception v14

    move-object/from16 v19, v20

    move-object v10, v11

    move-object/from16 v16, v17

    move-object/from16 v27, v28

    :goto_12a
    :try_start_12a
    const-string/jumbo v30, "BackupManagerService"

    const-string/jumbo v31, "Unable to read backup schedule"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z
    :try_end_140
    .catchall {:try_start_12a .. :try_end_140} :catchall_1fe

    const/16 v27, 0x0

    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_14b
    :goto_14b
    if-nez v27, :cond_209

    const/4 v12, 0x1

    new-instance v27, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_15f
    :goto_15f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_209

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/PackageInfo;

    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_15f

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v30

    if-eqz v30, :cond_15f

    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15f

    :cond_1a0
    :try_start_1a0
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1a4
    :goto_1a4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_1ee

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    invoke-static {v7}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v30

    if-eqz v30, :cond_1a4

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v30

    if-eqz v30, :cond_1a4

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1a4

    new-instance v30, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-wide/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    goto :goto_1a4

    :cond_1ee
    invoke-static/range {v28 .. v28}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1f1} :catch_122
    .catchall {:try_start_1a0 .. :try_end_1f1} :catchall_21f

    invoke-static/range {v20 .. v20}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {v17 .. v17}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v27, v28

    goto/16 :goto_14b

    :catchall_1fe
    move-exception v30

    :goto_1ff
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v30

    :cond_209
    if-eqz v12, :cond_20e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    :cond_20e
    return-object v27

    :catchall_20f
    move-exception v30

    move-object/from16 v16, v17

    goto :goto_1ff

    :catchall_213
    move-exception v30

    move-object v10, v11

    move-object/from16 v16, v17

    goto :goto_1ff

    :catchall_218
    move-exception v30

    move-object/from16 v19, v20

    move-object v10, v11

    move-object/from16 v16, v17

    goto :goto_1ff

    :catchall_21f
    move-exception v30

    move-object/from16 v19, v20

    move-object v10, v11

    move-object/from16 v16, v17

    move-object/from16 v27, v28

    goto :goto_1ff

    :catch_228
    move-exception v14

    goto/16 :goto_12a

    :catch_22b
    move-exception v14

    move-object/from16 v16, v17

    goto/16 :goto_12a

    :catch_230
    move-exception v14

    move-object v10, v11

    move-object/from16 v16, v17

    goto/16 :goto_12a

    :catch_236
    move-exception v14

    move-object/from16 v19, v20

    move-object v10, v11

    move-object/from16 v16, v17

    goto/16 :goto_12a
.end method

.method private removeOperation(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate remove for operation. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const v6, 0x8000

    new-array v0, v6, [B

    :cond_14
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_2b

    :goto_1a
    if-lez v1, :cond_14

    array-length v6, v0

    if-le v1, v6, :cond_29

    array-length v5, v0

    :goto_20
    invoke-virtual {v2, v0, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    invoke-virtual {p1, v0, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v1, v3

    goto :goto_1a

    :cond_29
    move v5, v1

    goto :goto_20

    :cond_2b
    return-void
.end method

.method private static sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V
    .registers 5

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup observer went away: backupFinished"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .registers 6

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup observer went away: onResult"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .registers 6

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Backup observer went away: onUpdate"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method static signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_5

    return v8

    :cond_5
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_e

    return v9

    :cond_e
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    :cond_1c
    return v8

    :cond_1d
    array-length v5, p0

    array-length v4, v0

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v5, :cond_3a

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v4, :cond_31

    aget-object v6, p0, v1

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    const/4 v3, 0x1

    :cond_31
    if-nez v3, :cond_37

    return v8

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3a
    return v9
.end method

.method private updateStateForTransport(Ljava/lang/String;)V
    .registers 8

    const-wide/16 v4, 0x0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "backup_transport"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    if-eqz v1, :cond_21

    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    goto :goto_1c

    :cond_21
    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    goto :goto_1c
.end method

.method static writeAppManifest(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/io/File;ZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x1000

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v3, Landroid/util/StringBuilderPrinter;

    invoke-direct {v3, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget v5, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_61

    :goto_33
    invoke-virtual {v3, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_65

    const-string/jumbo v5, "1"

    :goto_3b
    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_69

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    :cond_48
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const-wide/16 v6, 0x0

    invoke-virtual {p2, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    return-void

    :cond_61
    const-string/jumbo v1, ""

    goto :goto_33

    :cond_65
    const-string/jumbo v5, "0"

    goto :goto_3b

    :cond_69
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_77
    if-ge v5, v7, :cond_48

    aget-object v4, v6, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_77
.end method

.method private static writeBackupEnableState(ZI)V
    .registers 12

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "backup"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "backup_enabled"

    invoke-direct {v2, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "backup_enabled-stage"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_1d
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_22} :catch_35
    .catchall {:try_start_1d .. :try_end_22} :catchall_6d

    if-eqz p0, :cond_33

    const/4 v7, 0x1

    :goto_25
    :try_start_25
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_75
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2e} :catch_75
    .catchall {:try_start_25 .. :try_end_2e} :catchall_72

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    :goto_32
    return-void

    :cond_33
    const/4 v7, 0x0

    goto :goto_25

    :catch_35
    move-exception v1

    :goto_36
    :try_start_36
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v7, v7, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "backup_enabled"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_69
    .catchall {:try_start_36 .. :try_end_69} :catchall_6d

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_32

    :catchall_6d
    move-exception v7

    :goto_6e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    :catchall_72
    move-exception v7

    move-object v3, v4

    goto :goto_6e

    :catch_75
    move-exception v1

    move-object v3, v4

    goto :goto_36
.end method

.method private writeFullBackupScheduleAsync()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    if-nez v3, :cond_11

    const-string/jumbo v3, "journal"

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mJournalDir:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    :cond_11
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    const-string/jumbo v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_2e
    .catchall {:try_start_1 .. :try_end_1b} :catchall_5b

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_25} :catch_67
    .catchall {:try_start_1b .. :try_end_25} :catchall_64

    if-eqz v2, :cond_2a

    :try_start_27
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2c

    :cond_2a
    :goto_2a
    move-object v1, v2

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    goto :goto_2a

    :catch_2e
    move-exception v0

    :goto_2f
    :try_start_2f
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_5b

    if-eqz v1, :cond_2b

    :try_start_55
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_2b

    :catch_59
    move-exception v0

    goto :goto_2b

    :catchall_5b
    move-exception v3

    :goto_5c
    if-eqz v1, :cond_61

    :try_start_5e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    :cond_61
    :goto_61
    throw v3

    :catch_62
    move-exception v0

    goto :goto_61

    :catchall_64
    move-exception v3

    move-object v1, v2

    goto :goto_5c

    :catch_67
    move-exception v0

    move-object v1, v2

    goto :goto_2f
.end method


# virtual methods
.method public acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 14

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "acknowledgeAdbBackupOrRestore : token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " allow="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_38

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BACKUP"

    const-string/jumbo v7, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_3c
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_8a

    :try_start_3f
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$AdbParams;

    if-eqz v1, :cond_8f

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz p2, :cond_7a

    instance-of v5, v1, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;

    if-eqz v5, :cond_77

    const/4 v4, 0x2

    :goto_5c
    iput-object p5, v1, Lcom/android/server/backup/BackupManagerService$AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p3, v1, Lcom/android/server/backup/BackupManagerService$AdbParams;->curPassword:Ljava/lang/String;

    iput-object p4, v1, Lcom/android/server/backup/BackupManagerService$AdbParams;->encryptPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_72
    .catchall {:try_start_3f .. :try_end_72} :catchall_87

    :goto_72
    :try_start_72
    monitor-exit v6
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_8a

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_77
    const/16 v4, 0xa

    goto :goto_5c

    :cond_7a
    :try_start_7a
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "User rejected full backup/restore operation"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/backup/BackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$AdbParams;)V
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_87

    goto :goto_72

    :catchall_87
    move-exception v5

    :try_start_88
    monitor-exit v6

    throw v5
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_8f
    :try_start_8f
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_87

    goto :goto_72
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "adbBackup"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    if-eqz v14, :cond_1c

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Backup supported only for the device owner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1c
    if-nez p6, :cond_30

    if-nez p4, :cond_30

    if-eqz p10, :cond_27

    move-object/from16 v0, p10

    array-length v3, v0

    if-nez v3, :cond_30

    :cond_27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Backup requested but neither shared nor any apps named"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v3

    if-nez v3, :cond_73

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Backup not supported before setup"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_166

    :try_start_43
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_53

    :goto_46
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Adb backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_53
    move-exception v15

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_73
    :try_start_73
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Requesting backup: apks="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " obb="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " shared="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " all="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " system="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " includekeyvalue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pkgs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Beginning adb backup..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/BackupManagerService$AdbBackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_10a
    .catchall {:try_start_73 .. :try_end_10a} :catchall_166

    :try_start_10a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_113
    .catchall {:try_start_10a .. :try_end_113} :catchall_163

    :try_start_113
    monitor-exit v4

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting backup confirmation UI, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "fullback"

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/backup/BackupManagerServiceInjector;->startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_197

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Unable to launch backup confirmation UI"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->delete(I)V
    :try_end_153
    .catchall {:try_start_113 .. :try_end_153} :catchall_166

    :try_start_153
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_177

    :goto_156
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Adb backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_163
    move-exception v3

    :try_start_164
    monitor-exit v4

    throw v3
    :try_end_166
    .catchall {:try_start_164 .. :try_end_166} :catchall_166

    :catchall_166
    move-exception v3

    :try_start_167
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_1e9

    :goto_16a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Adb backup processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    :catch_177
    move-exception v15

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_156

    :cond_197
    :try_start_197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$AdbParams;)V

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Waiting for backup completion..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$AdbParams;)V
    :try_end_1b9
    .catchall {:try_start_197 .. :try_end_1b9} :catchall_166

    :try_start_1b9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bc} :catch_1c9

    :goto_1bc
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Adb backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1c9
    move-exception v15

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bc

    :catch_1e9
    move-exception v15

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IO error closing output for adb backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16a
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 13

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BACKUP"

    const-string/jumbo v8, "adbRestore"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Restore supported only for the device owner"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v6

    if-nez v6, :cond_59

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore not permitted before setup"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_bc

    :try_start_2d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_3d

    :goto_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "adb restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3d
    move-exception v1

    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_59
    :try_start_59
    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Beginning restore..."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/server/backup/BackupManagerService$AdbRestoreParams;

    invoke-direct {v4, p0, p1}, Lcom/android/server/backup/BackupManagerService$AdbRestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_bc

    :try_start_6e
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_b9

    :try_start_73
    monitor-exit v7

    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Starting restore confirmation UI, token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "fullrest"

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v7

    invoke-static {p0, v5, v6, v7}, Lcom/android/server/backup/BackupManagerServiceInjector;->startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_e9

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Unable to launch restore confirmation"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V
    :try_end_a9
    .catchall {:try_start_73 .. :try_end_a9} :catchall_bc

    :try_start_a9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_cd

    :goto_ac
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "adb restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_b9
    move-exception v6

    :try_start_ba
    monitor-exit v7

    throw v6
    :try_end_bc
    .catchall {:try_start_ba .. :try_end_bc} :catchall_bc

    :catchall_bc
    move-exception v6

    :try_start_bd
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_12f

    :goto_c0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v7, "BackupManagerService"

    const-string/jumbo v8, "adb restore processing complete."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v6

    :catch_cd
    move-exception v1

    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :cond_e9
    :try_start_e9
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/os/PowerManager;->userActivity(JII)V

    invoke-virtual {p0, v5, v4}, Lcom/android/server/backup/BackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$AdbParams;)V

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Waiting for restore completion..."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/server/backup/BackupManagerService;->waitForCompletion(Lcom/android/server/backup/BackupManagerService$AdbParams;)V
    :try_end_103
    .catchall {:try_start_e9 .. :try_end_103} :catchall_bc

    :try_start_103
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_113

    :goto_106
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "adb restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_113
    move-exception v1

    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close fd after adb restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    :catch_12f
    move-exception v1

    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error trying to close fd after adb restore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c0
.end method

.method addBackupTrace(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_13

    const/4 v2, 0x0

    array-length v3, p1

    :goto_9
    if-ge v2, v3, :cond_16

    aget-object v0, p1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    :cond_16
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_40

    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    :goto_39
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_66

    monitor-exit v2

    return-void

    :cond_40
    :try_start_40
    const-string/jumbo v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_40 .. :try_end_65} :catchall_66

    goto :goto_39

    :catchall_66
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_18

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    :goto_11
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3e

    monitor-exit v1

    return-void

    :cond_18
    :try_start_18
    const-string/jumbo v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3e

    goto :goto_11

    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method allAgentPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const/16 v4, 0x40

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_e
    if-ltz v1, :cond_47

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    :try_start_16
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_24

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_2a

    :cond_24
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_2a
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x4000000

    and-int/2addr v7, v8

    if-nez v7, :cond_24

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_41} :catch_42

    goto :goto_27

    :catch_42
    move-exception v3

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_27

    :cond_47
    return-object v5
.end method

.method public backupNow()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "backupNow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v2, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_25

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Not running backup while in battery save mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    :goto_24
    return-void

    :cond_25
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Scheduling immediate backup pass"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_31
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_36
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_31 .. :try_end_36} :catch_3d
    .catchall {:try_start_31 .. :try_end_36} :catchall_48

    :goto_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_48

    monitor-exit v3

    goto :goto_24

    :catch_3d
    move-exception v0

    :try_start_3e
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "run-backup intent cancelled!"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_48

    goto :goto_36

    :catchall_48
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const/16 v16, 0x0

    const-wide/32 v18, 0x5265c00

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_19

    :cond_17
    const/4 v2, 0x0

    return v2

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v26

    move-object/from16 v0, v26

    iget-boolean v2, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Deferring scheduled full backups in battery saver mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v6, 0xdbba00

    invoke-static {v2, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    const/4 v2, 0x0

    return v2

    :cond_3d
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Beginning scheduled full backup operation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup triggered but one already/still running!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_4d .. :try_end_5c} :catchall_1e0

    const/4 v2, 0x0

    monitor-exit v29

    return v2

    :cond_5f
    const/16 v27, 0x1

    :goto_61
    :try_start_61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a7

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup queue empty; doing nothing"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    :cond_76
    :goto_76
    if-nez v27, :cond_1a0

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Nothing pending full backup; rescheduling +"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v14, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v15}, Lcom/android/server/backup/BackupManagerService$5;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_a4
    .catchall {:try_start_61 .. :try_end_a4} :catchall_1e0

    const/4 v2, 0x0

    monitor-exit v29

    return v2

    :cond_a7
    const/16 v17, 0x0

    :try_start_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v2

    if-nez v2, :cond_be

    const/16 v27, 0x0

    const-wide/32 v18, 0xdbba00

    :cond_be
    if-eqz v27, :cond_105

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J
    :try_end_d2
    .catchall {:try_start_a9 .. :try_end_d2} :catchall_1e0

    sub-long v30, v24, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v30, v2

    if-ltz v2, :cond_e5

    const/16 v27, 0x1

    :goto_dd
    if-nez v27, :cond_e8

    const-wide/32 v2, 0x5265c00

    sub-long v18, v2, v30

    goto :goto_76

    :cond_e5
    const/16 v27, 0x0

    goto :goto_dd

    :cond_e8
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_109

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/16 v17, 0x1

    :cond_105
    :goto_105
    if-eqz v17, :cond_76

    goto/16 :goto_61

    :cond_109
    iget-object v2, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v2, v0, 0x2000

    if-nez v2, :cond_199

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v17

    :goto_121
    if-eqz v17, :cond_105

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v6, 0x36ee80

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    const v6, 0x6ddd00

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v6, v4

    add-long v20, v2, v6

    new-instance v28, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Full backup time but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is busy; deferring to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v20

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    const-wide/32 v6, 0x5265c00

    sub-long v6, v20, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_187
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e8 .. :try_end_187} :catch_189
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_187} :catch_1e3
    .catchall {:try_start_e8 .. :try_end_187} :catchall_1e0

    goto/16 :goto_105

    :catch_189
    move-exception v22

    :try_start_18a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_19c

    const/16 v27, 0x1

    goto/16 :goto_105

    :cond_199
    const/16 v17, 0x0

    goto :goto_121

    :cond_19c
    const/16 v27, 0x0

    goto/16 :goto_105

    :cond_1a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1dd
    .catchall {:try_start_18a .. :try_end_1dd} :catchall_1e0

    monitor-exit v29

    const/4 v2, 0x1

    return v2

    :catchall_1e0
    move-exception v2

    monitor-exit v29

    throw v2

    :catch_1e3
    move-exception v13

    goto/16 :goto_105
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 11

    const/4 v6, 0x0

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "beginRestoreSession: pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " transport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-nez p2, :cond_44

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_44

    const/4 v0, 0x0

    :try_start_32
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_38} :catch_61

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_44

    const/4 v1, 0x0

    :cond_44
    if-eqz v1, :cond_9d

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "beginRestoreSession"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    monitor-enter p0

    :try_start_52
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_a7

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_cb

    monitor-exit p0

    return-object v6

    :catch_61
    move-exception v2

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9d
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "restoring self on current transport; no permission needed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    :cond_a7
    :try_start_a7
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-eqz v3, :cond_b6

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Restore session requested but currently running backups"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_a7 .. :try_end_b4} :catchall_cb

    monitor-exit p0

    return-object v6

    :cond_b6
    :try_start_b6
    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c7
    .catchall {:try_start_b6 .. :try_end_c7} :catchall_cb

    monitor-exit p0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    return-object v3

    :catchall_cb
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 15

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_bb

    :try_start_a
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v3, v7, p2, v8}, Landroid/app/IActivityManager;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_72

    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "awaiting agent for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long v4, v8, v10

    :goto_37
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v3, :cond_7b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_42} :catch_71
    .catchall {:try_start_a .. :try_end_42} :catchall_bb

    move-result-wide v8

    cmp-long v3, v8, v4

    if-gez v3, :cond_7b

    :try_start_47
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4e} :catch_4f
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4e} :catch_71
    .catchall {:try_start_47 .. :try_end_4e} :catchall_bb

    goto :goto_37

    :catch_4f
    move-exception v2

    :try_start_50
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_70} :catch_71
    .catchall {:try_start_50 .. :try_end_70} :catchall_bb

    goto :goto_37

    :catch_71
    move-exception v1

    :cond_72
    :goto_72
    monitor-exit v6

    if-nez v0, :cond_7a

    :try_start_75
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7a} :catch_be

    :cond_7a
    :goto_7a
    return-object v0

    :cond_7b
    :try_start_7b
    iget-boolean v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnecting:Z

    if-eqz v3, :cond_9c

    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Timeout waiting for agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    :cond_9c
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "got agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_ba} :catch_71
    .catchall {:try_start_7b .. :try_end_ba} :catchall_bb

    goto :goto_72

    :catchall_bb
    move-exception v3

    monitor-exit v6

    throw v3

    :catch_be
    move-exception v1

    goto :goto_7a
.end method

.method public cancelBackups()V
    .registers 13

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.BACKUP"

    const-string/jumbo v10, "cancelBackups"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_57

    const/4 v0, 0x0

    :goto_18
    :try_start_18
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_3d

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$Operation;

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget v8, v1, Lcom/android/server/backup/BackupManagerService$Operation;->type:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_3a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_5c

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_3d
    :try_start_3d
    monitor-exit v9

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_42
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->handleCancel(IZ)V
    :try_end_56
    .catchall {:try_start_3d .. :try_end_56} :catchall_57

    goto :goto_42

    :catchall_57
    move-exception v8

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8

    :catchall_5c
    move-exception v8

    :try_start_5d
    monitor-exit v9

    throw v8

    :cond_5f
    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v10, 0x6ddd00

    invoke-static {v8, v10, v11}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V
    :try_end_6f
    .catchall {:try_start_5d .. :try_end_6f} :catchall_57

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .registers 16

    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_10

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_33

    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v5, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Tried to clear data for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " but not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    new-instance v4, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;

    invoke-direct {v4, p0}, Lcom/android/server/backup/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v5, 0x1

    :try_start_3c
    iput-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_65

    :try_start_3e
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v9, 0x0

    invoke-interface {v5, p1, v4, v9}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_44} :catch_6a
    .catchall {:try_start_3e .. :try_end_44} :catchall_65

    :goto_44
    :try_start_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    add-long v6, v10, v12

    :goto_4c
    iget-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_65

    move-result-wide v10

    cmp-long v5, v10, v6

    if-gez v5, :cond_68

    :try_start_58
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v10, 0x1388

    invoke-virtual {v5, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_5f
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5f} :catch_60
    .catchall {:try_start_58 .. :try_end_5f} :catchall_65

    goto :goto_4c

    :catch_60
    move-exception v2

    const/4 v5, 0x0

    :try_start_62
    iput-boolean v5, p0, Lcom/android/server/backup/BackupManagerService;->mClearingData:Z
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_65

    goto :goto_4c

    :catchall_65
    move-exception v5

    monitor-exit v8

    throw v5

    :cond_68
    monitor-exit v8

    return-void

    :catch_6a
    move-exception v1

    goto :goto_44
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    const-string/jumbo v14, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "clearBackupData() of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " on "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v15, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_34} :catch_a4

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-virtual/range {v14 .. v17}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_c9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    :cond_59
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_118

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v15, 0xc

    invoke-virtual {v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_6f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v13

    if-nez v13, :cond_eb

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v16, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0xc

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v16, 0x36ee80

    move-wide/from16 v0, v16

    invoke-virtual {v14, v9, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_a2
    .catchall {:try_start_6f .. :try_end_a2} :catchall_119

    monitor-exit v15

    return-void

    :catch_a4
    move-exception v6

    const-string/jumbo v14, "BackupManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "No such package \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' - not clearing backup data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c9
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_d7
    if-ge v7, v4, :cond_59

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    if-eqz v12, :cond_e8

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_e8
    add-int/lit8 v7, v7, 0x1

    goto :goto_d7

    :cond_eb
    :try_start_eb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v14}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v16, Lcom/android/server/backup/BackupManagerService$ClearParams;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v8}, Lcom/android/server/backup/BackupManagerService$ClearParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v14, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_117
    .catchall {:try_start_eb .. :try_end_117} :catchall_119

    monitor-exit v15

    :cond_118
    return-void

    :catchall_119
    move-exception v14

    monitor-exit v15

    throw v14
.end method

.method clearBackupTrace()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupTrace:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_10

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Clearing restore session and halting timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_24

    goto :goto_e

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    if-nez v1, :cond_3e

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dataChanged but no participant pkg=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$7;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/BackupManagerService$7;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dequeueFullBackupLocked(Ljava/lang/String;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_8
    if-ltz v2, :cond_22

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method deviceIsEncrypted()Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v3

    if-eq v3, v1, :cond_15

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3}, Landroid/os/storage/IStorageManager;->getPasswordType()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_17

    move-result v3

    if-eq v3, v1, :cond_13

    :goto_12
    return v1

    :cond_13
    move v1, v2

    goto :goto_12

    :cond_15
    move v1, v2

    goto :goto_12

    :catch_17
    move-exception v0

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to communicate with storagemanager service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method deviceIsProvisioned()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "BackupManagerService"

    invoke-static {v1, v4, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p3, :cond_4a

    const/4 v1, 0x0

    :try_start_13
    array-length v4, p3

    :goto_14
    if-ge v1, v4, :cond_4a

    aget-object v0, p3, v1

    const-string/jumbo v5, "-h"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    const-string/jumbo v1, "\'dumpsys backup\' optional arguments:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "  -h       : this help text"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "  a[gents] : dump information about defined backup agents"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_51

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_37
    :try_start_37
    const-string/jumbo v5, "agents"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_51

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_4a
    :try_start_4a
    invoke-direct {p0, p2}, Lcom/android/server/backup/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_51

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_51
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public endFullBackup()V
    .registers 4

    new-instance v0, Lcom/android/server/backup/BackupManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$6;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "end-full-backup"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method enqueueFullBackup(Ljava/lang/String;J)V
    .registers 12

    new-instance v1, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    const/4 v2, -0x1

    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-lez v3, :cond_31

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1a
    if-ltz v2, :cond_31

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-wide v6, v0, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    cmp-long v3, v6, p2

    if-gtz v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_31
    if-gez v2, :cond_39

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_41

    :cond_39
    monitor-exit v4

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->writeFullBackupScheduleAsync()V

    return-void

    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :catchall_41
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "fullTransportBackup"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    if-eqz v12, :cond_1c

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Restore supported only for the device owner"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/backup/BackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v3

    if-nez v3, :cond_3f

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Full backup not currently possible -- key/value backup not yet run?"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Done with full transport backup."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3f
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "fullTransportBackup()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_4c
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "full-transport-master"

    invoke-direct {v3, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_73
    .catchall {:try_start_4c .. :try_end_73} :catchall_92

    :goto_73
    :try_start_73
    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_76} :catch_8c
    .catchall {:try_start_73 .. :try_end_76} :catchall_92

    :try_start_76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    :goto_7e
    if-ge v3, v4, :cond_8e

    aget-object v18, p1, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_89
    .catchall {:try_start_76 .. :try_end_89} :catchall_92

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :catch_8c
    move-exception v13

    goto :goto_73

    :cond_8e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_35

    :catchall_92
    move-exception v3

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public generateRandomIntegerToken()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-gez v0, :cond_9

    neg-int v0, v0

    :cond_9
    and-int/lit16 v0, v0, -0x100

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mNextToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 10

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "getAvailableRestoreToken"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_10
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-wide v0, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit v3

    return-wide v0

    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 9

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "getConfigurationIntent"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    if-eqz v2, :cond_38

    :try_start_14
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    :catch_19
    move-exception v0

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get configuration intent from transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-object v6
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BACKUP"

    const-string/jumbo v3, "getCurrentTransport"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 9

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "getDataManagementIntent"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    if-eqz v2, :cond_38

    :try_start_14
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    :catch_19
    move-exception v0

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get management intent from transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-object v6
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "getDataManagementLabel"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    if-eqz v2, :cond_38

    :try_start_14
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementLabel()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    :catch_19
    move-exception v0

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get management label from transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-object v6
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "getDestinationString"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    if-eqz v2, :cond_38

    :try_start_14
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    move-result-object v1

    return-object v1

    :catch_19
    move-exception v0

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to get string from transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-object v6
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 7

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getTransportWhitelist()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_26
    return-object v4
.end method

.method handleCancel(IZ)V
    .registers 11

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v1, v0

    if-eqz v1, :cond_36

    iget v2, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    :goto_13
    if-ne v2, v7, :cond_38

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v5, "Operation already got an ack.Should have been removed from mCurrentOperations."

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_6f

    monitor-exit v4

    if-eqz v1, :cond_35

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v3, :cond_35

    iget-object v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface {v3, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    :cond_35
    return-void

    :cond_36
    const/4 v2, -0x1

    goto :goto_13

    :cond_38
    if-nez v2, :cond_24

    :try_start_3a
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cancel: token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    iget v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->type:I

    if-eqz v3, :cond_63

    iget v3, v1, Lcom/android/server/backup/BackupManagerService$Operation;->type:I

    if-ne v3, v7, :cond_24

    :cond_63
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget v5, v1, Lcom/android/server/backup/BackupManagerService$Operation;->type:I

    invoke-direct {p0, v5}, Lcom/android/server/backup/BackupManagerService;->getMessageIdForOperationType(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V
    :try_end_6e
    .catchall {:try_start_3a .. :try_end_6e} :catchall_6f

    goto :goto_24

    :catchall_6f
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hasBackupPassword()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BACKUP"

    const-string/jumbo v3, "hasBackupPassword"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "initializeTransport"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_f
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 10

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    const-string/jumbo v6, "isAppEligibleForBackup"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v4, v5}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_26
    return v7

    :cond_27
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v4}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_2c} :catch_59

    move-result-object v3

    if-eqz v3, :cond_57

    :try_start_2f
    invoke-static {v2}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_36} :catch_59

    move-result v4

    return v4

    :catch_38
    move-exception v1

    :try_start_39
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to ask about eligibility: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_57} :catch_59

    :cond_57
    const/4 v4, 0x1

    return v4

    :catch_59
    move-exception v0

    return v7
.end method

.method public isBackupEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_backup_BackupManagerService_56687()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/BackupManagerService;->parseLeftoverJournals()V

    return-void
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransportComponents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getAllTransportCompenents()[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransports"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getBoundTransportNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_d
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_6d

    move-result v3

    if-nez v3, :cond_17

    monitor-exit v4

    return-void

    :cond_17
    const/4 v1, 0x0

    :try_start_18
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    const-string/jumbo v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_36
    .catchall {:try_start_18 .. :try_end_22} :catchall_66

    :try_start_22
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_75
    .catchall {:try_start_22 .. :try_end_2c} :catchall_72

    if-eqz v2, :cond_31

    :try_start_2e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_34
    .catchall {:try_start_2e .. :try_end_31} :catchall_6d

    :cond_31
    :goto_31
    move-object v1, v2

    :cond_32
    :goto_32
    monitor-exit v4

    return-void

    :catch_34
    move-exception v0

    goto :goto_31

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    const-string/jumbo v3, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_66

    if-eqz v1, :cond_32

    :try_start_60
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_6d

    goto :goto_32

    :catch_64
    move-exception v0

    goto :goto_32

    :catchall_66
    move-exception v3

    :goto_67
    if-eqz v1, :cond_6c

    :try_start_69
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_70
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    :cond_6c
    :goto_6c
    :try_start_6c
    throw v3
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_70
    move-exception v0

    goto :goto_6c

    :catchall_72
    move-exception v3

    move-object v1, v2

    goto :goto_67

    :catch_75
    move-exception v0

    move-object v1, v2

    goto :goto_37
.end method

.method makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;
    .registers 3

    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate()V

    return-object v0
.end method

.method makeMetadataAgent(Ljava/util/List;)Lcom/android/server/backup/PackageManagerBackupAgent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/android/server/backup/PackageManagerBackupAgent;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/backup/PackageManagerBackupAgent;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, p1}, Lcom/android/server/backup/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/PackageManagerBackupAgent;->attach(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->onCreate()V

    return-object v0
.end method

.method public opComplete(IJ)V
    .registers 12

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_5
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v3, v0

    if-eqz v3, :cond_1c

    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_40

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1c
    :goto_1c
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_69

    monitor-exit v5

    if-eqz v3, :cond_3f

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3f
    return-void

    :cond_40
    :try_start_40
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    if-ne v4, v7, :cond_6c

    const-string/jumbo v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received duplicate ack for token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_68
    .catchall {:try_start_40 .. :try_end_68} :catchall_69

    goto :goto_1c

    :catchall_69
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_6c
    :try_start_6c
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I

    if-nez v4, :cond_1c

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_69

    goto :goto_1c
.end method

.method passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    if-nez v1, :cond_12

    if-eqz p2, :cond_11

    const-string/jumbo v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_11
    return v3

    :cond_12
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/server/backup/BackupManagerService;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    return v3

    :cond_29
    return v2
.end method

.method public prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V
    .registers 12

    if-eqz p5, :cond_2f

    const/4 v1, 0x1

    if-eq p5, v1, :cond_2f

    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareOperationTimeout() doesn\'t support operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_32
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$Operation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p4, p5}, Lcom/android/server/backup/BackupManagerService$Operation;-><init>(Lcom/android/server/backup/BackupManagerService;ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-direct {p0, p5}, Lcom/android/server/backup/BackupManagerService;->getMessageIdForOperationType(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_4f

    monitor-exit v2

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .registers 15

    const/16 v10, 0xb

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    :try_start_8
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, p2}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "_need_init_"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_33

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v6, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_3c

    :try_start_2a
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_81
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_32} :catch_3c

    :goto_32
    return-void

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v6, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_3c

    goto :goto_32

    :catch_3c
    move-exception v0

    const-string/jumbo v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Transport "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " failed to report name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    if-eqz p1, :cond_7e

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v6, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget-object v9, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    if-eqz p1, :cond_7f

    const/4 v6, 0x1

    :goto_74
    invoke-virtual {v9, v10, v6, v7, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v10, 0x36ee80

    invoke-virtual {v8, v6, v10, v11}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7e
    return-void

    :cond_7f
    move v6, v7

    goto :goto_74

    :catch_81
    move-exception v2

    goto :goto_32
.end method

.method removePackageParticipantsLocked([Ljava/lang/String;I)V
    .registers 8

    if-nez p1, :cond_c

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "removePackageParticipants with null list"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 v2, 0x0

    array-length v3, p1

    :goto_e
    if-ge v2, v3, :cond_33

    aget-object v0, p1, v2

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_30

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/BackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_33
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/backup/BackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v8, "requestBackup"

    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_15

    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_39

    :cond_15
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "No packages named for backup request"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x3e8

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v8, v9}, Lcom/android/server/backup/BackupManagerService;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "No packages are provided for backup"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_47

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_92

    :cond_47
    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Backup requested but e="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, " p="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x7d1

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_8f

    const/16 v14, 0xd

    :goto_83
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v14, v2, v3, v8}, Lcom/android/server/backup/BackupManagerService;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p3

    const/16 v2, -0x7d1

    return v2

    :cond_8f
    const/16 v14, 0xe

    goto :goto_83

    :cond_92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    if-nez v4, :cond_b1

    const/16 v2, -0x3e8

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3, v8, v9}, Lcom/android/server/backup/BackupManagerService;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p3

    const/16 v2, -0x3e8

    return v2

    :cond_b1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p1

    array-length v3, v0

    :goto_bf
    if-ge v2, v3, :cond_11b

    aget-object v17, p1, v2

    const-string/jumbo v8, "@pm@"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d3
    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    :cond_d6
    :try_start_d6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v9, 0x40

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v8, v9}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-nez v8, :cond_105

    const/16 v8, -0x7d1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_f9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d6 .. :try_end_f9} :catch_fa

    goto :goto_d3

    :catch_fa
    move-exception v12

    const/16 v8, -0x7d2

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/android/server/backup/BackupManagerService;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_d3

    :cond_105
    :try_start_105
    invoke-static/range {v16 .. v16}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_113

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    :cond_113
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_105 .. :try_end_11a} :catch_fa

    goto :goto_d3

    :cond_11b
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    move-object/from16 v0, p1

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v3, v2, v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v2, v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x2

    aput-object v3, v2, v8

    const/16 v3, 0xb0c

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :try_start_143
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_146} :catch_16d

    move-result-object v5

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_196

    const/4 v11, 0x1

    :goto_14c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    new-instance v2, Lcom/android/server/backup/BackupManagerService$BackupParams;

    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/backup/BackupManagerService$BackupParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZZ)V

    iput-object v2, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    return v2

    :catch_16d
    move-exception v13

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Transport unavailable while attempting backup: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x3e8

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v2, -0x3e8

    return v2

    :cond_196
    const/4 v11, 0x0

    goto :goto_14c
.end method

.method resetBackupState(Ljava/io/File;)V
    .registers 14

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    :goto_1a
    if-ge v6, v9, :cond_31

    aget-object v5, v8, v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "_need_init_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_5f

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_31
    monitor-exit v7

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_35
    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3c
    if-ge v1, v0, :cond_65

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    if-eqz v4, :cond_62

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_35 .. :try_end_5b} :catchall_5c

    goto :goto_4c

    :catchall_5c
    move-exception v6

    monitor-exit v7

    throw v6

    :catchall_5f
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_65
    monitor-exit v7

    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2e

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Non-system process uid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " attemping install-time restore"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v8

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreAtInstall pkg="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " token="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " restoreSet="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_74

    const/4 v15, 0x1

    :cond_74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    if-nez v4, :cond_88

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "No transport"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    :cond_88
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    if-nez v2, :cond_ad

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Non-restorable state: auto="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    :cond_ad
    if-nez v15, :cond_d9

    :try_start_af
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    new-instance v2, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-direct/range {v2 .. v11}, Lcom/android/server/backup/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;I)V

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    invoke-virtual {v2, v14}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_d9} :catch_ef

    :cond_d9
    :goto_d9
    if-eqz v15, :cond_ee

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Finishing install immediately"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-interface {v2, v0, v3}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_ee
    .catch Landroid/os/RemoteException; {:try_start_e4 .. :try_end_ee} :catch_110

    :cond_ee
    :goto_ee
    return-void

    :catch_ef
    move-exception v13

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to contact transport: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    goto :goto_d9

    :catch_110
    move-exception v12

    goto :goto_ee
.end method

.method restoreWidgetData(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    return-void
.end method

.method scheduleNextFullBackupJob(J)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_49

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;

    iget-wide v10, v7, Lcom/android/server/backup/BackupManagerService$FullBackupEntry;->lastBackup:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v8, v14, v10

    const-wide/32 v14, 0x5265c00

    cmp-long v7, v8, v14

    if-gez v7, :cond_46

    const-wide/32 v14, 0x5265c00

    sub-long v2, v14, v8

    :goto_2e
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    new-instance v6, Lcom/android/server/backup/BackupManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4, v5}, Lcom/android/server/backup/BackupManagerService$4;-><init>(Lcom/android/server/backup/BackupManagerService;J)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/16 v14, 0x9c4

    invoke-virtual {v7, v6, v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_53

    :goto_44
    monitor-exit v12

    return-void

    :cond_46
    const-wide/16 v2, 0x0

    goto :goto_2e

    :cond_49
    :try_start_49
    const-string/jumbo v7, "BackupManagerService"

    const-string/jumbo v13, "Full backup queue empty; not scheduling"

    invoke-static {v7, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_49 .. :try_end_52} :catchall_53

    goto :goto_44

    :catchall_53
    move-exception v7

    monitor-exit v12

    throw v7
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "selectBackupTransport"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_f
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->updateStateForTransport(Ljava/lang/String;)V

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransport() set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v5}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " returning "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_47

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_47
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "selectBackupTransportAsync"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectBackupTransportAsync() called with transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/BackupManagerService$8;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/backup/TransportManager;->ensureTransportReady(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "setAutoRestore"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Auto restore => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_29
    monitor-enter p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_45

    :try_start_2a
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "backup_auto_restore"

    if-eqz p1, :cond_40

    const/4 v2, 0x1

    :goto_36
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mAutoRestore:Z
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_42

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_45

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_40
    const/4 v2, 0x0

    goto :goto_36

    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit p0

    throw v2
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBackupEnabled(Z)V
    .registers 13

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BACKUP"

    const-string/jumbo v8, "setBackupEnabled"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Backup enabled => "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_2a
    iget-boolean v4, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    monitor-enter p0
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_53

    const/4 v6, 0x0

    :try_start_2e
    invoke-static {p1, v6}, Lcom/android/server/backup/BackupManagerService;->writeBackupEnableState(ZI)V

    iput-boolean p1, p0, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_50

    :try_start_33
    monitor-exit p0

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_53

    if-eqz p1, :cond_58

    xor-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_58

    :try_start_3d
    iget-boolean v7, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v7, :cond_58

    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_84

    :cond_4b
    :goto_4b
    :try_start_4b
    monitor-exit v6
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_53

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_50
    move-exception v5

    :try_start_51
    monitor-exit p0

    throw v5
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_53

    :catchall_53
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_58
    if-nez p1, :cond_4b

    :try_start_5a
    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    if-eqz v4, :cond_4b

    iget-boolean v7, p0, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v7, :cond_4b

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7}, Lcom/android/server/backup/TransportManager;->getBoundTransportNames()[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    :goto_6c
    if-ge v5, v7, :cond_77

    aget-object v1, v0, v5

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    :cond_77
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v8, v9, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_83
    .catchall {:try_start_5a .. :try_end_83} :catchall_84

    goto :goto_4b

    :catchall_84
    move-exception v5

    :try_start_85
    monitor-exit v6

    throw v5
    :try_end_87
    .catchall {:try_start_85 .. :try_end_87} :catchall_53
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string/jumbo v20, "android.permission.BACKUP"

    const-string/jumbo v21, "setBackupPassword"

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4b

    const/4 v11, 0x1

    :goto_1e
    const-string/jumbo v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    if-nez v19, :cond_50

    if-eqz v11, :cond_4d

    const-string/jumbo v19, "PBKDF2WithHmacSHA1And8bit"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v19

    :goto_44
    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_50

    const/16 v19, 0x0

    return v19

    :cond_4b
    const/4 v11, 0x0

    goto :goto_1e

    :cond_4d
    const/16 v19, 0x0

    goto :goto_44

    :cond_50
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    const/4 v12, 0x0

    const/4 v14, 0x0

    :try_start_5a
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersionFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_67} :catch_b8
    .catchall {:try_start_5a .. :try_end_67} :catchall_da

    :try_start_67
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_1a7
    .catchall {:try_start_67 .. :try_end_6c} :catchall_19e

    :try_start_6c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordVersion:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_77} :catch_1ab
    .catchall {:try_start_6c .. :try_end_77} :catchall_1a2

    if-eqz v15, :cond_7c

    :try_start_79
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    :cond_7c
    if-eqz v13, :cond_81

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_81} :catch_ad

    :cond_81
    :goto_81
    if-eqz p2, :cond_89

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_104

    :cond_89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_f1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_f1

    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to clear backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :catch_ad
    move-exception v7

    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to close pw version record"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    :catch_b8
    move-exception v7

    :goto_b9
    :try_start_b9
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to write backup pw version; password not changed"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_b9 .. :try_end_c2} :catchall_da

    const/16 v19, 0x0

    if-eqz v14, :cond_c9

    :try_start_c6
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    :cond_c9
    if-eqz v12, :cond_ce

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ce} :catch_cf

    :cond_ce
    :goto_ce
    return v19

    :catch_cf
    move-exception v7

    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    :catchall_da
    move-exception v19

    :goto_db
    if-eqz v14, :cond_e0

    :try_start_dd
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    :cond_e0
    if-eqz v12, :cond_e5

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e5} :catch_e6

    :cond_e5
    :goto_e5
    throw v19

    :catch_e6
    move-exception v7

    const-string/jumbo v20, "BackupManagerService"

    const-string/jumbo v21, "Unable to close pw version record"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e5

    :cond_f1
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B

    const/16 v19, 0x1

    return v19

    :cond_104
    const/16 v19, 0x200

    :try_start_106
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v18

    const-string/jumbo v19, "PBKDF2WithHmacSHA1"

    const/16 v20, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_120} :catch_182

    move-result-object v8

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    :try_start_125
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHashFile:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_134
    .catchall {:try_start_125 .. :try_end_134} :catchall_171

    :try_start_134
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13b
    .catchall {:try_start_134 .. :try_end_13b} :catchall_18f

    :try_start_13b
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_140
    .catchall {:try_start_13b .. :try_end_140} :catchall_193

    :try_start_140
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v10, v8}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/backup/BackupManagerService;->mPasswordHash:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mPasswordSalt:[B
    :try_end_15f
    .catchall {:try_start_140 .. :try_end_15f} :catchall_198

    const/16 v19, 0x1

    if-eqz v10, :cond_166

    :try_start_163
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    :cond_166
    if-eqz v6, :cond_16b

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_16b
    if-eqz v17, :cond_170

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    :cond_170
    return v19

    :catchall_171
    move-exception v19

    :goto_172
    if-eqz v9, :cond_177

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    :cond_177
    if-eqz v5, :cond_17c

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_17c
    if-eqz v16, :cond_181

    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    :cond_181
    throw v19
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_182} :catch_182

    :catch_182
    move-exception v7

    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to set backup password"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    return v19

    :catchall_18f
    move-exception v19

    move-object/from16 v16, v17

    goto :goto_172

    :catchall_193
    move-exception v19

    move-object v5, v6

    move-object/from16 v16, v17

    goto :goto_172

    :catchall_198
    move-exception v19

    move-object v9, v10

    move-object v5, v6

    move-object/from16 v16, v17

    goto :goto_172

    :catchall_19e
    move-exception v19

    move-object v12, v13

    goto/16 :goto_db

    :catchall_1a2
    move-exception v19

    move-object v14, v15

    move-object v12, v13

    goto/16 :goto_db

    :catch_1a7
    move-exception v7

    move-object v12, v13

    goto/16 :goto_b9

    :catch_1ab
    move-exception v7

    move-object v14, v15

    move-object v12, v13

    goto/16 :goto_b9
.end method

.method public setBackupProvisioned(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupProvisioned"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method signalAdbBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$AdbParams;)V
    .registers 5

    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_3
    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p1, Lcom/android/server/backup/BackupManagerService$AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->notifyAll()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method startConfirmationTimeout(ILcom/android/server/backup/BackupManagerService$AdbParams;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method startConfirmationUi(ILjava/lang/String;)Z
    .registers 7

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.backupconfirm"

    const-string/jumbo v3, "com.android.backupconfirm.BackupRestoreConfirmation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "conftoken"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_20
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_20} :catch_22

    const/4 v2, 0x1

    return v2

    :catch_22
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method

.method public tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_24

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.backupconfirm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Lost app trying to shut down"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method waitForCompletion(Lcom/android/server/backup/BackupManagerService$AdbParams;)V
    .registers 5

    iget-object v2, p1, Lcom/android/server/backup/BackupManagerService$AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :goto_3
    :try_start_3
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v1

    if-nez v1, :cond_13

    :try_start_b
    iget-object v1, p1, Lcom/android/server/backup/BackupManagerService$AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public waitUntilOperationComplete(I)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v7

    :goto_7
    :try_start_7
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/BackupManagerService$Operation;

    move-object v3, v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_37

    if-nez v3, :cond_28

    :goto_13
    monitor-exit v7

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    if-eqz v3, :cond_24

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    iget v7, v3, Lcom/android/server/backup/BackupManagerService$Operation;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/backup/BackupManagerService;->getMessageIdForOperationType(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    :cond_24
    if-ne v2, v5, :cond_3a

    move v4, v5

    :goto_27
    return v4

    :cond_28
    :try_start_28
    iget v4, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_37

    if-nez v4, :cond_34

    :try_start_2c
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_31} :catch_32
    .catchall {:try_start_2c .. :try_end_31} :catchall_37

    goto :goto_7

    :catch_32
    move-exception v1

    goto :goto_7

    :cond_34
    :try_start_34
    iget v2, v3, Lcom/android/server/backup/BackupManagerService$Operation;->state:I
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_37

    goto :goto_13

    :catchall_37
    move-exception v4

    monitor-exit v7

    throw v4

    :cond_3a
    move v4, v6

    goto :goto_27
.end method

.method writeRestoreTokens()V
    .registers 8

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_24

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_20
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :goto_23
    return-void

    :cond_24
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ancestral packages:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_62} :catch_63

    goto :goto_53

    :catch_63
    move-exception v1

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method
