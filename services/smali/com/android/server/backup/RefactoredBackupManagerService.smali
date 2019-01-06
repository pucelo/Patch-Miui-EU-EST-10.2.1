.class public Lcom/android/server/backup/RefactoredBackupManagerService;
.super Ljava/lang/Object;
.source "RefactoredBackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/RefactoredBackupManagerService$1;,
        Lcom/android/server/backup/RefactoredBackupManagerService$2;,
        Lcom/android/server/backup/RefactoredBackupManagerService$3;,
        Lcom/android/server/backup/RefactoredBackupManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BACKUP_ENABLE_FILE:Ljava/lang/String; = "backup_enabled"

.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "ANDROID BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x5

.field public static final BACKUP_MANIFEST_FILENAME:Ljava/lang/String; = "_manifest"

.field public static final BACKUP_MANIFEST_VERSION:I = 0x1

.field public static final BACKUP_METADATA_FILENAME:Ljava/lang/String; = "_meta"

.field public static final BACKUP_METADATA_VERSION:I = 0x1

.field public static final BACKUP_WIDGET_METADATA_TOKEN:I = 0x1ffed01

.field private static final BUSY_BACKOFF_FUZZ:I = 0x6ddd00

.field private static final BUSY_BACKOFF_MIN_MILLIS:J = 0x36ee80L

.field private static final COMPRESS_FULL_BACKUPS:Z = true

.field private static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field public static final DEBUG:Z = true

.field public static final DEBUG_BACKUP_TRACE:Z = true

.field public static final DEBUG_SCHEDULING:Z = true

.field private static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field public static final KEY_WIDGET_STATE:Ljava/lang/String; = "\uffed\uffedwidget"

.field private static final MIN_FULL_BACKUP_INTERVAL:J = 0x5265c00L

.field public static final MORE_DEBUG:Z = false

.field private static final OP_ACKNOWLEDGED:I = 0x1

.field public static final OP_PENDING:I = 0x0

.field private static final OP_TIMEOUT:I = -0x1

.field public static final OP_TYPE_BACKUP:I = 0x2

.field public static final OP_TYPE_BACKUP_WAIT:I = 0x0

.field public static final OP_TYPE_RESTORE_WAIT:I = 0x1

.field public static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field public static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field public static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final SCHEDULE_FILE_VERSION:I = 0x1

.field private static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.providers.settings"

.field public static final SHARED_BACKUP_AGENT_PACKAGE:Ljava/lang/String; = "com.android.sharedstoragebackup"

.field public static final TAG:Ljava/lang/String; = "BackupManagerService"

.field public static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field public static final TIMEOUT_FULL_BACKUP_INTERVAL:J = 0x493e0L

.field private static final TIMEOUT_FULL_CONFIRMATION:J = 0xea60L

.field private static final TIMEOUT_INTERVAL:J = 0x2710L

.field public static final TIMEOUT_RESTORE_FINISHED_INTERVAL:J = 0x7530L

.field public static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L

.field public static final TIMEOUT_SHARED_BACKUP_INTERVAL:J = 0x1b7740L

.field private static final TRANSPORT_RETRY_INTERVAL:J = 0x36ee80L

.field static sInstance:Lcom/android/server/backup/Trampoline;


# instance fields
.field private mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAncestralToken:J

.field private mAutoRestore:Z

.field private mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

.field private mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field private final mBackupParticipants:Landroid/util/SparseArray;
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

.field private final mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

.field private volatile mBackupRunning:Z

.field private final mBackupTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseStateDir:Ljava/io/File;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClearDataLock:Ljava/lang/Object;

.field private volatile mClearingData:Z

.field private mConnectedAgent:Landroid/app/IBackupAgent;

.field private volatile mConnecting:Z

.field private mContext:Landroid/content/Context;

.field private final mCurrentOpLock:Ljava/lang/Object;

.field private final mCurrentOperations:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCurrentOpLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentToken:J

.field private mDataDir:Ljava/io/File;

.field private mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field private mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFullBackupQueue:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFullBackupScheduleFile:Ljava/io/File;

.field private mFullBackupScheduleWriter:Ljava/lang/Runnable;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsRestoreInProgress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPendingRestores"
    .end annotation
.end field

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private mJournalDir:Ljava/io/File;

.field private volatile mLastBackupPass:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field private mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingInits:Landroid/util/ArraySet;
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
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProvisioned:Z

.field private mProvisionedObserver:Landroid/database/ContentObserver;

.field private final mQueueLock:Ljava/lang/Object;

.field private final mRng:Ljava/security/SecureRandom;

.field private mRunBackupIntent:Landroid/app/PendingIntent;

.field private mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field private mRunInitIntent:Landroid/app/PendingIntent;

.field private mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field private mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueLock"
    .end annotation
.end field

.field private mStorageManager:Landroid/os/storage/IStorageManager;

.field private mTokenFile:Ljava/io/File;

.field private final mTokenGenerator:Ljava/util/Random;

