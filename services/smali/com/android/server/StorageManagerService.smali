.class Lcom/android/server/StorageManagerService;
.super Landroid/os/storage/IStorageManager$Stub;
.source "StorageManagerService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StorageManagerService$1;,
        Lcom/android/server/StorageManagerService$AppFuseMountScope;,
        Lcom/android/server/StorageManagerService$Callbacks;,
        Lcom/android/server/StorageManagerService$DefaultContainerConnection;,
        Lcom/android/server/StorageManagerService$Lifecycle;,
        Lcom/android/server/StorageManagerService$MountObbAction;,
        Lcom/android/server/StorageManagerService$ObbAction;,
        Lcom/android/server/StorageManagerService$ObbActionHandler;,
        Lcom/android/server/StorageManagerService$ObbState;,
        Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;,
        Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;,
        Lcom/android/server/StorageManagerService$UnmountObbAction;,
        Lcom/android/server/StorageManagerService$VoldResponseCode;
    }
.end annotation


# static fields
.field private static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field private static final ATTR_FORCE_ADOPTABLE:Ljava/lang/String; = "forceAdoptable"

.field private static final ATTR_FS_UUID:Ljava/lang/String; = "fsUuid"

.field private static final ATTR_LAST_BENCH_MILLIS:Ljava/lang/String; = "lastBenchMillis"

.field private static final ATTR_LAST_TRIM_MILLIS:Ljava/lang/String; = "lastTrimMillis"

.field private static final ATTR_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ATTR_PART_GUID:Ljava/lang/String; = "partGuid"

.field private static final ATTR_PRIMARY_STORAGE_UUID:Ljava/lang/String; = "primaryStorageUuid"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_USER_FLAGS:Ljava/lang/String; = "userFlags"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final CRYPTD_TAG:Ljava/lang/String; = "CryptdConnector"

.field private static final CRYPTO_ALGORITHM_KEY_SIZE:I = 0x80

.field public static final CRYPTO_TYPES:[Ljava/lang/String;

.field private static final DEBUG_EVENTS:Z = false

.field private static final DEBUG_OBB:Z = false

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final EMULATE_FBE_SUPPORTED:Z = true

.field private static final H_DAEMON_CONNECTED:I = 0x2

.field private static final H_FSTRIM:I = 0x4

.field private static final H_INTERNAL_BROADCAST:I = 0x7

.field private static final H_PARTITION_FORGET:I = 0x9

.field private static final H_RESET:I = 0xa

.field private static final H_SHUTDOWN:I = 0x3

.field private static final H_SYSTEM_READY:I = 0x1

.field private static final H_VOLUME_BROADCAST:I = 0x6

.field private static final H_VOLUME_MOUNT:I = 0x5

.field private static final H_VOLUME_UNMOUNT:I = 0x8

.field private static final LAST_FSTRIM_FILE:Ljava/lang/String; = "last-fstrim"

.field private static final MAX_CONTAINERS:I = 0xfa

.field private static final MOVE_STATUS_COPY_FINISHED:I = 0x52

.field private static final OBB_FLUSH_MOUNT_STATE:I = 0x5

.field private static final OBB_MCS_BOUND:I = 0x2

.field private static final OBB_MCS_RECONNECT:I = 0x4

.field private static final OBB_MCS_UNBIND:I = 0x3

.field private static final OBB_RUN_ACTION:I = 0x1

.field private static final PBKDF2_HASH_ROUNDS:I = 0x400

.field private static final TAG:Ljava/lang/String; = "StorageManagerService"

.field private static final TAG_STORAGE_BENCHMARK:Ljava/lang/String; = "storage_benchmark"

.field private static final TAG_STORAGE_TRIM:Ljava/lang/String; = "storage_trim"

.field private static final TAG_VOLUME:Ljava/lang/String; = "volume"

.field private static final TAG_VOLUMES:Ljava/lang/String; = "volumes"

.field private static final VERSION_ADD_PRIMARY:I = 0x2

.field private static final VERSION_FIX_PRIMARY:I = 0x3

.field private static final VERSION_INIT:I = 0x1

.field private static final VOLD_TAG:Ljava/lang/String; = "VoldConnector"

.field private static final WATCHDOG_ENABLE:Z

.field static sSelf:Lcom/android/server/StorageManagerService;


# instance fields
.field private mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppFuseLock"
    .end annotation
.end field

.field private final mAppFuseLock:Ljava/lang/Object;

.field private final mAsecMountSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

.field private volatile mBootCompleted:Z

.field private final mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

.field private final mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mConnectorThread:Ljava/lang/Thread;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private final mContext:Landroid/content/Context;

.field private final mCryptConnector:Lcom/android/server/NativeDaemonConnector;

.field private final mCryptConnectorThread:Ljava/lang/Thread;

.field private volatile mCurrentUserId:I

.field private volatile mDaemonConnected:Z

.field private final mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;

.field private mDiskScanLatches:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field

.field private mDisks:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForceAdoptable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastMaintenance:J

.field private final mLastMaintenanceFile:Ljava/io/File;

.field private mLocalUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMoveCallback:Landroid/content/pm/IPackageMoveObserver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mMoveTargetUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNextAppFuseName:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppFuseLock"
    .end annotation
.end field

.field private final mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

.field private final mObbMounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mObbPathToStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/StorageManagerService$ObbState;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPrimaryStorageUuid:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecords:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

.field private volatile mSystemReady:Z

.field private mSystemUnlockedUsers:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUnmountLock:Ljava/lang/Object;

.field private mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUnmountLock"
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mVolumes:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/StorageManagerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$DefaultContainerConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/StorageManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/server/StorageManagerService;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$ObbActionHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/StorageManagerService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/StorageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/StorageManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/StorageManagerService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/StorageManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/StorageManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->remountUidExternalStorage(II)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->start()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->systemReady()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/StorageManagerService;Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/StorageManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->shouldBenchmark()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->bootCompleted()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->forgetPartition(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleDaemonConnected()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/StorageManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->handleSystemReady()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/StorageManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->onCleanupUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "default"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "pattern"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "pin"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.defcontainer"

    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/StorageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    const/16 v3, 0x1f4

    const/16 v5, 0x19

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/os/storage/IStorageManager$Stub;-><init>()V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iput v1, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mUnmountLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-direct {v0, p0, v6}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    new-instance v0, Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$DefaultContainerConnection;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mDefContainerConn:Lcom/android/server/StorageManagerService$DefaultContainerConnection;

    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    new-instance v0, Lcom/android/server/StorageManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/StorageManagerService$1;-><init>(Lcom/android/server/StorageManagerService;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    sput-object p0, Lcom/android/server/StorageManagerService;->sSelf:Lcom/android/server/StorageManagerService;

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService$Callbacks;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    new-instance v9, Landroid/os/HandlerThread;

    const-string/jumbo v0, "StorageManagerService"

    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/StorageManagerService$ObbActionHandler;-><init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v10, Ljava/io/File;

    const-string/jumbo v0, "system"

    invoke-direct {v10, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "last-fstrim"

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a9

    :try_start_f4
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fe} :catch_186

    :goto_fe
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v4, "storage.xml"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_114
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->readSettingsLocked()V
    :try_end_117
    .catchall {:try_start_114 .. :try_end_117} :catchall_1b3

    monitor-exit v0

    const-class v0, Landroid/os/storage/StorageManagerInternal;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "vold"

    const-string/jumbo v4, "VoldConnector"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v12}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->setWarnIfHeld(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "VoldConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectorThread:Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptd"

    const-string/jumbo v4, "CryptdConnector"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0, v12}, Lcom/android/server/NativeDaemonConnector;->setDebug(Z)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "CryptdConnector"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnectorThread:Ljava/lang/Thread;

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v11, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_181
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V
    :try_end_184
    .catchall {:try_start_181 .. :try_end_184} :catchall_1b6

    monitor-exit v0

    return-void

    :catch_186
    move-exception v8

    const-string/jumbo v0, "StorageManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to create fstrim record "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fe

    :cond_1a9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenanceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    goto/16 :goto_fe

    :catchall_1b3
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1b6
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private addInternalVolumeLocked()V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v1, "private"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/storage/VolumeInfo;->state:I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_26

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_1b
    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->link()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_49

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v6, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_26
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v5, v2, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Attempt to add ObbState twice. This indicates an error in the StorageManagerService logic."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_49
    move-exception v1

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_58

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    throw v1
.end method

.method private adjustAllocateFlags(IILjava/lang/String;)I
    .registers 10

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ALLOCATE_AGGRESSIVE"

    const-string/jumbo v5, "StorageManagerService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    and-int/lit8 p1, p1, -0x3

    and-int/lit8 p1, p1, -0x5

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v1, 0x1a

    :try_start_23
    invoke-virtual {v0, v1, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    const-string/jumbo v1, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is actively using camera;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " letting them defy reserved cached data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_23 .. :try_end_51} :catchall_57

    or-int/lit8 p1, p1, 0x4

    :cond_53
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_57
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private bootCompleted()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    return-void
.end method

.method private copyLocaleFromMountService()V
    .registers 8

    :try_start_0
    const-string/jumbo v4, "SystemLocale"

    invoke-virtual {p0, v4}, Lcom/android/server/StorageManagerService;->getField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_e

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    return-void

    :catch_e
    move-exception v1

    return-void

    :cond_10
    const-string/jumbo v4, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :try_start_3d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_44} :catch_70

    :goto_44
    const-string/jumbo v4, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting system properties to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from mount service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "persist.sys.locale"

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_70
    move-exception v1

    const-string/jumbo v4, "StorageManagerService"

    const-string/jumbo v5, "Error setting system locale from mount service"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method private encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    const-string/jumbo v1, "!"

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_f
    new-instance v0, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private enforceAdminUser()V
    .registers 8

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_13
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_29

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_2e

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v6, "Only admin users can adopt sd cards"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_29
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_2e
    return-void
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static escapeNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v1, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "!"

    return-object v0

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_1a

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_20

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-object p0
.end method

.method private findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;
    .registers 5

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v2

    return-object v0

    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_30

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_2d

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_32

    monitor-exit v3

    return-object v2

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_30
    monitor-exit v3

    return-object v4

    :catchall_32
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "emulated"

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    :cond_1a
    const-string/jumbo v1, "primary_physical"

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1

    :cond_28
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1
.end method

.method private findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 6

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2a

    if-eqz v0, :cond_f

    monitor-exit v2

    return-object v0

    :cond_f
    monitor-exit v2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No volume found for ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_42

    monitor-exit v3

    return-object v2

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_27
    monitor-exit v3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No volume found for path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private forgetPartition(Ljava/lang/String;)V
    .registers 8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "forget_partition"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_14
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to forget key for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private getDefaultPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "ro.vold.primary_physical"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "primary_physical"

    return-object v0

    :cond_e
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private handleDaemonConnected()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfReadyAndConnected()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    return-void

    :cond_18
    const-string/jumbo v0, ""

    const-string/jumbo v1, "vold.encrypt_progress"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->copyLocaleFromMountService()V

    :cond_2b
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private handleSystemReady()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->initIfReadyAndConnected()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->resetIfReadyAndConnected()V

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    return-void
.end method

.method private initIfReadyAndConnected()V
    .registers 11

    const-string/jumbo v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Thinking about init, mSystemReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDaemonConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    if-eqz v5, :cond_cd

    iget-boolean v5, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v5, :cond_cd

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_cd

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v1

    const-string/jumbo v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting up emulation state, initlocked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    if-eqz v1, :cond_9d

    :try_start_77
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "lock_user_key"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_91
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_77 .. :try_end_91} :catch_92

    goto :goto_69

    :catch_92
    move-exception v0

    const-string/jumbo v5, "StorageManagerService"

    const-string/jumbo v6, "Failed to init vold"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    :cond_9d
    :try_start_9d
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "unlock_user_key"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    iget v8, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string/jumbo v8, "!"

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-string/jumbo v8, "!"

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_cc
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9d .. :try_end_cc} :catch_92

    goto :goto_69

    :cond_cd
    return-void
