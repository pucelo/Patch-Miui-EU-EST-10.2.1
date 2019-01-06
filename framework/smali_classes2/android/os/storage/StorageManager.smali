.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGE_STORAGE:Ljava/lang/String; = "android.os.storage.action.MANAGE_STORAGE"

.field public static final CRYPT_TYPE_DEFAULT:I = 0x1

.field public static final CRYPT_TYPE_PASSWORD:I = 0x0

.field public static final CRYPT_TYPE_PATTERN:I = 0x2

.field public static final CRYPT_TYPE_PIN:I = 0x3

.field public static final DEBUG_EMULATE_FBE:I = 0x2

.field public static final DEBUG_FORCE_ADOPTABLE:I = 0x1

.field public static final DEBUG_SDCARDFS_FORCE_OFF:I = 0x8

.field public static final DEBUG_SDCARDFS_FORCE_ON:I = 0x4

.field public static final DEBUG_VIRTUAL_DISK:I = 0x10

.field private static final DEFAULT_CACHE_MAX_BYTES:J = 0x140000000L

.field private static final DEFAULT_CACHE_PERCENTAGE:I = 0xa

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J = 0x100000L

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J = 0x1f400000L

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0x5

.field public static final ENCRYPTION_STATE_ERROR_CORRUPT:I = -0x4

.field public static final ENCRYPTION_STATE_ERROR_INCOMPLETE:I = -0x2

.field public static final ENCRYPTION_STATE_ERROR_INCONSISTENT:I = -0x3

.field public static final ENCRYPTION_STATE_ERROR_UNKNOWN:I = -0x1

.field public static final ENCRYPTION_STATE_NONE:I = 0x1

.field public static final ENCRYPTION_STATE_OK:I = 0x0

.field public static final EXTRA_REQUESTED_BYTES:Ljava/lang/String; = "android.os.storage.extra.REQUESTED_BYTES"

.field public static final EXTRA_UUID:Ljava/lang/String; = "android.os.storage.extra.UUID"

.field public static final FLAG_ALLOCATE_AGGRESSIVE:I = 0x1

.field public static final FLAG_ALLOCATE_DEFY_ALL_RESERVED:I = 0x2

.field public static final FLAG_ALLOCATE_DEFY_HALF_RESERVED:I = 0x4

.field public static final FLAG_FOR_WRITE:I = 0x100

.field public static final FLAG_INCLUDE_INVISIBLE:I = 0x400

.field public static final FLAG_REAL_STATE:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field public static final FSTRIM_FLAG_BENCHMARK:I = 0x2

.field public static final FSTRIM_FLAG_DEEP:I = 0x1

.field public static final OWNER_INFO_KEY:Ljava/lang/String; = "OwnerInfo"

.field public static final PASSWORD_VISIBLE_KEY:Ljava/lang/String; = "PasswordVisible"

.field public static final PATTERN_VISIBLE_KEY:Ljava/lang/String; = "PatternVisible"

.field public static final PROP_ADOPTABLE_FBE:Ljava/lang/String; = "persist.sys.adoptable_fbe"

.field public static final PROP_EMULATE_FBE:Ljava/lang/String; = "persist.sys.emulate_fbe"

.field public static final PROP_FORCE_ADOPTABLE:Ljava/lang/String; = "persist.fw.force_adoptable"

.field public static final PROP_HAS_ADOPTABLE:Ljava/lang/String; = "vold.has_adoptable"

.field public static final PROP_PRIMARY_PHYSICAL:Ljava/lang/String; = "ro.vold.primary_physical"

.field public static final PROP_SDCARDFS:Ljava/lang/String; = "persist.sys.sdcardfs"

.field public static final PROP_VIRTUAL_DISK:Ljava/lang/String; = "persist.sys.virtual_disk"

.field public static final SYSTEM_LOCALE_KEY:Ljava/lang/String; = "SystemLocale"

.field private static final TAG:Ljava/lang/String; = "StorageManager"

.field public static final UUID_DEFAULT:Ljava/util/UUID;

.field public static final UUID_PRIMARY_PHYSICAL:Ljava/lang/String; = "primary_physical"

.field public static final UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

.field public static final UUID_PRIVATE_INTERNAL:Ljava/lang/String; = null

.field public static final UUID_SYSTEM:Ljava/lang/String; = "system"