.field private mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/ArraySet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->backupSettingMigrated(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)Z
    .registers 2

    invoke-static {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->readBackupEnableState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/RefactoredBackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap6(ZI)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeBackupEnableState(ZI)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeFullBackupScheduleAsync()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRng:Ljava/security/SecureRandom;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    new-instance v0, Lcom/android/server/backup/RefactoredBackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/backup/RefactoredBackupManagerService$1;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/backup/RefactoredBackupManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/backup/RefactoredBackupManagerService$2;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

    new-instance v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/backup/RefactoredBackupManagerService$3;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-virtual {p2}, Lcom/android/server/backup/Trampoline;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/Trampoline;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "backup"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/internal/BackupHandler;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_257

    const/4 v0, 0x1

    :goto_f3
    iput-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    const-string/jumbo v0, "backup_auto_restore"

    const/4 v1, 0x1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_25a

    const/4 v0, 0x1

    :goto_100
    iput-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z

    new-instance v0, Lcom/android/server/backup/internal/ProvisionedObserver;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/backup/internal/ProvisionedObserver;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "backup"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_14f

    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELinux restorecon failed on "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14f
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "backup_stage"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v0, Lcom/android/server/backup/BackupPasswordManager;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/backup/BackupPasswordManager;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    new-instance v0, Lcom/android/server/backup/internal/RunBackupReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/internal/RunBackupReceiver;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.app.backup.intent.RUN"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "android.permission.BACKUP"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v7, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/backup/internal/RunInitializeReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/internal/RunInitializeReceiver;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.app.backup.intent.INIT"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v1, "android.permission.BACKUP"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v7, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.app.backup.intent.RUN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v6, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "android.app.backup.intent.INIT"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v4, "pending"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournalDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v4, "fb-schedule"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->initPackageTracking()V

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_1f1
    invoke-direct {p0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_1f4
    .catchall {:try_start_1f1 .. :try_end_1f4} :catchall_25d

    monitor-exit v0

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/SystemConfig;->getBackupTransportWhitelist()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "backup_transport"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20f

    const/4 v11, 0x0

    :cond_20f
    move-object v3, v11

    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Starting with transport "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/backup/TransportManager;

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/backup/TransportManager;-><init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Lcom/android/server/backup/TransportManager$TransportBoundListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->registerAllTransports()V

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v1, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak;

    const/4 v4, 0x1

    invoke-direct {v1, v4, p0}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "*backup*"

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-void

    :cond_257
    const/4 v0, 0x0

    goto/16 :goto_f3

    :cond_25a
    const/4 v0, 0x0

    goto/16 :goto_100

    :catchall_25d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private addPackageParticipantsLocked([Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_13

    const/4 v2, 0x0

    array-length v3, p1

    :goto_9
    if-ge v2, v3, :cond_16

    aget-object v0, p1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    invoke-direct {p0, v2, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    :cond_16
    return-void
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

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    if-nez v3, :cond_32

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_32
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x10

    invoke-virtual {v5, v7, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_47
    return-void
.end method

.method private allAgentPackages()Ljava/util/List;
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

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

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

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

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
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_36
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    new-instance v0, Lcom/android/server/backup/internal/BackupRequest;

    invoke-direct {v0, p1}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4c

    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_53

    :cond_4c
    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    return-void

    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 6
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

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_17
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_25

    monitor-exit v1

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_28
    const-string/jumbo v0, "@pm@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "@pm@"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0

    :cond_3f
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_42
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_4a

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private dequeueFullBackupLocked(Ljava/lang/String;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_8
    if-ltz v2, :cond_22

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v3, v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_22
    return-void
.end method

.method private dumpAgents(Ljava/io/PrintWriter;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->allAgentPackages()Ljava/util/List;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v28, v0

    monitor-enter v28

    :try_start_7
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Backup Manager is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

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

    iget-boolean v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

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

    iget-boolean v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z

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

    iget-boolean v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupRunning:Z

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

    iget-wide v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mLastBackupPass:J

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

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

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2ae

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->listAllTransports()[Ljava/lang/String;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v22

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_310
    .catchall {:try_start_274 .. :try_end_310} :catchall_147

    :try_start_310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_363

    const-string/jumbo v26, "Most recent backup trace:"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

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

    iget-wide v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

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

    iget-wide v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v26, v0

    if-eqz v26, :cond_482

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

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

    check-cast v16, Lcom/android/server/backup/internal/BackupRequest;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

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

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_569
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5a0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    const-string/jumbo v26, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v26, " : "

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v9, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

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

    sget-object v0, Lcom/android/server/backup/RefactoredBackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

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

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initPackageTracking()V
    .registers 28

    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v23, v0

    const-string/jumbo v24, "ancestral"

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenFile:Ljava/io/File;

    const/16 v23, 0x0

    const/16 v19, 0x0

    :try_start_18
    new-instance v20, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v24, "r"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_2c} :catch_115
    .catchall {:try_start_18 .. :try_end_2c} :catchall_26d

    :try_start_2c
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_72

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    if-ltz v12, :cond_72

    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    const/4 v9, 0x0

    :goto_5e
    if-ge v9, v12, :cond_72

    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_6f} :catch_275
    .catchall {:try_start_2c .. :try_end_6f} :catchall_270

    add-int/lit8 v9, v9, 0x1

    goto :goto_5e

    :cond_72
    if-eqz v20, :cond_77

    :try_start_74
    invoke-virtual/range {v20 .. v20}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_77} :catch_10e
    .catch Ljava/io/FileNotFoundException; {:try_start_74 .. :try_end_77} :catch_7a
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_268

    :cond_77
    :goto_77
    if-eqz v23, :cond_111

    :try_start_79
    throw v23
    :try_end_7a
    .catch Ljava/io/FileNotFoundException; {:try_start_79 .. :try_end_7a} :catch_7a
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7a} :catch_268

    :catch_7a
    move-exception v8

    move-object/from16 v19, v20

    :goto_7d
    const-string/jumbo v22, "BackupManagerService"

    const-string/jumbo v23, "No ancestral data"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_86
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v23, v0

    const-string/jumbo v24, "processed"

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v23, "processed.new"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_b7

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    :cond_b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_1a4

    const/16 v23, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    :try_start_c8
    new-instance v17, Ljava/io/RandomAccessFile;

    const-string/jumbo v22, "rws"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_d6} :catch_14a
    .catchall {:try_start_c8 .. :try_end_d6} :catchall_24f

    :try_start_d6
    new-instance v11, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v22, v0

    const-string/jumbo v24, "r"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_e8} :catch_25d
    .catchall {:try_start_d6 .. :try_end_e8} :catchall_252

    :goto_e8
    :try_start_e8
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_eb} :catch_262
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_257

    move-result-object v13

    :try_start_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_10b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ec .. :try_end_10b} :catch_10c
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_10b} :catch_262
    .catchall {:try_start_ec .. :try_end_10b} :catchall_257

    goto :goto_e8

    :catch_10c
    move-exception v4

    goto :goto_e8

    :catch_10e
    move-exception v23

    goto/16 :goto_77

    :cond_111
    move-object/from16 v19, v20

    goto/16 :goto_86

    :catch_115
    move-exception v22

    :goto_116
    :try_start_116
    throw v22
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_117

    :catchall_117
    move-exception v23

    move-object/from16 v26, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v26

    :goto_11e
    if-eqz v19, :cond_123

    :try_start_120
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_123
    .catch Ljava/lang/Throwable; {:try_start_120 .. :try_end_123} :catch_129
    .catch Ljava/io/FileNotFoundException; {:try_start_120 .. :try_end_123} :catch_126
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_139

    :cond_123
    :goto_123
    if-eqz v23, :cond_149

    :try_start_125
    throw v23

    :catch_126
    move-exception v8

    goto/16 :goto_7d

    :catch_129
    move-exception v24

    if-nez v23, :cond_12f

    move-object/from16 v23, v24

    goto :goto_123

    :cond_12f
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_123

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_138
    .catch Ljava/io/FileNotFoundException; {:try_start_125 .. :try_end_138} :catch_126
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_138} :catch_139

    goto :goto_123

    :catch_139
    move-exception v6

    :goto_13a
    const-string/jumbo v22, "BackupManagerService"

    const-string/jumbo v23, "Unable to read token file"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_86

    :cond_149
    :try_start_149
    throw v22
    :try_end_14a
    .catch Ljava/io/FileNotFoundException; {:try_start_149 .. :try_end_14a} :catch_126
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14a} :catch_139

    :catch_14a
    move-exception v22

    :goto_14b
    :try_start_14b
    throw v22
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14c

    :catchall_14c
    move-exception v23

    move-object/from16 v26, v23

    move-object/from16 v23, v22

    move-object/from16 v22, v26

    :goto_153
    if-eqz v10, :cond_158

    :try_start_155
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_158} :catch_217
    .catch Ljava/io/EOFException; {:try_start_155 .. :try_end_158} :catch_164
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_23c

    :cond_158
    move-object/from16 v24, v23

    :cond_15a
    :goto_15a
    if-eqz v16, :cond_15f

    :try_start_15c
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15f
    .catch Ljava/lang/Throwable; {:try_start_15c .. :try_end_15f} :catch_227
    .catch Ljava/io/EOFException; {:try_start_15c .. :try_end_15f} :catch_164
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_15f} :catch_23c

    :cond_15f
    move-object/from16 v23, v24

    :cond_161
    :goto_161
    if-eqz v23, :cond_23b

    :try_start_163
    throw v23
    :try_end_164
    .catch Ljava/io/EOFException; {:try_start_163 .. :try_end_164} :catch_164
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_164} :catch_23c

    :catch_164
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v22

    if-nez v22, :cond_1a4

    const-string/jumbo v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Error renaming "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a4
    :goto_1a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23

    :try_start_1ab
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->readFullBackupSchedule()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;
    :try_end_1b5
    .catchall {:try_start_1ab .. :try_end_1b5} :catchall_24c

    monitor-exit v23

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v22, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v22, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v22, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v22, "package"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v22, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v22, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :catch_217
    move-exception v24

    if-eqz v23, :cond_15a

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_158

    :try_start_220
    invoke-virtual/range {v23 .. v24}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v24, v23

    goto/16 :goto_15a

    :catch_227
    move-exception v23

    if-eqz v24, :cond_161

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_15f

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v23, v24

    goto/16 :goto_161

    :cond_23b
    throw v22
    :try_end_23c
    .catch Ljava/io/EOFException; {:try_start_220 .. :try_end_23c} :catch_164
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_23c} :catch_23c

    :catch_23c
    move-exception v6

    const-string/jumbo v22, "BackupManagerService"

    const-string/jumbo v23, "Error in processed file"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a4

    :catchall_24c
    move-exception v22

    monitor-exit v23

    throw v22

    :catchall_24f
    move-exception v22

    goto/16 :goto_153

    :catchall_252
    move-exception v22

    move-object/from16 v16, v17

    goto/16 :goto_153

    :catchall_257
    move-exception v22

    move-object v10, v11

    move-object/from16 v16, v17

    goto/16 :goto_153

    :catch_25d
    move-exception v22

    move-object/from16 v16, v17

    goto/16 :goto_14b

    :catch_262
    move-exception v22

    move-object v10, v11

    move-object/from16 v16, v17

    goto/16 :goto_14b

    :catch_268
    move-exception v6

    move-object/from16 v19, v20

    goto/16 :goto_13a

    :catchall_26d
    move-exception v22

    goto/16 :goto_11e

    :catchall_270
    move-exception v22

    move-object/from16 v19, v20

    goto/16 :goto_11e

    :catch_275
    move-exception v22

    move-object/from16 v19, v20

    goto/16 :goto_116