.end method

.method private isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    return v1

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :pswitch_10
    return v1

    :pswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    .registers 8

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/miui/enterprise/RestrictionsHelper;->isMountDisallowed(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)Z

    move-result v4

    if-eqz v4, :cond_a

    return v3

    :cond_a
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    const/4 v1, 0x0

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v4, :cond_2c

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string/jumbo v4, "no_usb_file_transfer"

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    :cond_2c
    const/4 v0, 0x0

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-eqz v4, :cond_35

    iget v4, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-ne v4, v3, :cond_40

    :cond_35
    const-string/jumbo v4, "no_physical_media"

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    :cond_40
    if-nez v1, :cond_43

    :goto_42
    return v0

    :cond_43
    move v0, v3

    goto :goto_42
.end method

.method private isReady()Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-ne p2, v3, :cond_7

    return v1

    :cond_7
    if-nez p1, :cond_a

    return v2

    :cond_a
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/high16 v5, 0x10000000

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    if-ne p2, v0, :cond_19

    :goto_18
    return v1

    :cond_19
    move v1, v2

    goto :goto_18
.end method

.method private killMediaProvider(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_43

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSystemOnly()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v8, "media"

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    const/high16 v10, 0xc0000

    invoke-virtual {v7, v8, v10, v9}, Lcom/android/server/pm/PackageManagerService;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_47

    move-result-object v0

    :try_start_30
    iget-object v7, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const-string/jumbo v9, "vold reset"

    const/4 v10, -0x1

    invoke-interface {v0, v7, v8, v10, v9}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_43} :catch_4c
    .catchall {:try_start_30 .. :try_end_43} :catchall_47

    :cond_43
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_47
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :catch_4c
    move-exception v1

    goto :goto_b
.end method

.method private onCleanupUser(I)V
    .registers 8

    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCleanupUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "volume"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "user_stopped"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_32} :catch_42

    :goto_32
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_35
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3f

    monitor-exit v2

    return-void

    :catchall_3f
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_42
    move-exception v0

    goto :goto_32
.end method

.method private onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_23

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    iget-object v5, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    add-int/lit8 v4, v4, 0x1

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_23
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.os.storage.action.DISK_SCANNED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x5000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "android.os.storage.extra.DISK_ID"

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "android.os.storage.extra.VOLUME_COUNT"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mDiskScanLatches:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_57
    iput v4, p1, Landroid/os/storage/DiskInfo;->volumeCount:I

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v5, p1, v4}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap1(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;I)V

    return-void
.end method