.field public static final UUID_SYSTEM_:Ljava/util/UUID;

.field private static final XATTR_CACHE_GROUP:Ljava/lang/String; = "user.cache_group"

.field private static final XATTR_CACHE_TOMBSTONE:Ljava/lang/String; = "user.cache_tombstone"

.field private static volatile sStorageManager:Landroid/os/storage/IStorageManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageManager$StorageEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mFuseAppLoopLock"
    .end annotation
.end field

.field private final mFuseAppLoopLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStorageManager:Landroid/os/storage/IStorageManager;


# direct methods
.method static synthetic -get0(Landroid/os/storage/StorageManager;)Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/os/storage/StorageManager;)I
    .registers 2

    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "41217664-9172-527a-b3d5-edabb50a7d69"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    const-string/jumbo v0, "0f95a519-dae7-5abf-9519-fbd6209e05fd"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    const-string/jumbo v0, "5d258386-e60d-59e3-826d-0089cdd42cc0"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    const/4 v0, 0x0

    sput-object v0, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-direct {v0, p0, v2}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$ObbActionListener;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    iput-object v2, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    iput-object p1, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    return-void
.end method

.method public static convert(Ljava/util/UUID;)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    :cond_b
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "primary_physical"

    return-object v0

    :cond_17
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "system"

    return-object v0

    :cond_23
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convert(Ljava/lang/String;)Ljava/util/UUID;
    .registers 2

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object v0

    :cond_b
    const-string/jumbo v0, "primary_physical"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIMARY_PHYSICAL_:Ljava/util/UUID;

    return-object v0

    :cond_17
    const-string/jumbo v0, "system"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_SYSTEM_:Ljava/util/UUID;

    return-object v0

    :cond_23
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private getNextNonce()I
    .registers 2

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static getPrimaryStoragePathAndSize()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .registers 5

    const/4 v1, 0x0

    array-length v2, p0

    :goto_2
    if-ge v1, v2, :cond_10

    aget-object v0, p0, v1

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_d

    return-object v0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Missing primary storage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStorageVolume(Ljava/io/File;I)Landroid/os/storage/StorageVolume;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method private static getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .registers 9

    const/4 v6, 0x0

    if-nez p1, :cond_4

    return-object v6

    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_1d

    move-result-object p1

    const/4 v3, 0x0

    array-length v4, p0

    :goto_a
    if-ge v3, v4, :cond_3d

    aget-object v1, p0, v3

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v2

    :try_start_12
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_39

    move-result-object v2

    invoke-static {v2, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3a

    return-object v1

    :catch_1d
    move-exception v0

    const-string/jumbo v3, "StorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not get canonical path for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_39
    move-exception v0

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_3d
    return-object v6
.end method

.method public static getVolumeList(II)[Landroid/os/storage/StorageVolume;
    .registers 9

    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v3

    :try_start_b
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    array-length v5, v2

    if-gtz v5, :cond_26

    :cond_22
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    return-object v5

    :cond_26
    const/4 v5, 0x0

    aget-object v1, v2, v5

    :cond_29
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/high16 v6, 0x10000000

    invoke-interface {v5, v1, v6, p0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v4

    if-gtz v4, :cond_39

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/storage/StorageVolume;

    return-object v5

    :cond_39
    invoke-interface {v3, v4, v1, p1}, Landroid/os/storage/IStorageManager;->getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_3c} :catch_3e

    move-result-object v5

    return-object v5

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public static inCryptKeeperBounce()Z
    .registers 2

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger_restart_min_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isBlockEncrypted()Z
    .registers 1

    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_BLOCK_ENCRYPTED:Z

    return v0
.end method

.method public static isBlockEncrypting()Z
    .registers 3

    const-string/jumbo v1, "vold.encrypt_progress"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v1, 0x1

    return v1

    :catch_9
    move-exception v0

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENODATA:I

    if-eq v1, v2, :cond_15

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public static isEncryptable()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTABLE:Z

    return v0
.end method

.method public static isEncrypted()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_ENCRYPTED:Z

    return v0
.end method

.method public static isFileEncryptedEmulatedOnly()Z
    .registers 2

    const-string/jumbo v0, "persist.sys.emulate_fbe"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFileEncryptedNativeOnly()Z
    .registers 1

    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CRYPTO_FILE_ENCRYPTED:Z

    return v0
.end method

.method public static isFileEncryptedNativeOrEmulated()Z
    .registers 1

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedEmulatedOnly()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static isNonDefaultBlockEncrypted()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v4

    if-nez v4, :cond_9

    return v3

    :cond_9
    :try_start_9
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_1d

    move-result v4

    if-eq v4, v2, :cond_1b

    :goto_1a
    return v2

    :cond_1b
    move v2, v3

    goto :goto_1a

    :catch_1d
    move-exception v0

    const-string/jumbo v2, "StorageManager"

    const-string/jumbo v4, "Error getting encryption type"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isUserKeyUnlocked(I)Z
    .registers 6

    sget-object v1, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v1, :cond_11

    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    sput-object v1, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    :cond_11
    sget-object v1, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    if-nez v1, :cond_20

    const-string/jumbo v1, "StorageManager"

    const-string/jumbo v4, "Early during boot, assuming locked"

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_24
    sget-object v1, Landroid/os/storage/StorageManager;->sStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p0}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2e
    .catchall {:try_start_24 .. :try_end_29} :catchall_34

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public static maybeTranslateEmulatedPathToInternal(Ljava/io/File;)Ljava/io/File;
    .registers 1

    return-object p0
.end method

.method private static setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Cache behavior can only be set on directories"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-eqz p2, :cond_29

    :try_start_11
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_11 .. :try_end_22} :catch_23

    :cond_22
    :goto_22
    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_29
    :try_start_29
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/system/Os;->removexattr(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/system/ErrnoException; {:try_start_29 .. :try_end_30} :catch_31

    goto :goto_22

    :catch_31
    move-exception v0

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    sget v2, Landroid/system/OsConstants;->ENODATA:I

    if-eq v1, v2, :cond_22

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public allocateBytes(Ljava/io/FileDescriptor;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    return-void
.end method

.method public allocateBytes(Ljava/io/FileDescriptor;JI)V
    .registers 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v7

    const/4 v6, 0x0

    :goto_9
    const/4 v10, 0x3

    if-ge v6, v10, :cond_5e

    :try_start_c
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v10

    iget-wide v10, v10, Landroid/system/StructStat;->st_blocks:J

    const-wide/16 v12, 0x200

    mul-long v4, v10, v12

    sub-long v8, p2, v4

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_23

    move/from16 v0, p4

    invoke-virtual {p0, v7, v8, v9, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V
    :try_end_23
    .catch Landroid/system/ErrnoException; {:try_start_c .. :try_end_23} :catch_46

    :cond_23
    const-wide/16 v10, 0x0

    :try_start_25
    move-wide/from16 v0, p2

    invoke-static {p1, v10, v11, v0, v1}, Landroid/system/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_25 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception v2

    :try_start_2c
    iget v10, v2, Landroid/system/ErrnoException;->errno:I

    sget v11, Landroid/system/OsConstants;->ENOSYS:I

    if-eq v10, v11, :cond_38

    iget v10, v2, Landroid/system/ErrnoException;->errno:I

    sget v11, Landroid/system/OsConstants;->ENOTSUP:I

    if-ne v10, v11, :cond_45

    :cond_38
    const-string/jumbo v10, "StorageManager"

    const-string/jumbo v11, "fallocate() not supported; falling back to ftruncate()"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p3}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    return-void

    :cond_45
    throw v2
    :try_end_46
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_46} :catch_46

    :catch_46
    move-exception v2

    iget v10, v2, Landroid/system/ErrnoException;->errno:I

    sget v11, Landroid/system/OsConstants;->ENOSPC:I

    if-ne v10, v11, :cond_59

    const-string/jumbo v10, "StorageManager"

    const-string/jumbo v11, "Odd, not enough space; let\'s try again?"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_59
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v10

    throw v10

    :cond_5e
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Well this is embarassing; we can\'t allocate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public allocateBytes(Ljava/util/UUID;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/util/UUID;JI)V

    return-void
.end method

.method public allocateBytes(Ljava/util/UUID;JI)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-wide v2, p2

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IStorageManager;->allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_11} :catch_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v7

    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_18
    move-exception v6

    const-class v0, Ljava/io/IOException;

    invoke-virtual {v6, v0}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    goto :goto_11