.end method

.method private parseLeftoverJournals()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v4}, Lcom/android/server/backup/DataChangedJournal;->listJournals(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/DataChangedJournal;

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v1, v4}, Lcom/android/server/backup/DataChangedJournal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :try_start_1e
    new-instance v4, Lcom/android/server/backup/-$Lambda$HVG81oAnYYGYP1QjJ-JXVZWHuJs;

    invoke-direct {v4, p0}, Lcom/android/server/backup/-$Lambda$HVG81oAnYYGYP1QjJ-JXVZWHuJs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/android/server/backup/DataChangedJournal;->forEach(Lcom/android/server/backup/DataChangedJournal$Consumer;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_26} :catch_27

    goto :goto_a

    :catch_27
    move-exception v0

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_43
    return-void
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
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/backup/fullbackup/FullBackupEntry;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/PackageManagerBackupAgent;->getStorableApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_9d

    const/16 v29, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    :try_start_1f
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_2c} :catch_2ce
    .catchall {:try_start_1f .. :try_end_2c} :catchall_2b2

    :try_start_2c
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-direct {v9, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_31} :catch_2d1
    .catchall {:try_start_2c .. :try_end_31} :catchall_2b5

    :try_start_31
    new-instance v18, Ljava/io/DataInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_38} :catch_2d5
    .catchall {:try_start_31 .. :try_end_38} :catchall_2b9

    :try_start_38
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_10a

    const-string/jumbo v28, "BackupManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Unknown backup schedule version "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_66} :catch_2da
    .catchall {:try_start_38 .. :try_end_66} :catchall_2be

    const/16 v30, 0x0

    if-eqz v18, :cond_6d

    :try_start_6a
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_80

    :cond_6d
    move-object/from16 v28, v29

    :goto_6f
    if-eqz v9, :cond_74

    :try_start_71
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_80

    :cond_74
    move-object/from16 v29, v28

    :cond_76
    :goto_76
    if-eqz v15, :cond_7b

    :try_start_78
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_80

    :cond_7b
    move-object/from16 v28, v29

    :cond_7d
    :goto_7d
    if-eqz v28, :cond_109

    :try_start_7f
    throw v28
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_80} :catch_80

    :catch_80
    move-exception v12

    move-object/from16 v17, v18

    move-object v8, v9

    move-object v14, v15

    :goto_85
    const-string/jumbo v28, "BackupManagerService"

    const-string/jumbo v29, "Unable to read backup schedule"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleFile:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    const/16 v25, 0x0

    :cond_9d
    :goto_9d
    if-nez v25, :cond_2ac

    const/4 v10, 0x1

    new-instance v25, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_b1
    :goto_b1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2ac

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/PackageInfo;

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_b1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    if-eqz v28, :cond_b1

    new-instance v28, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x0

    invoke-direct/range {v28 .. v31}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    :catch_e4
    move-exception v28

    goto :goto_6f

    :catch_e6
    move-exception v29

    if-eqz v28, :cond_76

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_74

    :try_start_ef
    invoke-virtual/range {v28 .. v29}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v29, v28

    goto :goto_76

    :catch_f5
    move-exception v28

    if-eqz v29, :cond_7d

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_7b

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_105} :catch_80

    move-object/from16 v28, v29

    goto/16 :goto_7d

    :cond_109
    return-object v30

    :cond_10a
    :try_start_10a
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_115
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_115} :catch_2da
    .catchall {:try_start_10a .. :try_end_115} :catchall_2be

    :try_start_115
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v4}, Ljava/util/HashSet;-><init>(I)V

    const/16 v16, 0x0

    :goto_11c
    move/from16 v0, v16

    if-ge v0, v4, :cond_1e3

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v22

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_12d
    .catch Ljava/lang/Throwable; {:try_start_115 .. :try_end_12d} :catch_1bb
    .catchall {:try_start_115 .. :try_end_12d} :catchall_2c5

    :try_start_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v28, v0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_166

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    if-eqz v28, :cond_166

    new-instance v28, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_163
    add-int/lit8 v16, v16, 0x1

    goto :goto_11c

    :cond_166
    const-string/jumbo v28, "BackupManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Package "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " no longer eligible for full backup"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12d .. :try_end_18f} :catch_190
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_18f} :catch_1bb
    .catchall {:try_start_12d .. :try_end_18f} :catchall_2c5

    goto :goto_163

    :catch_190
    move-exception v11

    :try_start_191
    const-string/jumbo v28, "BackupManagerService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "Package "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " not installed; dropping from full backup"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ba
    .catch Ljava/lang/Throwable; {:try_start_191 .. :try_end_1ba} :catch_1bb
    .catchall {:try_start_191 .. :try_end_1ba} :catchall_2c5

    goto :goto_163

    :catch_1bb
    move-exception v28

    move-object/from16 v17, v18

    move-object v8, v9

    move-object v14, v15

    move-object/from16 v25, v26

    :goto_1c2
    :try_start_1c2
    throw v28
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c3

    :catchall_1c3
    move-exception v29

    move-object/from16 v34, v29

    move-object/from16 v29, v28

    move-object/from16 v28, v34

    :goto_1ca
    if-eqz v17, :cond_1cf

    :try_start_1cc
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V
    :try_end_1cf
    .catch Ljava/lang/Throwable; {:try_start_1cc .. :try_end_1cf} :catch_275
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1cf} :catch_1e0

    :cond_1cf
    :goto_1cf
    if-eqz v8, :cond_1d4

    :try_start_1d1
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1d4
    .catch Ljava/lang/Throwable; {:try_start_1d1 .. :try_end_1d4} :catch_287
    .catch Ljava/lang/Exception; {:try_start_1d1 .. :try_end_1d4} :catch_1e0

    :cond_1d4
    move-object/from16 v30, v29

    :cond_1d6
    :goto_1d6
    if-eqz v14, :cond_1db

    :try_start_1d8
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_1db
    .catch Ljava/lang/Throwable; {:try_start_1d8 .. :try_end_1db} :catch_297
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1db} :catch_1e0

    :cond_1db
    move-object/from16 v29, v30

    :cond_1dd
    :goto_1dd
    if-eqz v29, :cond_2ab

    :try_start_1df
    throw v29
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e0} :catch_1e0

    :catch_1e0
    move-exception v12

    goto/16 :goto_85

    :cond_1e3
    :try_start_1e3
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e7
    :goto_1e7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_229

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    invoke-static {v5}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v28

    if-eqz v28, :cond_1e7

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v28

    if-eqz v28, :cond_1e7

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1e7

    new-instance v28, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    const-wide/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    goto :goto_1e7

    :cond_229
    invoke-static/range {v26 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_22c
    .catch Ljava/lang/Throwable; {:try_start_1e3 .. :try_end_22c} :catch_1bb
    .catchall {:try_start_1e3 .. :try_end_22c} :catchall_2c5

    if-eqz v18, :cond_231

    :try_start_22e
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V
    :try_end_231
    .catch Ljava/lang/Throwable; {:try_start_22e .. :try_end_231} :catch_24d
    .catch Ljava/lang/Exception; {:try_start_22e .. :try_end_231} :catch_244

    :cond_231
    move-object/from16 v28, v29

    :goto_233
    if-eqz v9, :cond_238

    :try_start_235
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V
    :try_end_238
    .catch Ljava/lang/Throwable; {:try_start_235 .. :try_end_238} :catch_24f
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_238} :catch_244

    :cond_238
    move-object/from16 v29, v28

    :cond_23a
    :goto_23a
    if-eqz v15, :cond_23f

    :try_start_23c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_23f
    .catch Ljava/lang/Throwable; {:try_start_23c .. :try_end_23f} :catch_25e
    .catch Ljava/lang/Exception; {:try_start_23c .. :try_end_23f} :catch_244

    :cond_23f
    move-object/from16 v28, v29

    :cond_241
    :goto_241
    if-eqz v28, :cond_271

    :try_start_243
    throw v28

    :catch_244
    move-exception v12

    move-object/from16 v17, v18

    move-object v8, v9

    move-object v14, v15

    move-object/from16 v25, v26

    goto/16 :goto_85

    :catch_24d
    move-exception v28

    goto :goto_233

    :catch_24f
    move-exception v29

    if-eqz v28, :cond_23a

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_238

    invoke-virtual/range {v28 .. v29}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v29, v28

    goto :goto_23a

    :catch_25e
    move-exception v28

    if-eqz v29, :cond_241

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_23f

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_26e} :catch_244

    move-object/from16 v28, v29

    goto :goto_241

    :cond_271
    move-object/from16 v25, v26

    goto/16 :goto_9d

    :catch_275
    move-exception v30

    if-nez v29, :cond_27c

    move-object/from16 v29, v30

    goto/16 :goto_1cf

    :cond_27c
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_1cf

    :try_start_282
    invoke-virtual/range {v29 .. v30}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1cf

    :catch_287
    move-exception v30

    if-eqz v29, :cond_1d6

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_1d4

    invoke-virtual/range {v29 .. v30}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v30, v29

    goto/16 :goto_1d6

    :catch_297
    move-exception v29

    if-eqz v30, :cond_1dd

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_1db

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object/from16 v29, v30

    goto/16 :goto_1dd

    :cond_2ab
    throw v28
    :try_end_2ac
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_2ac} :catch_1e0

    :cond_2ac
    if-eqz v10, :cond_2b1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeFullBackupScheduleAsync()V

    :cond_2b1
    return-object v25

    :catchall_2b2
    move-exception v28

    goto/16 :goto_1ca

    :catchall_2b5
    move-exception v28

    move-object v14, v15

    goto/16 :goto_1ca

    :catchall_2b9
    move-exception v28

    move-object v8, v9

    move-object v14, v15

    goto/16 :goto_1ca

    :catchall_2be
    move-exception v28

    move-object/from16 v17, v18

    move-object v8, v9

    move-object v14, v15

    goto/16 :goto_1ca

    :catchall_2c5
    move-exception v28

    move-object/from16 v17, v18

    move-object v8, v9

    move-object v14, v15

    move-object/from16 v25, v26

    goto/16 :goto_1ca

    :catch_2ce
    move-exception v28

    goto/16 :goto_1c2

    :catch_2d1
    move-exception v28

    move-object v14, v15

    goto/16 :goto_1c2

    :catch_2d5
    move-exception v28

    move-object v8, v9

    move-object v14, v15

    goto/16 :goto_1c2

    :catch_2da
    move-exception v28

    move-object/from16 v17, v18

    move-object v8, v9

    move-object v14, v15

    goto/16 :goto_1c2
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

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method private removePackageParticipantsLocked([Ljava/lang/String;I)V
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

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_30

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-direct {p0, v1, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->removePackageFromSetLocked(Ljava/util/HashSet;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_33
    return-void
.end method

.method private startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private startConfirmationUi(ILjava/lang/String;)Z
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

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

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

.method private waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 5

    iget-object v2, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :goto_3
    :try_start_3
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v1

    if-nez v1, :cond_13

    :try_start_b
    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method private static writeBackupEnableState(ZI)V
    .registers 14

    const/4 v9, 0x0

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

    :try_start_1e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_23} :catch_73
    .catchall {:try_start_1e .. :try_end_23} :catchall_8f

    if-eqz p0, :cond_6d

    const/4 v7, 0x1

    :goto_26
    :try_start_26
    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2f} :catch_96
    .catchall {:try_start_26 .. :try_end_2f} :catchall_92

    if-eqz v4, :cond_34

    :try_start_31
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_6f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_34} :catch_38

    :cond_34
    move-object v7, v9

    :goto_35
    if-eqz v7, :cond_71

    :try_start_37
    throw v7
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_38} :catch_38
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_38} :catch_38

    :catch_38
    move-exception v1

    move-object v3, v4

    :goto_3a
    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to record backup enable state; reverting to disabled: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/backup/RefactoredBackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v7, v7, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "backup_enabled"

    invoke-static {v5, v7, v9, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :goto_6c
    return-void

    :cond_6d
    const/4 v7, 0x0

    goto :goto_26

    :catch_6f
    move-exception v7

    goto :goto_35

    :cond_71
    move-object v3, v4

    goto :goto_6c

    :catch_73
    move-exception v7

    :goto_74
    :try_start_74
    throw v7
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_79
    if-eqz v3, :cond_7e

    :try_start_7b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_83
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_81
    .catch Ljava/lang/RuntimeException; {:try_start_7b .. :try_end_7e} :catch_81

    :cond_7e
    :goto_7e
    if-eqz v8, :cond_8e

    :try_start_80
    throw v8

    :catch_81
    move-exception v1

    goto :goto_3a

    :catch_83
    move-exception v10

    if-nez v8, :cond_88

    move-object v8, v10

    goto :goto_7e

    :cond_88
    if-eq v8, v10, :cond_7e

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7e

    :cond_8e
    throw v7
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8f} :catch_81
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_8f} :catch_81

    :catchall_8f
    move-exception v7

    move-object v8, v9

    goto :goto_79

    :catchall_92
    move-exception v7

    move-object v3, v4

    move-object v8, v9

    goto :goto_79

    :catch_96
    move-exception v7

    move-object v3, v4

    goto :goto_74