.method private onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 39

    packed-switch p1, :pswitch_data_44e

    :pswitch_3
    const-string/jumbo v32, "StorageManagerService"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Unhandled vold event "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    const/16 v32, 0x1

    return v32

    :pswitch_24
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    const/16 v32, 0x1

    aget-object v18, p3, v32

    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v32, "persist.fw.force_adoptable"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_50

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    move/from16 v32, v0

    if-eqz v32, :cond_52

    :cond_50
    or-int/lit8 v16, v16, 0x1

    :cond_52
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v32

    if-eqz v32, :cond_67

    const-string/jumbo v32, "persist.sys.adoptable_fbe"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    xor-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_67

    and-int/lit8 v16, v16, -0x2

    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    new-instance v33, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :pswitch_82
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    if-eqz v5, :cond_21

    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    iput-wide v0, v5, Landroid/os/storage/DiskInfo;->size:J

    goto/16 :goto_21

    :pswitch_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    if-eqz v5, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x2

    :goto_c8
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_e3

    aget-object v32, p3, v17

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x20

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v17, v17, 0x1

    goto :goto_c8

    :cond_e3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    goto/16 :goto_21

    :pswitch_f1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_21

    :pswitch_117
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    if-eqz v5, :cond_21

    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    iput-object v0, v5, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    goto/16 :goto_21

    :pswitch_140
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap0(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V

    goto/16 :goto_21

    :pswitch_16c
    const/16 v32, 0x1

    aget-object v18, p3, v32

    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v32, 0x3

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v32, 0x4

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/DiskInfo;

    new-instance v31, Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move/from16 v2, v30

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v5, v3}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V

    goto/16 :goto_21

    :pswitch_1bb
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    if-eqz v31, :cond_21

    move-object/from16 v0, v31

    iget v0, v0, Landroid/os/storage/VolumeInfo;->state:I

    move/from16 v21, v0

    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v31

    iput v0, v1, Landroid/os/storage/VolumeInfo;->state:I

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V

    goto/16 :goto_21

    :pswitch_1fb
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    if-eqz v31, :cond_21

    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    goto/16 :goto_21

    :pswitch_226
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    if-eqz v31, :cond_21

    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    goto/16 :goto_21

    :pswitch_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    if-eqz v31, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x2

    :goto_26a
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_285

    aget-object v32, p3, v17

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x20

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v17, v17, 0x1

    goto :goto_26a

    :cond_285
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    goto/16 :goto_21

    :pswitch_295
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    if-eqz v31, :cond_21

    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    goto/16 :goto_21

    :pswitch_2c0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/storage/VolumeInfo;

    if-eqz v31, :cond_21

    const/16 v32, 0x2

    aget-object v32, p3, v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    goto/16 :goto_21

    :pswitch_2eb
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    aget-object v33, p3, v33

    invoke-virtual/range {v32 .. v33}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_21

    :pswitch_307
    const/16 v32, 0x1

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    goto/16 :goto_21

    :pswitch_318
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    const/16 v32, 0x1

    aget-object v23, p3, v32

    const/16 v32, 0x2

    aget-object v19, p3, v32

    const/16 v32, 0x3

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/16 v32, 0x4

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/16 v32, 0x5

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    const/16 v32, 0x6

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-class v33, Landroid/os/DropBoxManager;

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/DropBoxManager;

    const-string/jumbo v32, "storage_benchmark"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v24

    if-eqz v24, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    goto/16 :goto_21

    :pswitch_3cb
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_21

    const/16 v32, 0x1

    aget-object v23, p3, v32

    const/16 v32, 0x2

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v32, 0x3

    aget-object v32, p3, v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-class v33, Landroid/os/DropBoxManager;

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/DropBoxManager;

    const-string/jumbo v32, "storage_trim"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;->scrubPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v13, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v24

    if-eqz v24, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v24

    iput-wide v0, v2, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-direct/range {p0 .. p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    goto/16 :goto_21

    :pswitch_data_44e
    .packed-switch 0x280
        :pswitch_24
        :pswitch_82
        :pswitch_af
        :pswitch_f1
        :pswitch_117
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_140
        :pswitch_16c
        :pswitch_1bb
        :pswitch_1fb
        :pswitch_226
        :pswitch_251
        :pswitch_295
        :pswitch_2c0
        :pswitch_3
        :pswitch_3
        :pswitch_2eb
        :pswitch_307
        :pswitch_318
        :pswitch_3cb
    .end packed-switch
.end method

.method private onMoveStatusLocked(I)V
    .registers 8

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-nez v1, :cond_f

    const-string/jumbo v1, "StorageManagerService"

    const-string/jumbo v2, "Odd, status but no move requested"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    invoke-interface {v1, v4, p1, v2, v3}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_77

    :goto_17
    const/16 v1, 0x52

    if-ne p1, v1, :cond_45

    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Move to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " copy phase finshed; persisting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    :cond_45
    invoke-static {p1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v1

    if-eqz v1, :cond_76

    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Move to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " finished with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    :cond_76
    return-void

    :catch_77
    move-exception v0

    goto :goto_17
.end method

.method private onUnlockUser(I)V
    .registers 12

    const-string/jumbo v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onUnlockUser "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "volume"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "user_started"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_32
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1a .. :try_end_32} :catch_84

    :goto_32
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v1, 0x0

    :goto_36
    :try_start_36
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_77

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4, p1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v5

    if-eqz v5, :cond_74

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, p1, v7}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    invoke-virtual {v5, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-static {v5}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap2(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_77
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I
    :try_end_7f
    .catchall {:try_start_36 .. :try_end_7f} :catchall_81

    monitor-exit v6

    return-void

    :catchall_81
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_84
    move-exception v2

    goto :goto_32
.end method

.method private onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    .registers 8

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "System booted in core-only mode; ignoring volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ba

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "private"

    iget-object v3, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found primary storage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found primary storage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7f

    :cond_ba
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v2, :cond_114

    const-string/jumbo v2, "primary_physical"

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v2

    if-eqz v2, :cond_f7

    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Found primary storage at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    :cond_f7
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v2

    if-eqz v2, :cond_105

    iget v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    :cond_105
    iget v2, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    iput v2, p1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7f

    :cond_114
    iget v2, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_124

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7f

    :cond_124
    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skipping automatic mounting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7f
.end method

.method private onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    .registers 15

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v6

    if-eqz v6, :cond_46

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_46

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeRecord;

    if-nez v3, :cond_bb

    new-instance v3, Landroid/os/storage/VolumeRecord;

    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/os/storage/VolumeRecord;->createdMillis:J

    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3c

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    :cond_3c
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v7, v3, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v6, v7, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    :cond_46
    :goto_46
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v6, p1, p2, p3}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap5(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeInfo;II)V

    iget-boolean v6, p0, Lcom/android/server/StorageManagerService;->mBootCompleted:Z

    if-eqz v6, :cond_82

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->isBroadcastWorthy(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_82

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android.os.storage.extra.VOLUME_ID"

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.os.storage.extra.VOLUME_STATE"

    invoke-virtual {v0, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "android.os.storage.extra.FS_UUID"

    iget-object v7, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x5000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    invoke-virtual {v6, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    :cond_82
    invoke-static {p2}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Landroid/os/storage/VolumeInfo;->getEnvironmentForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cc

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    const/4 v6, 0x0

    array-length v8, v7

    :goto_94
    if-ge v6, v8, :cond_cc

    aget v4, v7, v6

    invoke-virtual {p1, v4}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v9

    if-eqz v9, :cond_b8

    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v4, v10}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v9, v10, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap2(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    add-int/lit8 v6, v6, 0x1

    goto :goto_94

    :cond_bb
    iget-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_46

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->partGuid:Ljava/lang/String;

    iput-object v6, v3, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    goto/16 :goto_46

    :cond_cc
    iget v6, p1, Landroid/os/storage/VolumeInfo;->type:I

    if-nez v6, :cond_e3

    iget v6, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_e3

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v8, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    const/4 v9, 0x5

    invoke-virtual {v7, v9, v8}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_e3
    return-void
.end method

.method private readSettingsLocked()V
    .registers 16

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v11, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    iput-boolean v12, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    const/4 v3, 0x0

    :try_start_11
    iget-object v11, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_24
    :goto_24
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    if-eq v8, v13, :cond_92

    if-ne v8, v14, :cond_24

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "volumes"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6f

    const-string/jumbo v11, "version"

    const/4 v12, 0x1

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "ro.vold.primary_physical"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v11, 0x3

    if-ge v10, v11, :cond_6b

    if-lt v10, v14, :cond_6d

    xor-int/lit8 v9, v5, 0x1

    :goto_50
    if-eqz v9, :cond_5b

    const-string/jumbo v11, "primaryStorageUuid"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    :cond_5b
    const-string/jumbo v11, "forceAdoptable"

    const/4 v12, 0x0

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_65} :catch_66
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_65} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_65} :catch_96
    .catchall {:try_start_11 .. :try_end_65} :catchall_a4

    goto :goto_24

    :catch_66
    move-exception v0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_6a
    return-void

    :cond_6b
    const/4 v9, 0x1

    goto :goto_50

    :cond_6d
    const/4 v9, 0x0

    goto :goto_50

    :cond_6f
    :try_start_6f
    const-string/jumbo v11, "volume"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-static {v4}, Lcom/android/server/StorageManagerService;->readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;

    move-result-object v6

    iget-object v11, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v12, v6, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v11, v12, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_83} :catch_66
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_83} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6f .. :try_end_83} :catch_96
    .catchall {:try_start_6f .. :try_end_83} :catchall_a4

    goto :goto_24

    :catch_84
    move-exception v1

    :try_start_85
    const-string/jumbo v11, "StorageManagerService"

    const-string/jumbo v12, "Failed reading metadata"

    invoke-static {v11, v12, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_a4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6a

    :cond_92
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6a

    :catch_96
    move-exception v2

    :try_start_97
    const-string/jumbo v11, "StorageManagerService"

    const-string/jumbo v12, "Failed reading metadata"

    invoke-static {v11, v12, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_a4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6a

    :catchall_a4
    move-exception v11

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11
.end method

.method public static readVolumeRecord(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/storage/VolumeRecord;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v3, "type"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "fsUuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/storage/VolumeRecord;

    invoke-direct {v1, v2, v0}, Landroid/os/storage/VolumeRecord;-><init>(ILjava/lang/String;)V

    const-string/jumbo v3, "partGuid"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const-string/jumbo v3, "nickname"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    const-string/jumbo v3, "userFlags"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/os/storage/VolumeRecord;->userFlags:I

    const-string/jumbo v3, "createdMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-string/jumbo v3, "lastTrimMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    const-string/jumbo v3, "lastBenchMillis"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    return-object v1
.end method

.method private remountUidExternalStorage(II)V
    .registers 10

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    const-string/jumbo v1, "none"

    packed-switch p2, :pswitch_data_64

    :goto_9
    :try_start_9
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "remount_uid"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_24} :catch_31

    :goto_24
    return-void

    :pswitch_25
    const-string/jumbo v1, "default"

    goto :goto_9

    :pswitch_29
    const-string/jumbo v1, "read"

    goto :goto_9

    :pswitch_2d
    const-string/jumbo v1, "write"

    goto :goto_9

    :catch_31
    move-exception v0

    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to remount UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method private removeObbStateLocked(Lcom/android/server/StorageManagerService$ObbState;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_22

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p1}, Lcom/android/server/StorageManagerService$ObbState;->unlink()V

    :cond_17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private resetIfReadyAndConnected()V
    .registers 14

    const/4 v7, 0x0

    const-string/jumbo v6, "StorageManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Thinking about reset, mSystemReady="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mDaemonConnected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    if-eqz v6, :cond_a5

    iget-boolean v6, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    if-eqz v6, :cond_a5

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/StorageManagerService;->killMediaProvider(Ljava/util/List;)V

    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_46
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->addInternalVolumeLocked()V
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_a6

    monitor-exit v8

    :try_start_56
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "volume"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "reset"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v8, "volume"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "user_added"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    iget v10, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    iget v10, v2, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-virtual {v6, v8, v9}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_9a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_56 .. :try_end_9a} :catch_9b

    goto :goto_6b

    :catch_9b
    move-exception v0

    const-string/jumbo v6, "StorageManagerService"

    const-string/jumbo v7, "Failed to reset vold"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a5
    return-void

    :catchall_a6
    move-exception v6

    monitor-exit v8

    throw v6

    :cond_a9
    :try_start_a9
    array-length v8, v1

    move v6, v7

    :goto_ab
    if-ge v6, v8, :cond_a5

    aget v4, v1, v6

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v9, "volume"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "user_started"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v7, v9, v10}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_c7
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a9 .. :try_end_c7} :catch_9b

    add-int/lit8 v6, v6, 0x1

    goto :goto_ab