.end method

.method public benchmark(Ljava/lang/String;)J
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->benchmark(Ljava/lang/String;)J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    return-wide v2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createUserKey(IIZ)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IStorageManager;->createUserKey(IIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserKey(I)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->destroyUserKey(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public destroyUserStorage(Ljava/lang/String;II)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IStorageManager;->destroyUserStorage(Ljava/lang/String;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableUsbMassStorage()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public enableUsbMassStorage()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    iget-object v2, v0, Landroid/os/storage/DiskInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v0

    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "private"

    const-string/jumbo v2, "emulated"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_16
    return-object v0
.end method

.method public findPathForUuid(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    return-object v1

    :cond_b
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to find a storage device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public findPrivateForEmulated(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "emulated"

    const-string/jumbo v2, "private"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_16
    return-object v0
.end method

.method public findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeRecord;

    iget-object v2, v0, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v0

    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v0

    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 3

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "private"

    invoke-virtual {p0, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_10
    const-string/jumbo v0, "primary_physical"

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_1e
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    iget-object v2, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return-object v0

    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public forgetVolume(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->forgetVolume(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public format(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->format(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllocatableBytes(Ljava/util/UUID;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAllocatableBytes(Ljava/util/UUID;I)J
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p2, v4}, Landroid/os/storage/IStorageManager;->getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
    :try_end_f
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_f} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-wide v2

    return-wide v2

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_17
    move-exception v0

    const-class v2, Ljava/io/IOException;

    invoke-virtual {v0, v2}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroid/os/storage/VolumeRecord;->nickname:Ljava/lang/String;

    return-object v1

    :cond_21
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_30
    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v1, :cond_3b

    iget-object v1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3b
    return-object v2
.end method

.method public getCacheQuotaBytes(Ljava/util/UUID;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v3, v4, v5}, Landroid/os/storage/IStorageManager;->getCacheQuotaBytes(Ljava/lang/String;I)J
    :try_end_11
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_11} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-wide v4

    return-wide v4

    :catch_13
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_19
    move-exception v1

    const-class v3, Ljava/io/IOException;

    invoke-virtual {v1, v3}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getCacheSizeBytes(Ljava/util/UUID;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-static {p1}, Landroid/os/storage/StorageManager;->convert(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v3, v4, v5}, Landroid/os/storage/IStorageManager;->getCacheSizeBytes(Ljava/lang/String;I)J
    :try_end_11
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_11} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    move-result-wide v4

    return-wide v4

    :catch_13
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_19
    move-exception v1

    const-class v3, Ljava/io/IOException;

    invoke-virtual {v1, v3}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getDisks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/DiskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getDisks()[Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_6
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;
    .registers 5

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v3

    if-eqz v3, :cond_8

    return-object v0

    :cond_1b
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPrimaryStorageSize()J
    .registers 3

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrimaryStorageUuid()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPrimaryStorageUuid()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x600

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .registers 2

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getProxyFileDescriptorMountPointId()I
    .registers 3

    iget-object v1, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v0}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_11

    move-result v0

    :goto_d
    monitor-exit v1

    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getStorageBytesUntilLow(Ljava/io/File;)J
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStorageCacheBytes(Ljava/io/File;I)J
    .registers 15

    iget-object v8, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "sys_storage_cache_percentage"

    const/16 v10, 0xa

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    int-to-long v2, v8

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v8

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x64

    div-long v0, v8, v10

    iget-object v8, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v9, "sys_storage_cache_max_bytes"

    const-wide v10, 0x140000000L

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_2e

    const-wide/16 v8, 0x0

    return-wide v8

    :cond_2e
    and-int/lit8 v8, p2, 0x2

    if-eqz v8, :cond_35

    const-wide/16 v8, 0x0

    return-wide v8

    :cond_35
    and-int/lit8 v8, p2, 0x4

    if-eqz v8, :cond_3e

    const-wide/16 v8, 0x2

    div-long v8, v6, v8

    return-wide v8

    :cond_3e
    return-wide v6
.end method

.method public getStorageFullBytes(Ljava/io/File;)J
    .registers 6

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    const-wide/32 v2, 0x100000

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageLowBytes(Ljava/io/File;)J
    .registers 12

    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "sys_storage_threshold_percentage"

    const/4 v8, 0x5

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v2, v6

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x64

    div-long v0, v6, v8

    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "sys_storage_threshold_max_bytes"

    const-wide/32 v8, 0x1f400000

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;
    .registers 3

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/storage/StorageManager;->getStorageVolume([Landroid/os/storage/StorageVolume;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getStorageVolumes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x600

    invoke-static {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    sget-object v4, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    return-object v4

    :cond_19
    :try_start_19
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v5

    array-length v6, v5

    :goto_21
    if-ge v4, v6, :cond_46

    aget-object v3, v5, v4

    iget-object v7, v3, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    if-eqz v7, :cond_3d

    iget-object v7, v3, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-static {v7, v2}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    iget v7, v3, Landroid/os/storage/VolumeInfo;->type:I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_33} :catch_40

    if-eqz v7, :cond_3d

    :try_start_35
    iget-object v7, v3, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_3a} :catch_3c
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_40

    move-result-object v4

    return-object v4

    :catch_3c
    move-exception v1

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_46
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find a storage device for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 3

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_15

    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_15
    return-object v2
.end method

.method public getVolumeRecords()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeRecord;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    const-string/jumbo v1, "unknown"

    return-object v1
.end method

.method public getVolumes()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWritablePrivateVolumes()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v4

    array-length v5, v4

    :goto_e
    if-ge v3, v5, :cond_25

    aget-object v2, v4, v3

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_22

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_22} :catch_26

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_25
    return-object v1

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public isAllocationSupported(Ljava/io/FileDescriptor;)Z
    .registers 4

    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->getFile(Ljava/io/FileDescriptor;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    const/4 v1, 0x1

    return v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isCacheBehaviorGroup(Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_group"

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCacheBehaviorTombstone(Ljava/io/File;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_tombstone"

    invoke-static {p1, v0}, Landroid/os/storage/StorageManager;->isCacheBehavior(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEncrypted(Ljava/io/File;)Z
    .registers 3

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/os/storage/StorageManager;->isEncrypted()Z

    move-result v0

    return v0

    :cond_f
    invoke-static {}, Landroid/os/Environment;->getExpandDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_6
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->isObbMounted(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUsbMassStorageConnected()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public lockUserKey(I)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public mount(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->mount(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .registers 12

    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_c
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v5

    iget-object v0, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IStorageManager;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_24} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_24} :catch_26

    const/4 v0, 0x1

    return v0

    :catch_26
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_2c
    move-exception v7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;Ljava/util/concurrent/ThreadFactory;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Landroid/os/storage/StorageManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "storage_open_proxy_file_descriptor"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v3, p3

    :goto_d
    :try_start_d
    iget-object v8, p0, Landroid/os/storage/StorageManager;->mFuseAppLoopLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_80

    const/4 v5, 0x0

    :try_start_11
    iget-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    if-nez v7, :cond_3d

    iget-object v7, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v7}, Landroid/os/storage/IStorageManager;->mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;

    move-result-object v4

    if-nez v4, :cond_31

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v9, "Failed to mount proxy bridge"

    invoke-direct {v7, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v7

    move-object p3, v3

    :goto_28
    :try_start_28
    monitor-exit v8

    throw v7
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    :goto_2b
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :cond_31
    :try_start_31
    new-instance v7, Lcom/android/internal/os/FuseAppLoop;

    iget v9, v4, Lcom/android/internal/os/AppFuseMount;->mountPointId:I

    iget-object v10, v4, Lcom/android/internal/os/AppFuseMount;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v7, v9, v10, p4}, Lcom/android/internal/os/FuseAppLoop;-><init>(ILandroid/os/ParcelFileDescriptor;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    const/4 v5, 0x1

    :cond_3d
    if-nez v3, :cond_83

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {p3, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_48
    .catchall {:try_start_31 .. :try_end_48} :catchall_26

    :goto_48
    :try_start_48
    iget-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v7, p2, p3}, Lcom/android/internal/os/FuseAppLoop;->registerCallback(Landroid/os/ProxyFileDescriptorCallback;Landroid/os/Handler;)I

    move-result v2

    iget-object v7, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v9, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v9}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v9

    invoke-interface {v7, v9, v2, p1}, Landroid/os/storage/IStorageManager;->openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    if-nez v6, :cond_78

    iget-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v7, v2}, Lcom/android/internal/os/FuseAppLoop;->unregisterCallback(I)V

    new-instance v7, Lcom/android/internal/os/FuseUnavailableMountException;

    iget-object v9, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;

    invoke-virtual {v9}, Lcom/android/internal/os/FuseAppLoop;->getMountPointId()I

    move-result v9

    invoke-direct {v7, v9}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v7
    :try_end_6d
    .catch Lcom/android/internal/os/FuseUnavailableMountException; {:try_start_48 .. :try_end_6d} :catch_6d
    .catchall {:try_start_48 .. :try_end_6d} :catchall_76

    :catch_6d
    move-exception v1

    if-eqz v5, :cond_7a

    :try_start_70
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v7

    goto :goto_28

    :cond_78
    :try_start_78
    monitor-exit v8
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_79} :catch_2a

    return-object v6

    :cond_7a
    const/4 v7, 0x0

    :try_start_7b
    iput-object v7, p0, Landroid/os/storage/StorageManager;->mFuseAppLoop:Lcom/android/internal/os/FuseAppLoop;
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_76

    :try_start_7d
    monitor-exit v8
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_7e} :catch_2a

    move-object v3, p3

    goto :goto_d

    :catch_80
    move-exception v0

    move-object p3, v3

    goto :goto_2b

    :cond_83
    move-object p3, v3

    goto :goto_48
.end method

.method public partitionMixed(Ljava/lang/String;I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IStorageManager;->partitionMixed(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public partitionPrivate(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->partitionPrivate(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public partitionPublic(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public prepareUserStorage(Ljava/lang/String;III)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->prepareUserStorage(Ljava/lang/String;III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .registers 6

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_3
    new-instance v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p1, v2}, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;-><init>(Landroid/os/storage/StorageEventListener;Landroid/os/Looper;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1c

    :try_start_a
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, v0}, Landroid/os/storage/IStorageManager;->registerListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_16
    .catchall {:try_start_a .. :try_end_f} :catchall_1c

    :try_start_f
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1c

    monitor-exit v3

    return-void

    :catch_16
    move-exception v1

    :try_start_17
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public secdiscard(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->secdiscard(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCacheBehaviorGroup(Ljava/io/File;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_group"

    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCacheBehaviorTombstone(Ljava/io/File;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user.cache_tombstone"

    invoke-static {p1, v0, p2}, Landroid/os/storage/StorageManager;->setCacheBehavior(Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IStorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeInited(Ljava/lang/String;Z)V
    .registers 7

    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    if-eqz p2, :cond_a

    :goto_5
    const/4 v3, 0x1

    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_c

    return-void

    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IStorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setVolumeSnoozed(Ljava/lang/String;Z)V
    .registers 7

    const/4 v1, 0x2

    :try_start_1
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    if-eqz p2, :cond_a

    :goto_5
    const/4 v3, 0x2

    invoke-interface {v2, p1, v1, v3}, Landroid/os/storage/IStorageManager;->setVolumeUserFlags(Ljava/lang/String;II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_c

    return-void

    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unlockUserKey(II[B[B)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unmount(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v1, p1}, Landroid/os/storage/IStorageManager;->unmount(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .registers 8

    const-string/jumbo v2, "rawPath cannot be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "listener cannot be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_c
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    iget-object v2, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IStorageManager;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_1b

    const/4 v2, 0x1

    return v2

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .registers 7

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;

    iget-object v3, v0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_22

    if-ne v3, p1, :cond_9

    :try_start_19
    iget-object v3, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v3, v0}, Landroid/os/storage/IStorageManager;->unregisterListener(Landroid/os/storage/IStorageEventListener;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_25
    .catchall {:try_start_19 .. :try_end_1e} :catchall_22

    :try_start_1e
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_9

    :catchall_22
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_25
    move-exception v1

    :try_start_26
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_22

    :cond_2b
    monitor-exit v4

    return-void
.end method

.method public wipeAdoptableDisks()V
    .registers 9

    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getDisks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v5

    if-eqz v5, :cond_68

    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found adoptable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; wiping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3f
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v5, v2}, Landroid/os/storage/IStorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_8

    :catch_45
    move-exception v4

    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to wipe "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", but soldiering onward"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_68
    const-string/jumbo v5, "StorageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignorning non-adoptable disk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_87
    return-void
.end method