.end method

.method private writeFullBackupScheduleAsync()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupScheduleWriter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/backup/DataChangedJournal;->newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    :cond_d
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v1, p1}, Lcom/android/server/backup/DataChangedJournal;->addPackage(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to backup journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    goto :goto_12
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

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BACKUP"

    const-string/jumbo v7, "acknowledgeAdbBackupOrRestore"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_34
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_82

    :try_start_37
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/params/AdbParams;

    if-eqz v1, :cond_87

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v7, 0x9

    invoke-virtual {v5, v7, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz p2, :cond_72

    instance-of v5, v1, Lcom/android/server/backup/params/AdbBackupParams;

    if-eqz v5, :cond_6f

    const/4 v4, 0x2

    :goto_54
    iput-object p5, v1, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iput-object p3, v1, Lcom/android/server/backup/params/AdbParams;->curPassword:Ljava/lang/String;

    iput-object p4, v1, Lcom/android/server/backup/params/AdbParams;->encryptPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v4, v1}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6a
    .catchall {:try_start_37 .. :try_end_6a} :catchall_7f

    :goto_6a
    :try_start_6a
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_82

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6f
    const/16 v4, 0xa

    goto :goto_54

    :cond_72
    :try_start_72
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "User rejected full backup/restore operation"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_7f

    goto :goto_6a

    :catchall_7f
    move-exception v5

    :try_start_80
    monitor-exit v6

    throw v5
    :try_end_82
    .catchall {:try_start_80 .. :try_end_82} :catchall_82

    :catchall_82
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_87
    :try_start_87
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v7, "Attempted to ack full backup/restore with invalid token"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_7f

    goto :goto_6a
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .registers 29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "adbBackup"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    if-eqz v13, :cond_1c

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
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->deviceIsProvisioned()Z

    move-result v3

    if-nez v3, :cond_73

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Backup not supported before setup"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_158

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
    move-exception v14

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

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

    new-instance v2, Lcom/android/server/backup/params/AdbBackupParams;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/android/server/backup/params/AdbBackupParams;-><init>(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_108
    .catchall {:try_start_73 .. :try_end_108} :catchall_158

    :try_start_108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v15, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_10f
    .catchall {:try_start_108 .. :try_end_10f} :catchall_155

    :try_start_10f
    monitor-exit v4

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Starting backup confirmation UI, token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "fullback"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_189

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Unable to launch backup confirmation UI"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v3, v15}, Landroid/util/SparseArray;->delete(I)V
    :try_end_145
    .catchall {:try_start_10f .. :try_end_145} :catchall_158

    :try_start_145
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_169

    :goto_148
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Adb backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_155
    move-exception v3

    :try_start_156
    monitor-exit v4

    throw v3
    :try_end_158
    .catchall {:try_start_156 .. :try_end_158} :catchall_158

    :catchall_158
    move-exception v3

    :try_start_159
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_1d9

    :goto_15c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Adb backup processing complete."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v3

    :catch_169
    move-exception v14

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_148

    :cond_189
    :try_start_189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/os/PowerManager;->userActivity(JII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Waiting for backup completion..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_1a9
    .catchall {:try_start_189 .. :try_end_1a9} :catchall_158

    :try_start_1a9
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1ac} :catch_1b9

    :goto_1ac
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Adb backup processing complete."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1b9
    move-exception v14

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IO error closing output for adb backup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ac

    :catch_1d9
    move-exception v14

    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IO error closing output for adb backup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 13

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->deviceIsProvisioned()Z

    move-result v6

    if-nez v6, :cond_59

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Full restore not permitted before setup"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_b8

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

    new-instance v4, Lcom/android/server/backup/params/AdbRestoreParams;

    invoke-direct {v4, p1}, Lcom/android/server/backup/params/AdbRestoreParams;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_b8

    :try_start_6e
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_6e .. :try_end_73} :catchall_b5

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

    invoke-direct {p0, v5, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e5

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Unable to launch restore confirmation"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->delete(I)V
    :try_end_a5
    .catchall {:try_start_73 .. :try_end_a5} :catchall_b8

    :try_start_a5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_c9

    :goto_a8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "adb restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_b5
    move-exception v6

    :try_start_b6
    monitor-exit v7

    throw v6
    :try_end_b8
    .catchall {:try_start_b6 .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception v6

    :try_start_b9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_12b

    :goto_bc
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v7, "BackupManagerService"

    const-string/jumbo v8, "adb restore processing complete."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v6

    :catch_c9
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

    goto :goto_a8

    :cond_e5
    :try_start_e5
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v7, v10}, Landroid/os/PowerManager;->userActivity(JII)V

    invoke-direct {p0, v5, v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->startConfirmationTimeout(ILcom/android/server/backup/params/AdbParams;)V

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "Waiting for restore completion..."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->waitForCompletion(Lcom/android/server/backup/params/AdbParams;)V
    :try_end_ff
    .catchall {:try_start_e5 .. :try_end_ff} :catchall_b8

    :try_start_ff
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_10f

    :goto_102
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v6, "BackupManagerService"

    const-string/jumbo v7, "adb restore processing complete."

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_10f
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

    goto :goto_102

    :catch_12b
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

    goto/16 :goto_bc
.end method

.method public addBackupTrace(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

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

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    :goto_39
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

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

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_18

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    :goto_11
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

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

.method public backupNow()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "backupNow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v2, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_25

    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Not running backup while in battery save mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    :goto_24
    return-void

    :cond_25
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Scheduling immediate backup pass"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_31
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_36
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_31 .. :try_end_36} :catch_3d
    .catchall {:try_start_31 .. :try_end_36} :catchall_48

    :goto_36
    :try_start_36
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

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

.method public backupPasswordMatches(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .registers 34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const/16 v16, 0x0

    const-wide/32 v18, 0x5265c00

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_19

    :cond_17
    const/4 v2, 0x0

    return v2

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

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

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v6, 0xdbba00

    invoke-static {v2, v6, v7}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    const/4 v2, 0x0

    return v2

    :cond_3d
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Beginning scheduled full backup operation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v29, v0

    monitor-enter v29

    :try_start_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

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

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

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

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/RefactoredBackupManagerService$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService$5;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;J)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_a4
    .catchall {:try_start_61 .. :try_end_a4} :catchall_1e0

    const/4 v2, 0x0

    monitor-exit v29

    return v2

    :cond_a7
    const/16 v17, 0x0

    :try_start_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

    move-result v2

    if-nez v2, :cond_be

    const/16 v27, 0x0

    const-wide/32 v18, 0xdbba00

    :cond_be
    if-eqz v27, :cond_105

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
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

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-nez v2, :cond_109

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

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

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

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

    iget-object v4, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenGenerator:Ljava/util/Random;

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

    iget-object v4, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

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

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const-wide/32 v6, 0x5265c00

    sub-long v6, v20, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
    :try_end_187
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e8 .. :try_end_187} :catch_189
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_187} :catch_1e3
    .catchall {:try_start_e8 .. :try_end_187} :catchall_1e0

    goto/16 :goto_105

    :catch_189
    move-exception v22

    :try_start_18a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

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

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v5, v3

    new-instance v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

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

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_44

    const/4 v0, 0x0

    :try_start_32
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

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

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "beginRestoreSession"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    monitor-enter p0

    :try_start_52
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

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
    iget-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupRunning:Z

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
    new-instance v3, Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/restore/ActiveRestoreSession;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_c7
    .catchall {:try_start_b6 .. :try_end_c7} :catchall_cb

    monitor-exit p0

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v3

    :catchall_cb
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 15

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v3, 0x1

    :try_start_5
    iput-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_bb

    :try_start_a
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

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
    iget-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    if-eqz v3, :cond_7b

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v3, :cond_7b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_42} :catch_71
    .catchall {:try_start_a .. :try_end_42} :catchall_bb

    move-result-wide v8

    cmp-long v3, v8, v4

    if-gez v3, :cond_7b

    :try_start_47
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

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

    iput-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
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
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3}, Landroid/app/IActivityManager;->clearPendingBackup()V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7a} :catch_be

    :cond_7a
    :goto_7a
    return-object v0

    :cond_7b
    :try_start_7b
    iget-boolean v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnecting:Z

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

    iput-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    :cond_9c
    const-string/jumbo v3, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "got agent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
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

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.BACKUP"

    const-string/jumbo v10, "cancelBackups"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_57

    const/4 v0, 0x0

    :goto_18
    :try_start_18
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_3d

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/Operation;

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget v8, v1, Lcom/android/server/backup/internal/Operation;->type:I

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

    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->handleCancel(IZ)V
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
    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;J)V

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-wide/32 v10, 0x6ddd00

    invoke-static {v8, v10, v11}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V
    :try_end_6f
    .catchall {:try_start_5d .. :try_end_6f} :catchall_57

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public clearApplicationDataSynchronous(Ljava/lang/String;)V
    .registers 16

    :try_start_0
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

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
    new-instance v4, Lcom/android/server/backup/internal/ClearDataObserver;

    invoke-direct {v4, p0}, Lcom/android/server/backup/internal/ClearDataObserver;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v5, 0x1

    :try_start_3c
    iput-boolean v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_65

    :try_start_3e
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

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
    iget-boolean v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z

    if-eqz v5, :cond_68

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_65

    move-result-wide v10

    cmp-long v5, v10, v6

    if-gez v5, :cond_68

    :try_start_58
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearDataLock:Ljava/lang/Object;

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
    iput-boolean v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z
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
    .registers 15

    const/16 v11, 0xc

    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "clearBackupData() of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_27
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x40

    invoke-virtual {v7, p2, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_2e} :catch_7c

    move-result-object v2

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9f

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    :goto_4f
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v7, v11}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_5d
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7, p1}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6

    if-nez v6, :cond_a6

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v9, Lcom/android/server/backup/params/ClearRetryParams;

    invoke-direct {v9, p1, p2}, Lcom/android/server/backup/params/ClearRetryParams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xc

    invoke-virtual {v7, v10, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/32 v10, 0x36ee80

    invoke-virtual {v7, v3, v10, v11}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_7a
    .catchall {:try_start_5d .. :try_end_7a} :catchall_c5

    monitor-exit v8

    return-void

    :catch_7c
    move-exception v1

    const-string/jumbo v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No such package \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' - not clearing backup data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9f
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {v7}, Lcom/android/server/backup/utils/SparseArrayUtils;->union(Landroid/util/SparseArray;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_4f

    :cond_a6
    :try_start_a6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v9, Lcom/android/server/backup/params/ClearParams;

    invoke-direct {v9, v6, v2}, Lcom/android/server/backup/params/ClearParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    const/4 v10, 0x4

    invoke-virtual {v7, v10, v9}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v7, v3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c3
    .catchall {:try_start_a6 .. :try_end_c3} :catchall_c5

    monitor-exit v8

    :cond_c4
    return-void

    :catchall_c5
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public clearBackupTrace()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupTrace:Ljava/util/List;

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

.method public clearPendingInits()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

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

    iput-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V
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
    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

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
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/RefactoredBackupManagerService$6;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/backup/RefactoredBackupManagerService$6;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dataChangedImpl(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method public deviceIsEncrypted()Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3}, Landroid/os/storage/IStorageManager;->getEncryptionState()I

    move-result v3

    if-eq v3, v1, :cond_15

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mStorageManager:Landroid/os/storage/IStorageManager;

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

.method public deviceIsProvisioned()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

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

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

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

    invoke-direct {p0, p2}, Lcom/android/server/backup/RefactoredBackupManagerService;->dumpAgents(Ljava/io/PrintWriter;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_51

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_4a
    :try_start_4a
    invoke-direct {p0, p2}, Lcom/android/server/backup/RefactoredBackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
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

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v0, :cond_16

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v2, "Telling running backup to stop"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->handleCancel(Z)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enqueueFullBackup(Ljava/lang/String;J)V
    .registers 12

    new-instance v1, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/backup/fullbackup/FullBackupEntry;-><init>(Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V

    const/4 v2, -0x1

    const-wide/16 v6, 0x0

    cmp-long v3, p2, v6

    if-lez v3, :cond_31

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1a
    if-ltz v2, :cond_31

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v6, v0, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    cmp-long v3, v6, p2

    if-gtz v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_31
    if-gez v2, :cond_39

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_41

    :cond_39
    monitor-exit v4

    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeFullBackupScheduleAsync()V

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

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

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

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->fullBackupAllowable(Lcom/android/internal/backup/IBackupTransport;)Z

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

    new-instance v2, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v11}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

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

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/backup/RefactoredBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V
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
    .registers 4

    :cond_0
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    move-result v0

    monitor-exit v2

    if-ltz v0, :cond_0

    return v0

    :catchall_d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-object v0
.end method

.method public getActivityManager()Landroid/app/IActivityManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method public getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/params/AdbParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAdbBackupRestoreConfirmations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method public getAncestralPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    return-object v0
.end method

.method public getAncestralToken()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    return-wide v0
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 7

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "getAvailableRestoreToken"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_10
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit v3

    return-wide v0

    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-object v0
.end method

.method public getBackupManagerBinder()Landroid/app/backup/IBackupManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method public getBaseStateDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method public getClearDataLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 9

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "getConfigurationIntent"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

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

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentOpLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentOperations()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/backup/internal/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentToken()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    return-wide v0
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BACKUP"

    const-string/jumbo v3, "getCurrentTransport"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 9

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "getDataManagementIntent"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

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

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "getDataManagementLabel"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

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

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "getDestinationString"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

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

.method public getJournal()Lcom/android/server/backup/DataChangedJournal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-object v0
.end method

.method public getLastBackupPass()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mLastBackupPass:J

    return-wide v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageManagerBinder()Landroid/content/pm/IPackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public getPendingBackups()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPendingInits()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPendingRestores()Ljava/util/Queue;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingRestores:Ljava/util/Queue;

    return-object v0
.end method

.method public getQueueLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getRng()Ljava/security/SecureRandom;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getRunInitIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRunningFullBackupTask()Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-object v0
.end method

.method public getTransportManager()Lcom/android/server/backup/TransportManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .registers 7

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

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

.method public getWakelock()Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public handleCancel(IZ)V
    .registers 10

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/backup/internal/Operation;

    move-object v1, v0

    if-eqz v1, :cond_36

    iget v2, v1, Lcom/android/server/backup/internal/Operation;->state:I

    :goto_12
    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v5, "Operation already got an ack.Should have been removed from mCurrentOperations."

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_67

    monitor-exit v4

    if-eqz v1, :cond_35

    iget-object v3, v1, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v3, :cond_35

    iget-object v3, v1, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-interface {v3, p2}, Lcom/android/server/backup/BackupRestoreTask;->handleCancel(Z)V

    :cond_35
    return-void

    :cond_36
    const/4 v2, -0x1

    goto :goto_12

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

    iput v3, v1, Lcom/android/server/backup/internal/Operation;->state:I

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v5, v1, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V
    :try_end_66
    .catchall {:try_start_3a .. :try_end_66} :catchall_67

    goto :goto_24

    :catchall_67
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public hasBackupPassword()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    return v0
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.BACKUP"

    const-string/jumbo v4, "initializeTransport"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initializeTransport(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_2d
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    new-instance v3, Lcom/android/server/backup/internal/PerformInitializeTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    invoke-virtual {v2, v3}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_40

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_40
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .registers 10

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BACKUP"

    const-string/jumbo v6, "isAppEligibleForBackup"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_2e

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->appIsDisabled(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_2e
    return v7

    :cond_2f
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v4}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_34} :catch_61

    move-result-object v3

    if-eqz v3, :cond_5f

    :try_start_37
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/backup/IBackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3e} :catch_40
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_3e} :catch_61

    move-result v4

    return v4

    :catch_40
    move-exception v1

    :try_start_41
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
    :try_end_5f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_5f} :catch_61

    :cond_5f
    const/4 v4, 0x1

    return v4

    :catch_61
    move-exception v0

    return v7