.end method

.method private scrubPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "internal"

    return-object v1

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findRecordForPath(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-wide v2, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_24

    :cond_20
    const-string/jumbo v1, "unknown"

    return-object v1

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Landroid/os/storage/VolumeRecord;->createdMillis:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x240c8400

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private shouldBenchmark()Z
    .registers 15

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "storage_benchmark_interval"

    const-wide/32 v10, 0x240c8400

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_18

    const/4 v7, 0x0

    return v7

    :cond_18
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-nez v7, :cond_20

    const/4 v7, 0x1

    return v7

    :cond_20
    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const/4 v4, 0x0

    :goto_24
    :try_start_24
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_58

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    iget-object v9, v6, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeRecord;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v7

    if-eqz v7, :cond_55

    if-eqz v5, :cond_55

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v5, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J
    :try_end_4c
    .catchall {:try_start_24 .. :try_end_4c} :catchall_5b

    sub-long v0, v10, v12

    cmp-long v7, v0, v2

    if-ltz v7, :cond_55

    const/4 v7, 0x1

    monitor-exit v8

    return v7

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_58
    const/4 v7, 0x0

    monitor-exit v8

    return v7

    :catchall_5b
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private start()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private systemReady()V
    .registers 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/StorageManagerService;->mSystemReady:Z

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .registers 7

    const-wide/16 v2, -0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :cond_4
    const-wide/16 v4, 0x1388

    :try_start_6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    const-string/jumbo v1, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " still waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_43} :catch_92

    :goto_43
    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-lez v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v6, v2, p3

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " gave up waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_92
    move-exception v0

    const-string/jumbo v1, "StorageManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Interrupt while waiting for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private waitForReady()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mConnectedSignal"

    invoke-direct {p0, v0, v1}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method

.method private warnOnNotMounted()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_30

    move-result v2

    if-eqz v2, :cond_22

    monitor-exit v3

    return-void

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_25
    monitor-exit v3

    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "No primary storage mounted!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private writeSettingsLocked()V
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "volumes"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "version"

    const/4 v7, 0x3

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v6, "primaryStorageUuid"

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "forceAdoptable"

    iget-boolean v7, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    invoke-static {v3, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_43
    if-ge v2, v5, :cond_53

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeRecord;

    invoke-static {v3, v4}, Lcom/android/server/StorageManagerService;->writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_53
    const-string/jumbo v6, "volumes"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_62} :catch_63

    :cond_62
    :goto_62
    return-void

    :catch_63
    move-exception v0

    if-eqz v1, :cond_62

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_62
.end method

.method public static writeVolumeRecord(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/storage/VolumeRecord;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "type"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->type:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v0, "fsUuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "partGuid"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "nickname"

    iget-object v1, p1, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "userFlags"

    iget v1, p1, Landroid/os/storage/VolumeRecord;->userFlags:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string/jumbo v0, "createdMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->createdMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "lastTrimMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "lastBenchMillis"

    iget-wide v2, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v0, "volume"

    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public addUserKeyAuth(II[B[B)V
    .registers 11

    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "add_user_key_auth"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    .registers 22

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v9, v2}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v4

    cmp-long v9, p2, v4

    if-lez v9, :cond_51

    new-instance v9, Landroid/os/ParcelableException;

    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to allocate "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " because only "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " allocatable"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    :cond_51
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v12, Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_61
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    and-int/lit8 v9, p4, 0x1

    if-eqz v9, :cond_82

    invoke-virtual {v8, v7}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v12

    add-long p2, p2, v12

    :goto_71
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_7e} :catch_89
    .catchall {:try_start_61 .. :try_end_7e} :catchall_90

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_82
    :try_start_82
    invoke-virtual {v8, v7}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_89
    .catchall {:try_start_82 .. :try_end_85} :catchall_90

    move-result-wide v12

    add-long p2, p2, v12

    goto :goto_71

    :catch_89
    move-exception v6

    :try_start_8a
    new-instance v9, Landroid/os/ParcelableException;

    invoke-direct {v9, v6}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v9

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method public benchmark(Ljava/lang/String;)J
    .registers 10

    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_9
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "benchmark"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-wide/32 v6, 0x2bf20

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_28
    .catch Lcom/android/server/NativeDaemonTimeoutException; {:try_start_9 .. :try_end_28} :catch_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_28} :catch_2a

    move-result-wide v4

    return-wide v4

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3

    :catch_30
    move-exception v1

    const-wide v4, 0x7fffffffffffffffL

    return-wide v4
.end method

.method public changeEncryptionPassword(ILjava/lang/String;)I
    .registers 13

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v7, "no permission to access the crypt keeper"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    const-string/jumbo v5, "lock_settings"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    const-string/jumbo v0, "default_password"

    :try_start_1c
    invoke-interface {v4}, Lcom/android/internal/widget/ILockSettings;->getPassword()Ljava/lang/String;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_55

    move-result-object v0

    :goto_20
    :try_start_20
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "changepw"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v8, v8, p1

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, v0}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v9, 0x2

    aput-object v8, v7, v9

    new-instance v8, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v8, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_48
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_20 .. :try_end_48} :catch_8d

    move-result-object v3

    :try_start_49
    invoke-interface {v4}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_71
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_49 .. :try_end_4c} :catch_8d

    :goto_4c
    :try_start_4c
    invoke-virtual {v3}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4c .. :try_end_53} :catch_8d

    move-result v5

    return v5

    :catch_55
    move-exception v1

    const-string/jumbo v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t get password"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :catch_71
    move-exception v1

    :try_start_72
    const-string/jumbo v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Couldn\'t sanitize password"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_72 .. :try_end_8c} :catch_8d

    goto :goto_4c

    :catch_8d
    move-exception v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v5

    return v5
.end method

.method public clearPassword()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v4, "only keyguard can clear password"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->isReady()Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    :cond_12
    :try_start_12
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "clearpw"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_23
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_23} :catch_25

    move-result-object v1

    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
    .registers 14

    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    const/4 v1, 0x0

    :try_start_d
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "asec"

    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "create"

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    aput-object p3, v5, v2

    new-instance v2, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v2, p4}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x4

    aput-object v2, v5, v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v5, v6

    if-eqz p6, :cond_4e

    const-string/jumbo v2, "1"

    :goto_3c
    const/4 v6, 0x6

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_42
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_42} :catch_52

    :goto_42
    if-nez v1, :cond_4d

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_47
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_55

    monitor-exit v3

    :cond_4d
    return v1

    :cond_4e
    :try_start_4e
    const-string/jumbo v2, "0"
    :try_end_51
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_3c

    :catch_52
    move-exception v0

    const/4 v1, -0x1

    goto :goto_42

    :catchall_55
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public createUserKey(IIZ)V
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v3}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_b
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "create_user_key"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    if-eqz p3, :cond_34

    :goto_29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b .. :try_end_33} :catch_36

    return-void

    :cond_34
    move v1, v2

    goto :goto_29

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public decryptStorage(Ljava/lang/String;)I
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "password cannot be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_1d
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "checkpw"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v6, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4d

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/StorageManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/StorageManagerService$2;-><init>(Lcom/android/server/StorageManagerService;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_4d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1d .. :try_end_4d} :catch_4e

    :cond_4d
    return v0

    :catch_4e
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    return v3
.end method