.end method

.method public isBackupEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isBackupOperationInProgress()Z
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/Operation;

    iget v2, v1, Lcom/android/server/backup/internal/Operation;->type:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_21

    iget v2, v1, Lcom/android/server/backup/internal/Operation;->state:I
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

.method public isBackupRunning()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupRunning:Z

    return v0
.end method

.method public isClearingData()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    return v0
.end method

.method public isProvisioned()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    return v0
.end method

.method public isRestoreInProgress()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mIsRestoreInProgress:Z

    return v0
.end method

.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService_30299()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->parseLeftoverJournals()V

    return-void
.end method

.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService_40916(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Found stale backup journal, scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransportComponents"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getAllTransportCompenents()[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "listAllTransports"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->getBoundTransportNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBackupComplete(Ljava/lang/String;)V
    .registers 13

    const/4 v4, 0x0

    const-string/jumbo v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    return-void

    :cond_b
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v6

    :try_start_e
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_7f

    move-result v3

    if-nez v3, :cond_18

    monitor-exit v6

    return-void

    :cond_18
    const/4 v1, 0x0

    :try_start_19
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    const-string/jumbo v5, "rws"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_23} :catch_64
    .catchall {:try_start_19 .. :try_end_23} :catchall_83

    :try_start_23
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2d} :catch_88
    .catchall {:try_start_23 .. :try_end_2d} :catchall_85

    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_60
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_35
    .catchall {:try_start_2f .. :try_end_32} :catchall_7f

    :cond_32
    :goto_32
    if-eqz v4, :cond_62

    :try_start_34
    throw v4
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_35} :catch_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_7f

    :catch_35
    move-exception v0

    move-object v1, v2

    :goto_37
    :try_start_37
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t log backup of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_7f

    :goto_5e
    monitor-exit v6

    return-void

    :catch_60
    move-exception v4

    goto :goto_32

    :cond_62
    move-object v1, v2

    goto :goto_5e

    :catch_64
    move-exception v3

    :goto_65
    :try_start_65
    throw v3
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    :catchall_66
    move-exception v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_6a
    if-eqz v1, :cond_6f

    :try_start_6c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_74
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_72
    .catchall {:try_start_6c .. :try_end_6f} :catchall_7f

    :cond_6f
    :goto_6f
    if-eqz v4, :cond_82

    :try_start_71
    throw v4

    :catch_72
    move-exception v0

    goto :goto_37

    :catch_74
    move-exception v5

    if-nez v4, :cond_79

    move-object v4, v5

    goto :goto_6f

    :cond_79
    if-eq v4, v5, :cond_6f

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7e} :catch_72
    .catchall {:try_start_71 .. :try_end_7e} :catchall_7f

    goto :goto_6f

    :catchall_7f
    move-exception v3

    monitor-exit v6

    throw v3

    :cond_82
    :try_start_82
    throw v3
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_83} :catch_72
    .catchall {:try_start_82 .. :try_end_83} :catchall_7f

    :catchall_83
    move-exception v3

    goto :goto_6a

    :catchall_85
    move-exception v3

    move-object v1, v2

    goto :goto_6a

    :catch_88
    move-exception v3

    move-object v1, v2

    goto :goto_65
.end method

.method public opComplete(IJ)V
    .registers 12

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_5
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/internal/Operation;

    move-object v3, v0

    if-eqz v3, :cond_1c

    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_40

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1c
    :goto_1c
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_69

    monitor-exit v5

    if-eqz v3, :cond_3f

    iget-object v4, v3, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lcom/android/server/backup/internal/Operation;->callback:Lcom/android/server/backup/BackupRestoreTask;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v1}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v4, v2}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_3f
    return-void

    :cond_40
    :try_start_40
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

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

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

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
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I

    if-nez v4, :cond_1c

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_69

    goto :goto_1c
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
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_32
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p4, p5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-direct {p0, p5}, Lcom/android/server/backup/RefactoredBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4, p4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4d
    .catchall {:try_start_32 .. :try_end_4d} :catchall_4f

    monitor-exit v2

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public randomBytes(I)[B
    .registers 4

    div-int/lit8 v1, p1, 0x8

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public recordInitPendingLocked(ZLjava/lang/String;)V
    .registers 15

    const/16 v10, 0xb

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v6, v10}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    :try_start_8
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v6, p2}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v6, "_need_init_"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_33

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

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

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

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

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingInits:Landroid/util/ArraySet;

    invoke-virtual {v6, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget-object v9, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    if-eqz p1, :cond_7f

    const/4 v6, 0x1

    :goto_74
    invoke-virtual {v9, v10, v6, v7, p2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/32 v10, 0x36ee80

    invoke-virtual {v8, v6, v10, v11}, Lcom/android/server/backup/internal/BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7e
    return-void

    :cond_7f
    move v6, v7

    goto :goto_74

    :catch_81
    move-exception v2

    goto :goto_32
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .registers 14

    const/4 v7, 0x0

    const-string/jumbo v6, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Removing backed-up knowledge of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v9

    :try_start_1e
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v8, "processed.new"

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_d6

    const/4 v1, 0x0

    :try_start_29
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "rws"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_31} :catch_dd
    .catchall {:try_start_29 .. :try_end_31} :catchall_da

    :try_start_31
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_4b} :catch_4c
    .catchall {:try_start_31 .. :try_end_4b} :catchall_b9

    goto :goto_3c

    :catch_4c
    move-exception v6

    move-object v1, v2

    :goto_4e
    :try_start_4e
    throw v6
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_53
    if-eqz v1, :cond_58

    :try_start_55
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_cb
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5b
    .catchall {:try_start_55 .. :try_end_58} :catchall_d6

    :cond_58
    :goto_58
    if-eqz v7, :cond_d9

    :try_start_5a
    throw v7
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5b} :catch_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_d6

    :catch_5b
    move-exception v0

    :goto_5c
    :try_start_5c
    const-string/jumbo v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error rewriting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_85
    .catchall {:try_start_5c .. :try_end_85} :catchall_d6

    :goto_85
    monitor-exit v9

    return-void

    :cond_87
    :try_start_87
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_bc

    new-instance v6, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t rename "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_b9} :catch_4c
    .catchall {:try_start_87 .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception v6

    move-object v1, v2

    goto :goto_53

    :cond_bc
    if-eqz v2, :cond_c1

    :try_start_be
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c1
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_c1} :catch_c7
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c4
    .catchall {:try_start_be .. :try_end_c1} :catchall_d6

    :cond_c1
    :goto_c1
    if-eqz v7, :cond_c9

    :try_start_c3
    throw v7
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c4} :catch_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_d6

    :catch_c4
    move-exception v0

    move-object v1, v2

    goto :goto_5c

    :catch_c7
    move-exception v7

    goto :goto_c1

    :cond_c9
    move-object v1, v2

    goto :goto_85

    :catch_cb
    move-exception v8

    if-nez v7, :cond_d0

    move-object v7, v8

    goto :goto_58

    :cond_d0
    if-eq v7, v8, :cond_58

    :try_start_d2
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_5b
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_d6

    goto :goto_58

    :catchall_d6
    move-exception v6

    monitor-exit v9

    throw v6

    :cond_d9
    :try_start_d9
    throw v6
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_da} :catch_5b
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d6

    :catchall_da
    move-exception v6

    goto/16 :goto_53

    :catch_dd
    move-exception v6

    goto/16 :goto_4e