.method public destroySecureContainer(Ljava/lang/String;Z)I
    .registers 11

    const-string/jumbo v4, "android.permission.ASEC_DESTROY"

    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    const/4 v3, 0x0

    :try_start_14
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "destroy"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_30

    const-string/jumbo v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    :cond_30
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_14 .. :try_end_35} :catch_49

    :goto_35
    if-nez v3, :cond_48

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_3a
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_56

    :cond_47
    monitor-exit v5

    :cond_48
    return v3

    :catch_49
    move-exception v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    const/16 v4, 0x195

    if-ne v1, v4, :cond_54

    const/4 v3, -0x7

    goto :goto_35

    :cond_54
    const/4 v3, -0x1

    goto :goto_35

    :catchall_56
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public destroyUserKey(I)V
    .registers 8

    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "destroy_user_key"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .registers 10

    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "destroy_user_storage"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2f
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "StorageManagerService"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v15

    if-nez v15, :cond_12

    return-void

    :cond_12
    new-instance v13, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v15, "  "

    const/16 v16, 0xa0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-direct {v13, v0, v15, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_27
    const-string/jumbo v15, "Disks:"

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    :goto_31
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v6, v15, :cond_4b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/DiskInfo;

    invoke-virtual {v3, v13}, Landroid/os/storage/DiskInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_4b
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v15, "Volumes:"

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    :goto_5b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v6, v15, :cond_88

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v15, "private"

    iget-object v0, v14, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_81

    :goto_7e
    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    :cond_81
    invoke-virtual {v14, v13}, Landroid/os/storage/VolumeInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_84
    .catchall {:try_start_27 .. :try_end_84} :catchall_85

    goto :goto_7e

    :catchall_85
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_88
    :try_start_88
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v15, "Records:"

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v6, 0x0

    :goto_98
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v6, v15, :cond_b2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/VolumeRecord;

    invoke-virtual {v8, v13}, Landroid/os/storage/VolumeRecord;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    :cond_b2
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Primary storage UUID: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/storage/StorageManager;->getPrimaryStoragePathAndSize()Landroid/util/Pair;

    move-result-object v12

    if-nez v12, :cond_1be

    const-string/jumbo v15, "Internal storage total size: N/A"

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_e5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Force adoptable: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Local unlocked users: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "System unlocked users: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mSystemUnlockedUsers:[I

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_153
    .catchall {:try_start_88 .. :try_end_153} :catchall_85

    monitor-exit v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_15b
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v15, "mObbMounts:"

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_173
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1fb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1ab
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1f6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v13, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_1ba
    .catchall {:try_start_15b .. :try_end_1ba} :catchall_1bb

    goto :goto_1ab

    :catchall_1bb
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_1be
    :try_start_1be
    const-string/jumbo v15, "Internal storage ("

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v15, ") total size: "

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v15, " ("

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v15, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v15, v0

    const/high16 v17, 0x4e800000

    div-float v15, v15, v17

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(F)V

    const-string/jumbo v15, " GB)"

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f4
    .catchall {:try_start_1be .. :try_end_1f4} :catchall_85

    goto/16 :goto_e5

    :cond_1f6
    :try_start_1f6
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_173

    :cond_1fb
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v15, "mObbPathToStateMap:"

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_216
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_239

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v15, " -> "

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_216

    :cond_239
    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_23c
    .catchall {:try_start_1f6 .. :try_end_23c} :catchall_1bb

    monitor-exit v16

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v15, "mConnector:"

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v0, v13, v1}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v15, "mCryptConnector:"

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v15, v0, v13, v1}, Lcom/android/server/NativeDaemonConnector;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v13}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v15, "Last maintenance: "

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public encryptStorage(ILjava/lang/String;)I
    .registers 10

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eq p1, v4, :cond_13

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    if-ne p1, v4, :cond_42

    :try_start_23
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "enablecrypto"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "inplace"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    :goto_41
    return v6

    :cond_42
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "enablecrypto"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "inplace"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v4, v4, p1

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v4, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_68
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_68} :catch_69

    goto :goto_41

    :catch_69
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    return v1
.end method

.method public finalizeSecureContainer(Ljava/lang/String;)I
    .registers 9

    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "finalize"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_1e} :catch_1f

    :goto_1e
    return v1

    :catch_1f
    move-exception v0

    const/4 v1, -0x1

    goto :goto_1e
.end method

.method public finishMediaUpdate()V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to call finishMediaUpdate()"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Odd, nobody asked to unmount?"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11

    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "fixperms"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object p3, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_28
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_28} :catch_29

    :goto_28
    return v1

    :catch_29
    move-exception v0

    const/4 v1, -0x1

    goto :goto_28
.end method