.end method

.method public removeOperation(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

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
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

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

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;I)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/backup/RefactoredBackupManagerService;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v0

    return v0
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.BACKUP"

    const-string/jumbo v7, "requestBackup"

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_15

    move-object/from16 v0, p1

    array-length v1, v0

    const/4 v6, 0x1

    if-ge v1, v6, :cond_39

    :cond_15
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v6, "No packages named for backup request"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v1, 0x31

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v6, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "No packages are provided for backup"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_39
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    if-eqz v1, :cond_47

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_92

    :cond_47
    const-string/jumbo v1, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Backup requested but e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " p="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x7d1

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    if-eqz v1, :cond_8f

    const/16 v12, 0xd

    :goto_83
    const/4 v1, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v12, v1, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p3

    const/16 v1, -0x7d1

    return v1

    :cond_8f
    const/16 v12, 0xe

    goto :goto_83

    :cond_92
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    if-nez v2, :cond_b1

    const/16 v1, -0x3e8

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v1, 0x32

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v6, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p3

    const/16 v1, -0x3e8

    return v1

    :cond_b1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p1

    array-length v6, v0

    :goto_bf
    if-ge v1, v6, :cond_107

    aget-object v15, p1, v1

    const-string/jumbo v7, "@pm@"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d2

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_cf
    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    :cond_d2
    :try_start_d2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x40

    invoke-virtual {v7, v15, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v7, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-nez v7, :cond_f5

    const/16 v7, -0x7d1

    move-object/from16 v0, p2

    invoke-static {v0, v15, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    :try_end_eb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d2 .. :try_end_eb} :catch_ec

    goto :goto_cf

    :catch_ec
    move-exception v10

    const/16 v7, -0x7d2

    move-object/from16 v0, p2

    invoke-static {v0, v15, v7}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_cf

    :cond_f5
    :try_start_f5
    invoke-static {v14}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_101

    iget-object v7, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    :cond_101
    iget-object v7, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_106
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f5 .. :try_end_106} :catch_ec

    goto :goto_cf

    :cond_107
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v1, v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v1, v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0xb0c

    invoke-static {v6, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :try_start_12f
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_157

    move-result-object v3

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_180

    const/4 v9, 0x1

    :goto_138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/16 v6, 0xf

    invoke-virtual {v1, v6}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v13

    new-instance v1, Lcom/android/server/backup/params/BackupParams;

    const/4 v8, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/params/BackupParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;ZZ)V

    iput-object v1, v13, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v13}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    return v1

    :catch_157
    move-exception v11

    const-string/jumbo v1, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Transport unavailable while attempting backup: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e8

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    const/16 v1, -0x3e8

    return v1

    :cond_180
    const/4 v9, 0x0

    goto :goto_138
.end method