.method public fixateNewestUserKeyAuth(I)V
    .registers 8

    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "fixate_newest_user_key_auth"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public forgetAllVolumes()V
    .registers 8

    const-string/jumbo v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x0

    :goto_d
    :try_start_d
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_42

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    iget-object v3, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, v2, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {v3, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v3, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap3(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_42
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    :cond_57
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_65
    .catchall {:try_start_d .. :try_end_65} :catchall_67

    monitor-exit v4

    return-void

    :catchall_67
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    if-eqz v0, :cond_30

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Landroid/os/storage/VolumeRecord;->partGuid:Ljava/lang/String;

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_30
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, p1}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap3(Lcom/android/server/StorageManagerService$Callbacks;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->getDefaultPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_4e
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_53

    monitor-exit v2

    return-void

    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    :try_start_d
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "format"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "auto"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public formatVolume(Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->format(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public fstrim(I)V
    .registers 8

    const-string/jumbo v2, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_37

    const-string/jumbo v0, "dodtrim"

    :goto_10
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "bench"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "fstrim"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_28 .. :try_end_36} :catch_3b

    :goto_36
    return-void

    :cond_37
    const-string/jumbo v0, "dotrim"

    goto :goto_10

    :catch_3b
    move-exception v1

    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to run fstrim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    .registers 30

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v22

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/StorageManagerService;->adjustAllocateFlags(IILjava/lang/String;)I

    move-result p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-class v23, Landroid/os/storage/StorageManager;

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-class v23, Landroid/app/usage/StorageStatsManager;

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/usage/StorageStatsManager;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    :try_start_30
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v20

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v14

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v12

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/usage/StorageStatsManager;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8a

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/usage/StorageStatsManager;->getCacheBytes(Ljava/lang/String;)J

    move-result-wide v8

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    move-result-wide v6

    const-wide/16 v22, 0x0

    sub-long v24, v8, v6

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    and-int/lit8 v22, p2, 0x1

    if-eqz v22, :cond_7c

    const-wide/16 v22, 0x0

    add-long v24, v20, v4

    sub-long v24, v24, v12

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_77} :catch_a6
    .catchall {:try_start_30 .. :try_end_77} :catchall_af

    move-result-wide v22

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v22

    :cond_7c
    const-wide/16 v22, 0x0

    add-long v24, v20, v4

    sub-long v24, v24, v14

    :try_start_82
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_a6
    .catchall {:try_start_82 .. :try_end_85} :catchall_af

    move-result-wide v22

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v22

    :cond_8a
    and-int/lit8 v22, p2, 0x1

    if-eqz v22, :cond_9a

    const-wide/16 v22, 0x0

    sub-long v24, v20, v12

    :try_start_92
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_a6
    .catchall {:try_start_92 .. :try_end_95} :catchall_af

    move-result-wide v22

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v22

    :cond_9a
    const-wide/16 v22, 0x0

    sub-long v24, v20, v14

    :try_start_9e
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_a6
    .catchall {:try_start_9e .. :try_end_a1} :catchall_af

    move-result-wide v22

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v22

    :catch_a6
    move-exception v10

    :try_start_a7
    new-instance v22, Landroid/os/ParcelableException;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v22
    :try_end_af
    .catchall {:try_start_a7 .. :try_end_af} :catchall_af

    :catchall_af
    move-exception v22

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22
.end method

.method public getCacheQuotaBytes(Ljava/lang/String;I)J
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq p2, v1, :cond_11

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.STORAGE_INTERNAL"

    const-string/jumbo v5, "StorageManagerService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    :try_start_1f
    invoke-virtual {v0, p1, p2}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_27

    move-result-wide v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v4

    :catchall_27
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getCacheSizeBytes(Ljava/lang/String;I)J
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq p2, v1, :cond_11

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.STORAGE_INTERNAL"

    const-string/jumbo v5, "StorageManagerService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_15
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v1, p1, p2}, Landroid/app/usage/StorageStatsManager;->queryStatsForUid(Ljava/lang/String;I)Landroid/app/usage/StorageStats;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getCacheBytes()J
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_26} :catch_2b
    .catchall {:try_start_15 .. :try_end_26} :catchall_32

    move-result-wide v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v4

    :catch_2b
    move-exception v0

    :try_start_2c
    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public getDisks()[Landroid/os/storage/DiskInfo;
    .registers 5

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/DiskInfo;

    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/DiskInfo;

    aput-object v2, v1, v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    monitor-exit v3

    return-object v1

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getEncryptionState()I
    .registers 10

    const/4 v8, -0x1

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_f
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "cryptocomplete"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_28} :catch_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_28} :catch_2a

    move-result v3

    return v3

    :catch_2a
    move-exception v0

    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Error in communicating with cryptfs in validating"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_35
    move-exception v1

    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Unable to parse result from cryptfs cryptocomplete"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v7, "no permission to access the crypt keeper"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_f
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v6, "cryptfs"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "getfield"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v5

    const/16 v6, 0x71

    invoke-static {v5, v6}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    array-length v5, v1

    :goto_30
    if-ge v4, v5, :cond_48

    aget-object v0, v1, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_f .. :try_end_44} :catch_49

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_48
    return-object v3

    :catch_49
    move-exception v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string/jumbo v4, "rawPath cannot be null"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v5

    :try_start_12
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_38

    monitor-exit v5

    if-nez v3, :cond_3b

    const-string/jumbo v4, "StorageManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find OBB mounted at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :catchall_38
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3b
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "obb"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "path"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v3, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    const/16 v4, 0xd3

    invoke-virtual {v2, v4}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_5a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3b .. :try_end_5a} :catch_5c

    move-result-object v4

    return-object v4

    :catch_5c
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    const/16 v4, 0x196

    if-ne v0, v4, :cond_66

    return-object v9

    :cond_66
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Unexpected response code %d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getPassword()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v5, "only keyguard can retrieve password"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->isReady()Z

    move-result v3

    if-nez v3, :cond_18

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    return-object v3

    :cond_18
    :try_start_18
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "getpw"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    const-string/jumbo v3, "-1"

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    return-object v8

    :cond_38
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_18 .. :try_end_3b} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_3b} :catch_3d

    move-result-object v3

    return-object v3

    :catch_3d
    move-exception v1

    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Invalid response to getPassword"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catch_48
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public getPasswordType()I
    .registers 9

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v5, "no permission to access the crypt keeper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_e
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "cryptfs"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "getpwtype"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/4 v2, 0x0

    :goto_21
    sget-object v3, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_38

    sget-object v3, Lcom/android/server/StorageManagerService;->CRYPTO_TYPES:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    return v2

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_38
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "unexpected return from cryptfs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_41} :catch_41

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    :try_start_e
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "fspath"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_2b} :catch_2d

    move-result-object v3

    return-object v3

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    const/16 v3, 0x196

    if-ne v0, v3, :cond_49

    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_49
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSecureContainerList()[Ljava/lang/String;
    .registers 8

    const/4 v6, 0x0

    const-string/jumbo v1, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    :try_start_d
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "asec"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "list"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const/16 v2, 0x6f

    invoke-static {v1, v2}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;
    :try_end_24
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_24} :catch_26

    move-result-object v1

    return-object v1

    :catch_26
    move-exception v0

    new-array v1, v6, [Ljava/lang/String;

    return-object v1
.end method

.method public getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v3, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v3}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    :try_start_e
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "path"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v2

    const/16 v3, 0xd3

    invoke-virtual {v2, v3}, Lcom/android/server/NativeDaemonEvent;->checkCode(I)V

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;
    :try_end_2b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_2b} :catch_2d

    move-result-object v3

    return-object v3

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    const/16 v3, 0x196

    if-ne v0, v3, :cond_49

    const-string/jumbo v3, "StorageManagerService"

    const-string/jumbo v4, "Container \'%s\' not found"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_49
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Unexpected response code %d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .registers 14

    const/4 v11, 0x0

    const-string/jumbo v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_a
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "storage"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "users"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v6

    const/16 v7, 0x70

    invoke-static {v6, v7}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    new-array v0, v6, [I

    const/4 v2, 0x0

    :goto_29
    array-length v6, v4

    if-ge v2, v6, :cond_5c

    aget-object v6, v4, v2

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_34
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_a .. :try_end_34} :catch_5d

    move-result-object v5

    const/4 v6, 0x0

    :try_start_36
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v2
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_3e} :catch_41
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_36 .. :try_end_3e} :catch_5d

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :catch_41
    move-exception v3

    :try_start_42
    const-string/jumbo v6, "StorageManagerService"

    const-string/jumbo v7, "Error parsing pid %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    new-array v6, v6, [I
    :try_end_5b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_42 .. :try_end_5b} :catch_5d

    return-object v6

    :cond_5c
    return-object v0

    :catch_5d
    move-exception v1

    const-string/jumbo v6, "StorageManagerService"

    const-string/jumbo v7, "Failed to retrieve storage users list"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array v6, v11, [I

    return-object v6
.end method

.method public getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    .registers 48

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v40

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_67

    const/16 v21, 0x1

    :goto_c
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_6a

    const/16 v32, 0x1

    :goto_14
    move/from16 v0, p3

    and-int/lit16 v4, v0, 0x400

    if-eqz v4, :cond_6d

    const/16 v25, 0x1

    :goto_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v38

    :try_start_20
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mStorageManagerInternal:Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->hasExternalStorage(ILjava/lang/String;)Z
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_70

    move-result v37

    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v22, 0x0

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    const/16 v23, 0x0

    :goto_45
    :try_start_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_e0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/os/storage/VolumeInfo;

    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->getType()I
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_dd

    move-result v4

    packed-switch v4, :pswitch_data_148

    :cond_64
    :goto_64
    :pswitch_64
    add-int/lit8 v23, v23, 0x1

    goto :goto_45

    :cond_67
    const/16 v21, 0x0

    goto :goto_c

    :cond_6a
    const/16 v32, 0x0

    goto :goto_14

    :cond_6d
    const/16 v25, 0x0

    goto :goto_1c

    :catchall_70
    move-exception v4

    invoke-static/range {v38 .. v39}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :pswitch_75
    const/16 v26, 0x0

    if-eqz v21, :cond_b1

    :try_start_79
    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForWrite(I)Z

    move-result v26

    :goto_81
    if-eqz v26, :cond_64

    const/16 v34, 0x0

    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_cc

    xor-int/lit8 v4, v41, 0x1

    if-eqz v4, :cond_cc

    const/16 v34, 0x1

    :cond_92
    :goto_92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v43

    move/from16 v1, v40

    move/from16 v2, v34

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/storage/VolumeInfo;->buildStorageVolume(Landroid/content/Context;IZ)Landroid/os/storage/StorageVolume;

    move-result-object v42

    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_d5

    const/4 v4, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v22, 0x1

    goto :goto_64

    :cond_b1
    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/VolumeInfo;->isVisibleForRead(I)Z

    move-result v4

    if-nez v4, :cond_c6

    if-eqz v25, :cond_c9

    invoke-virtual/range {v43 .. v43}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_c9

    const/16 v26, 0x1

    goto :goto_81

    :cond_c6
    const/16 v26, 0x1

    goto :goto_81

    :cond_c9
    const/16 v26, 0x0

    goto :goto_81

    :cond_cc
    if-nez v37, :cond_92

    xor-int/lit8 v4, v32, 0x1

    if-eqz v4, :cond_92

    const/16 v34, 0x1

    goto :goto_92

    :cond_d5
    move-object/from16 v0, v35

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_dc
    .catchall {:try_start_79 .. :try_end_dc} :catchall_dd

    goto :goto_64

    :catchall_dd
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_e0
    monitor-exit v5

    if-nez v22, :cond_138

    const-string/jumbo v4, "StorageManagerService"

    const-string/jumbo v5, "No primary storage defined yet; hacking together a stub"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ro.vold.primary_physical"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v24, "stub_primary"

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v27, 0x1

    move/from16 v33, v10

    xor-int/lit8 v11, v10, 0x1

    const-wide/16 v30, 0x0

    const/16 v20, 0x0

    const-wide/16 v28, 0x0

    new-instance v17, Landroid/os/UserHandle;

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v18, 0x0

    const-string/jumbo v36, "removed"

    new-instance v4, Landroid/os/storage/StorageVolume;

    const-string/jumbo v5, "stub_primary"

    const-string/jumbo v19, "removed"

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-direct/range {v4 .. v19}, Landroid/os/storage/StorageVolume;-><init>(Ljava/lang/String;ILjava/io/File;Ljava/lang/String;ZZZJZJLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_138
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/storage/StorageVolume;

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/storage/StorageVolume;

    return-object v4

    nop

    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_75
        :pswitch_64
        :pswitch_75
    .end packed-switch
.end method

.method public getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
    .registers 6

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeRecord;

    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeRecord;

    aput-object v2, v1, v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    monitor-exit v3

    return-object v1

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVolumes(I)[Landroid/os/storage/VolumeInfo;
    .registers 6

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    new-array v1, v2, [Landroid/os/storage/VolumeInfo;

    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    aput-object v2, v1, v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    monitor-exit v3

    return-object v1

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isConvertibleToFBE()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v6, "no permission to access the crypt keeper"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_10
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "cryptfs"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "isConvertibleToFBE"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_29
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_29} :catch_2f

    move-result v4

    if-eqz v4, :cond_2d

    :goto_2c
    return v2

    :cond_2d
    move v2, v3

    goto :goto_2c

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public isExternalStorageEmulated()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit v1

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSecureContainerMounted(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "android.permission.ASEC_ACCESS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_17

    move-result v0

    monitor-exit v1

    return v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUsbMassStorageConnected()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isUserKeyUnlocked(I)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lastMaintenance()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/StorageManagerService;->mLastMaintenance:J

    return-wide v0
.end method

.method public lockUserKey(I)V
    .registers 8

    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "lock_user_key"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_2e

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_24
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_34

    monitor-exit v2

    return-void

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    :catchall_34
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public mkdirs(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15

    const/4 v11, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    new-instance v4, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v4, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "appops"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v1, v6, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_21
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_7e

    move-result-object v0

    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppDataDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_48

    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_48

    invoke-virtual {v4, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppMediaDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/os/FileUtils;->contains([Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_ac

    :cond_48
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v6, "/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_69

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_69
    :try_start_69
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "volume"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "mkdirs"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_7d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_69 .. :try_end_7d} :catch_a6

    return v11

    :catch_7e
    move-exception v3

    const-string/jumbo v6, "StorageManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to resolve "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x1

    return v6

    :catch_a6
    move-exception v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v6

    return v6

    :cond_ac
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid mkdirs path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public monitor()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    :cond_9
    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnector;->monitor()V

    :cond_12
    return-void
.end method

.method public mount(Ljava/lang/String;)V
    .registers 9

    const-string/jumbo v2, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z

    move-result v2

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Mounting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " restricted by policy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "volume"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "mount"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    iget v5, v1, Landroid/os/storage/VolumeInfo;->mountUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5c
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_34 .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    .registers 14

    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "canonicalPath cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "token cannot be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    new-instance v0, Lcom/android/server/StorageManagerService$ObbState;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    new-instance v7, Lcom/android/server/StorageManagerService$MountObbAction;

    invoke-direct {v7, p0, v0, p3, v4}, Lcom/android/server/StorageManagerService$MountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
    .registers 12

    const/4 v10, 0x0

    const-string/jumbo v6, "StorageManagerService"

    const-string/jumbo v7, "mountProxyFileDescriptorBridge"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    :goto_12
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v3, 0x0

    :try_start_16
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v6, :cond_2f

    new-instance v6, Lcom/android/server/storage/AppFuseBridge;

    invoke-direct {v6}, Lcom/android/server/storage/AppFuseBridge;-><init>()V

    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v6, Ljava/lang/Thread;

    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    const-string/jumbo v9, "AppFuseBridge"

    invoke-direct {v6, v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_60

    const/4 v3, 0x1

    :cond_2f
    :try_start_2f
    iget v2, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/android/server/StorageManagerService;->mNextAppFuseName:I
    :try_end_35
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2f .. :try_end_35} :catch_5a
    .catchall {:try_start_2f .. :try_end_35} :catchall_60

    :try_start_35
    new-instance v6, Lcom/android/internal/os/AppFuseMount;

    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    new-instance v9, Lcom/android/server/StorageManagerService$AppFuseMountScope;

    invoke-direct {v9, p0, v5, v4, v2}, Lcom/android/server/StorageManagerService$AppFuseMountScope;-><init>(Lcom/android/server/StorageManagerService;III)V

    invoke-virtual {v8, v9}, Lcom/android/server/storage/AppFuseBridge;->addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-direct {v6, v2, v8}, Lcom/android/internal/os/AppFuseMount;-><init>(ILandroid/os/ParcelFileDescriptor;)V
    :try_end_45
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_35 .. :try_end_45} :catch_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_35 .. :try_end_45} :catch_5a
    .catchall {:try_start_35 .. :try_end_45} :catchall_60

    monitor-exit v7

    return-object v6

    :catch_47
    move-exception v0

    if-eqz v3, :cond_55

    :try_start_4a
    const-string/jumbo v6, "StorageManagerService"

    const-string/jumbo v8, ""

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4a .. :try_end_53} :catch_5a
    .catchall {:try_start_4a .. :try_end_53} :catchall_60

    monitor-exit v7

    return-object v10

    :cond_55
    const/4 v6, 0x0

    :try_start_56
    iput-object v6, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;
    :try_end_58
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_56 .. :try_end_58} :catch_5a
    .catchall {:try_start_56 .. :try_end_58} :catchall_60

    monitor-exit v7

    goto :goto_12

    :catch_5a
    move-exception v1

    :try_start_5b
    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 13

    const-string/jumbo v3, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v3}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_f
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_53

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, -0x6

    monitor-exit v4

    return v3

    :cond_1a
    monitor-exit v4

    const/4 v2, 0x0

    :try_start_1c
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "asec"

    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "mount"

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p1, v6, v3

    new-instance v3, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v3, p2}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v6, v7

    if-eqz p4, :cond_56

    const-string/jumbo v3, "ro"

    :goto_41
    const/4 v7, 0x4

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_47
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1c .. :try_end_47} :catch_5a

    :cond_47
    :goto_47
    if-nez v2, :cond_52

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_4c
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_65

    monitor-exit v4

    :cond_52
    return v2

    :catchall_53
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_56
    :try_start_56
    const-string/jumbo v3, "rw"
    :try_end_59
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_41

    :catch_5a
    move-exception v1

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v0

    const/16 v3, 0x195

    if-eq v0, v3, :cond_47

    const/4 v2, -0x1

    goto :goto_47

    :catchall_65
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public mountVolume(Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->mount(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onCheckHoldWakeLock(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService;->mDaemonConnected:Z

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StorageManagerService;->onEventLocked(ILjava/lang/String;[Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .registers 10

    const/4 v5, 0x0

    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "mountProxyFileDescriptor"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    :try_start_e
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAppFuseLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_11
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_e .. :try_end_11} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_2b

    :try_start_11
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    if-nez v2, :cond_20

    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v4, "FuseBridge has not been created"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_28

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_1e .. :try_end_1f} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1f} :catch_2b

    return-object v5

    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAppFuseBridge:Lcom/android/server/storage/AppFuseBridge;

    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/android/server/storage/AppFuseBridge;->openFile(IIII)Landroid/os/ParcelFileDescriptor;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_28

    move-result-object v2

    :try_start_26
    monitor-exit v3

    return-object v2

    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2b
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_26 .. :try_end_2b} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    const-string/jumbo v2, "StorageManagerService"

    const-string/jumbo v3, "The mount point has already been invalid"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 11

    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "partition"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "mixed"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    const-string/jumbo v3, "partitionMixed"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_3a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_3a} :catch_42
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    move-exception v1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->enforceAdminUser()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    :try_start_10
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "partition"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "private"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    const-string/jumbo v3, "partitionPrivate"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_33
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_10 .. :try_end_33} :catch_3b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_3b
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v3, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    invoke-direct {p0, v3}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findOrCreateDiskScanLatch(Ljava/lang/String;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    :try_start_d
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v4, "volume"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "partition"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const-string/jumbo v6, "public"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    const-string/jumbo v3, "partitionPublic"

    const-wide/32 v4, 0x2bf20

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;J)V
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_30} :catch_38
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception v1

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .registers 11

    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "prepare_user_storage"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_36
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_36} :catch_37

    return-void

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public registerListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->register(Landroid/os/storage/IStorageEventListener;)V

    return-void