.method public resetBackupState(Ljava/io/File;)V
    .registers 14

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    invoke-virtual {p0}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeRestoreTokens()V

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

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v7

    :try_start_35
    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3c
    if-ge v1, v0, :cond_65

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

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

    invoke-virtual {p0, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
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
    .registers 16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_2e

    const-string/jumbo v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-system process uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " attemping install-time restore"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    const/4 v12, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v6

    const-string/jumbo v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAtInstall pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " restoreSet="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-nez v1, :cond_72

    const/4 v12, 0x1

    :cond_72
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v1}, Lcom/android/server/backup/TransportManager;->getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    if-nez v2, :cond_84

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v4, "No transport"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    :cond_84
    iget-boolean v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z

    if-nez v1, :cond_a5

    const-string/jumbo v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Non-restorable state: auto="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    :cond_a5
    if-nez v12, :cond_c7

    :try_start_a7
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    new-instance v1, Lcom/android/server/backup/params/RestoreParams;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/params/RestoreParams;-><init>(Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLjava/lang/String;I)V

    iput-object v1, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    invoke-virtual {v1, v11}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_c7} :catch_d9

    :cond_c7
    :goto_c7
    if-eqz v12, :cond_d8

    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v4, "Finishing install immediately"

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d2
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    invoke-interface {v1, p2, v4}, Landroid/content/pm/IPackageManager;->finishPackageInstall(IZ)V
    :try_end_d8
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_d8} :catch_fa

    :cond_d8
    :goto_d8
    return-void

    :catch_d9
    move-exception v10

    const-string/jumbo v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to contact transport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    goto :goto_c7

    :catch_fa
    move-exception v0

    goto :goto_d8
.end method

.method public restoreWidgetData(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->restoreWidgetState(Ljava/lang/String;[BI)V

    return-void
.end method

.method public scheduleNextFullBackupJob(J)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_49

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    iget-wide v10, v7, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

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

    new-instance v6, Lcom/android/server/backup/RefactoredBackupManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService$4;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;J)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    const-wide/16 v14, 0x9c4

    invoke-virtual {v7, v6, v14, v15}, Lcom/android/server/backup/internal/BackupHandler;->postDelayed(Ljava/lang/Runnable;J)Z
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

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.BACKUP"

    const-string/jumbo v5, "selectBackupTransport"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_f
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "backup_transport"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "selectBackupTransport() set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

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
    :try_end_4c
    .catchall {:try_start_f .. :try_end_4c} :catchall_50

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_50
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    new-instance v3, Lcom/android/server/backup/RefactoredBackupManagerService$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/backup/RefactoredBackupManagerService$7;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    invoke-virtual {v2, p1, v3}, Lcom/android/server/backup/TransportManager;->ensureTransportReady(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setActiveRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    return-void
.end method

.method public setActivityManager(Landroid/app/IActivityManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-void
.end method

.method public setAlarmManager(Landroid/app/AlarmManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public setAncestralPackages(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    return-void
.end method

.method public setAncestralToken(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    return-void
.end method

.method public setAutoRestore(Z)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "backup_auto_restore"

    if-eqz p1, :cond_40

    const/4 v2, 0x1

    :goto_36
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAutoRestore:Z
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

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

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
    iget-boolean v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    monitor-enter p0
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_53

    const/4 v6, 0x0

    :try_start_2e
    invoke-static {p1, v6}, Lcom/android/server/backup/RefactoredBackupManagerService;->writeBackupEnableState(ZI)V

    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_50

    :try_start_33
    monitor-exit p0

    iget-object v6, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_53

    if-eqz p1, :cond_58

    xor-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_58

    :try_start_3d
    iget-boolean v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    if-eqz v7, :cond_58

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    const-wide/16 v8, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V
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
    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/backup/KeyValueBackupJob;->cancel(Landroid/content/Context;)V

    if-eqz v4, :cond_4b

    iget-boolean v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    if-eqz v7, :cond_4b

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v7}, Lcom/android/server/backup/TransportManager;->getBoundTransportNames()[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    :goto_6c
    if-ge v5, v7, :cond_77

    aget-object v1, v0, v5

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    :cond_77
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

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

.method public setBackupHandler(Lcom/android/server/backup/internal/BackupHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    return-void
.end method

.method public setBackupManagerBinder(Landroid/app/backup/IBackupManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupPasswordManager:Lcom/android/server/backup/BackupPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/BackupPasswordManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBackupProvisioned(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupProvisioned"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBackupRunning(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupRunning:Z

    return-void
.end method

.method public setBaseStateDir(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-void
.end method

.method public setClearingData(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mClearingData:Z

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setCurrentToken(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    return-void
.end method

.method public setDataDir(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mDataDir:Ljava/io/File;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mEnabled:Z

    return-void
.end method

.method public setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    return-void
.end method

.method public setLastBackupPass(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mLastBackupPass:J

    return-void
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public setPackageManagerBinder(Landroid/content/pm/IPackageManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public setPendingBackups(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-void
.end method

.method public setProvisioned(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mProvisioned:Z

    return-void
.end method

.method public setRestoreInProgress(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mIsRestoreInProgress:Z

    return-void
.end method

.method public setRunInitIntent(Landroid/app/PendingIntent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setRunningFullBackupTask(Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    return-void
.end method

.method public setWakelock(Landroid/os/PowerManager$WakeLock;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V
    .registers 5

    iget-object v1, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_3
    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p1, Lcom/android/server/backup/params/AdbParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

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

    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

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

.method public waitUntilOperationComplete(I)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v7

    :goto_7
    :try_start_7
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/backup/internal/Operation;

    move-object v3, v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_37

    if-nez v3, :cond_28

    :goto_13
    monitor-exit v7

    invoke-virtual {p0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    if-eqz v3, :cond_24

    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mBackupHandler:Lcom/android/server/backup/internal/BackupHandler;

    iget v7, v3, Lcom/android/server/backup/internal/Operation;->type:I

    invoke-direct {p0, v7}, Lcom/android/server/backup/RefactoredBackupManagerService;->getMessageIdForOperationType(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    :cond_24
    if-ne v2, v5, :cond_3a

    move v4, v5

    :goto_27
    return v4

    :cond_28
    :try_start_28
    iget v4, v3, Lcom/android/server/backup/internal/Operation;->state:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_37

    if-nez v4, :cond_34

    :try_start_2c
    iget-object v4, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

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
    iget v2, v3, Lcom/android/server/backup/internal/Operation;->state:I
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

.method public writeRestoreTokens()V
    .registers 12

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mTokenFile:Ljava/io/File;

    const-string/jumbo v7, "rwd"

    invoke-direct {v1, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_c} :catch_9b
    .catchall {:try_start_2 .. :try_end_c} :catchall_96

    const/4 v5, 0x1

    :try_start_d
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-wide v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralToken:J

    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-wide v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mCurrentToken:J

    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v5, :cond_36

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_22} :catch_75
    .catchall {:try_start_d .. :try_end_22} :catchall_98

    :cond_22
    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_86
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_2a

    :cond_27
    :goto_27
    if-eqz v6, :cond_88

    :try_start_29
    throw v6
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v2

    move-object v0, v1

    :goto_2c
    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Unable to write token file:"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    return-void

    :cond_36
    :try_start_36
    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-string/jumbo v5, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ancestral packages:  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/RefactoredBackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_65
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_74} :catch_75
    .catchall {:try_start_36 .. :try_end_74} :catchall_98

    goto :goto_65

    :catch_75
    move-exception v5

    move-object v0, v1

    :goto_77
    :try_start_77
    throw v5
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    :catchall_78
    move-exception v6

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    :goto_7c
    if-eqz v0, :cond_81

    :try_start_7e
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_8a
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_84

    :cond_81
    :goto_81
    if-eqz v6, :cond_95

    :try_start_83
    throw v6

    :catch_84
    move-exception v2

    goto :goto_2c

    :catch_86
    move-exception v6

    goto :goto_27

    :cond_88
    move-object v0, v1

    goto :goto_35

    :catch_8a
    move-exception v7

    if-nez v6, :cond_8f

    move-object v6, v7

    goto :goto_81

    :cond_8f
    if-eq v6, v7, :cond_81

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_81

    :cond_95
    throw v5
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_96} :catch_84

    :catchall_96
    move-exception v5

    goto :goto_7c

    :catchall_98
    move-exception v5

    move-object v0, v1

    goto :goto_7c

    :catch_9b
    move-exception v5

    goto :goto_77
.end method