.end method

.method public renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const-string/jumbo v2, "android.permission.ASEC_RENAME"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_f
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_3c

    move-result v2

    if-eqz v2, :cond_22

    :cond_1f
    const/4 v2, -0x6

    monitor-exit v3

    return v2

    :cond_22
    monitor-exit v3

    const/4 v1, 0x0

    :try_start_24
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "rename"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3b
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_24 .. :try_end_3b} :catch_3f

    :goto_3b
    return v1

    :catchall_3c
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_3f
    move-exception v0

    const/4 v1, -0x1

    goto :goto_3b
.end method

.method public resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
    .registers 11

    const-string/jumbo v2, "android.permission.ASEC_CREATE"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    const/4 v1, 0x0

    :try_start_d
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "asec"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "resize"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, p3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_30
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_d .. :try_end_30} :catch_31

    :goto_30
    return v1

    :catch_31
    move-exception v0

    const/4 v1, -0x1

    goto :goto_30
.end method

.method runIdleMaintenance(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public runMaintenance()V
    .registers 2

    const-string/jumbo v0, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->runIdleMaintenance(Ljava/lang/Runnable;)V

    return-void
.end method

.method public secdiscard(Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v1, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "cryptfs"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "secdiscard"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->escapeNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_21
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_9 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public setDebugFlags(II)V
    .registers 11

    const/4 v6, 0x0

    const-string/jumbo v5, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v5}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_52

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v5

    if-eqz v5, :cond_1d

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Emulation not supported on device with native FBE"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1d
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v5

    if-eqz v5, :cond_2e

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Emulation requires disabling \'Secure start-up\' in Settings > Security"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_70

    const/4 v0, 0x1

    :goto_37
    :try_start_37
    const-string/jumbo v5, "persist.sys.emulate_fbe"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/PowerManager;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_72

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_52
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_90

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v5

    if-eqz v5, :cond_77

    const-string/jumbo v5, "persist.sys.adoptable_fbe"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_77

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Adoptable storage not available on device with native FBE"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_70
    const/4 v0, 0x0

    goto :goto_37

    :catchall_72
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_77
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_d9

    const/4 v5, 0x1

    :goto_7f
    :try_start_7f
    iput-boolean v5, p0, Lcom/android/server/StorageManagerService;->mForceAdoptable:Z

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_8f
    .catchall {:try_start_7f .. :try_end_8f} :catchall_db

    monitor-exit v7

    :cond_90
    and-int/lit8 v5, p2, 0xc

    if-eqz v5, :cond_b3

    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_de

    const-string/jumbo v4, "force_on"

    :goto_9b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_9f
    const-string/jumbo v5, "persist.sys.sdcardfs"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_b0
    .catchall {:try_start_9f .. :try_end_b0} :catchall_ea

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_b3
    and-int/lit8 v5, p2, 0x10

    if-eqz v5, :cond_d8

    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_ef

    const/4 v1, 0x1

    :goto_bc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_c0
    const-string/jumbo v5, "persist.sys.virtual_disk"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_d5
    .catchall {:try_start_c0 .. :try_end_d5} :catchall_f1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_d8
    return-void

    :cond_d9
    move v5, v6

    goto :goto_7f

    :catchall_db
    move-exception v5

    monitor-exit v7

    throw v5

    :cond_de
    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_e6

    const-string/jumbo v4, "force_off"

    goto :goto_9b

    :cond_e6
    const-string/jumbo v4, ""

    goto :goto_9b

    :catchall_ea
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_ef
    const/4 v1, 0x0

    goto :goto_bc

    :catchall_f1
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_e
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "setfield"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_25
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_e .. :try_end_25} :catch_27

    move-result-object v1

    return-void

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 14

    const-string/jumbo v6, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_c
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Primary storage already at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_31
    :try_start_31
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    if-eqz v6, :cond_3e

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Move already in progress"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3e
    iput-object p2, p0, Lcom/android/server/StorageManagerService;->mMoveCallback:Landroid/content/pm/IPackageMoveObserver;

    iput-object p1, p0, Lcom/android/server/StorageManagerService;->mMoveTargetUuid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v6

    if-eqz v6, :cond_54

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/StorageManagerService;->isUserKeyUnlocked(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_54

    const-string/jumbo v6, "StorageManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failing move due to locked user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, -0xa

    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V
    :try_end_91
    .catchall {:try_start_31 .. :try_end_91} :catchall_2e

    monitor-exit v7

    return-void

    :cond_93
    :try_start_93
    const-string/jumbo v6, "primary_physical"

    iget-object v8, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a7

    const-string/jumbo v6, "primary_physical"

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    :cond_a7
    const-string/jumbo v6, "StorageManagerService"

    const-string/jumbo v8, "Skipping move to/from primary physical"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x52

    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    const/16 v6, -0x64

    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V

    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_c5
    .catchall {:try_start_93 .. :try_end_c5} :catchall_2e

    monitor-exit v7

    return-void

    :cond_c7
    :try_start_c7
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findStorageForUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    if-nez v1, :cond_f5

    const-string/jumbo v6, "StorageManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failing move due to missing from volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/StorageManagerService;->mPrimaryStorageUuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x6

    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V
    :try_end_f3
    .catchall {:try_start_c7 .. :try_end_f3} :catchall_2e

    monitor-exit v7

    return-void

    :cond_f5
    if-nez v2, :cond_117

    :try_start_f7
    const-string/jumbo v6, "StorageManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failing move due to missing to volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, -0x6

    invoke-direct {p0, v6}, Lcom/android/server/StorageManagerService;->onMoveStatusLocked(I)V
    :try_end_115
    .catchall {:try_start_f7 .. :try_end_115} :catchall_2e

    monitor-exit v7

    return-void

    :cond_117
    monitor-exit v7

    :try_start_118
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v7, "volume"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "move_storage"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget-object v9, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_133
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_118 .. :try_end_133} :catch_134

    return-void

    :catch_134
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v6

    throw v6
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    iput-object p2, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap4(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_23

    monitor-exit v2

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setVolumeUserFlags(Ljava/lang/String;II)V
    .registers 8

    const-string/jumbo v1, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v1}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    iget v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    not-int v3, p3

    and-int/2addr v1, v3

    and-int v3, p2, p3

    or-int/2addr v1, v3

    iput v1, v0, Landroid/os/storage/VolumeRecord;->userFlags:I

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-static {v1, v0}, Lcom/android/server/StorageManagerService$Callbacks;->-wrap4(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/VolumeRecord;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->writeSettingsLocked()V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2a

    monitor-exit v2

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
    .registers 4

    const-string/jumbo v0, "android.permission.SHUTDOWN"

    invoke-direct {p0, v0}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    const-string/jumbo v0, "StorageManagerService"

    const-string/jumbo v1, "Shutting down"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unlockUserKey(II[B[B)V
    .registers 12

    const-string/jumbo v2, "android.permission.STORAGE_INTERNAL"

    invoke-direct {p0, v2}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v2

    if-eqz v2, :cond_64

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Secret required to unlock secure user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "unlock_user_key"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-direct {p0, p3}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-direct {p0, p4}, Lcom/android/server/StorageManagerService;->encodeBytes([B)Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_64
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_37 .. :try_end_64} :catch_b5

    :cond_64
    iget-object v3, p0, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_67
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I

    invoke-static {v2, p1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/StorageManagerService;->mLocalUnlockedUsers:[I
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_bb

    monitor-exit v3

    if-nez p1, :cond_b4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sys.user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".ce_available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    return-void

    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    :catchall_bb
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 11

    const-string/jumbo v4, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_17
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mUnmountLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_52

    :try_start_1a
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v6, "mUnmountSignal"

    invoke-direct {p0, v4, v6}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/StorageManagerService;->mUnmountSignal:Ljava/util/concurrent/CountDownLatch;
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_4f

    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_52

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v5, "volume"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "unmount"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_4e
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_38 .. :try_end_4e} :catch_57

    return-void

    :catchall_4f
    move-exception v4

    :try_start_50
    monitor-exit v5

    throw v4
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v4

    throw v4
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    .registers 14

    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbMounts:Ljava/util/Map;

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbPathToStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/StorageManagerService$ObbState;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_35

    monitor-exit v2

    if-eqz v8, :cond_38

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    new-instance v0, Lcom/android/server/StorageManagerService$ObbState;

    iget-object v3, v8, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/StorageManagerService$ObbState;-><init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V

    new-instance v7, Lcom/android/server/StorageManagerService$UnmountObbAction;

    invoke-direct {v7, p0, v0, p2}, Lcom/android/server/StorageManagerService$UnmountObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V

    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mObbActionHandler:Lcom/android/server/StorageManagerService$ObbActionHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v7}, Lcom/android/server/StorageManagerService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/StorageManagerService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_34
    return-void

    :catchall_35
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_38
    const-string/jumbo v1, "StorageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown OBB mount at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public unmountSecureContainer(Ljava/lang/String;Z)I
    .registers 11

    const-string/jumbo v4, "android.permission.ASEC_MOUNT_UNMOUNT"

    invoke-direct {p0, v4}, Lcom/android/server/StorageManagerService;->enforcePermission(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->warnOnNotMounted()V

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_f
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_50

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, -0x5

    monitor-exit v5

    return v4

    :cond_1a
    monitor-exit v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    const/4 v3, 0x0

    :try_start_23
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v4, "asec"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "unmount"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v0, v4, v5}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_3f

    const-string/jumbo v4, "force"

    invoke-virtual {v0, v4}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    :cond_3f
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v4, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_44
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_23 .. :try_end_44} :catch_53

    :goto_44
    if-nez v3, :cond_4f

    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    monitor-enter v5

    :try_start_49
    iget-object v4, p0, Lcom/android/server/StorageManagerService;->mAsecMountSet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_60

    monitor-exit v5

    :cond_4f
    return v3

    :catchall_50
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_53
    move-exception v2

    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    const/16 v4, 0x195

    if-ne v1, v4, :cond_5e

    const/4 v3, -0x7

    goto :goto_44

    :cond_5e
    const/4 v3, -0x1

    goto :goto_44

    :catchall_60
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService;->findVolumeIdForPathOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService$Callbacks;->unregister(Landroid/os/storage/IStorageEventListener;)V

    return-void
.end method

.method public verifyEncryptionPassword(Ljava/lang/String;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_11

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "no permission to access the crypt keeper"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v4, "no permission to access the crypt keeper"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "password cannot be empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    invoke-direct {p0}, Lcom/android/server/StorageManagerService;->waitForReady()V

    :try_start_2e
    iget-object v2, p0, Lcom/android/server/StorageManagerService;->mCryptConnector:Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v3, "cryptfs"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "verifypw"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v5, p1}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v1

    const-string/jumbo v2, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cryptfs verifypw => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6d
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2e .. :try_end_6d} :catch_6f

    move-result v2

    return v2

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v2

    return v2
.end method

.method public waitForAsecScan()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/StorageManagerService;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    const-string/jumbo v1, "mAsecsScanned"

    invoke-direct {p0, v0, v1}, Lcom/android/server/StorageManagerService;->waitForLatch(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    return-void
.end method
