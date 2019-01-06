.class public Lcom/android/server/oemlock/OemLockService;
.super Lcom/android/server/SystemService;
.source "OemLockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oemlock/OemLockService$1;,
        Lcom/android/server/oemlock/OemLockService$2;
    }
.end annotation


# static fields
.field private static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOemLock:Lcom/android/server/oemlock/OemLock;

.field private final mService:Landroid/os/IBinder;

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/oemlock/OemLockService;)Lcom/android/server/oemlock/OemLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/oemlock/OemLockService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/oemlock/OemLockService;->isOemUnlockAllowedByAdmin()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/oemlock/OemLockService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/oemlock/OemLockService;->enforceManageCarrierOemUnlockPermission()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/oemlock/OemLockService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/oemlock/OemLockService;->enforceManageUserOemUnlockPermission()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/oemlock/OemLockService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/oemlock/OemLockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/oemlock/OemLockService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/oemlock/OemLockService;->enforceUserIsAdmin()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/oemlock/OemLockService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/oemlock/OemLockService;->setPersistentDataBlockOemUnlockAllowedBit(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/android/server/oemlock/OemLockService;->getOemLock(Landroid/content/Context;)Lcom/android/server/oemlock/OemLock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/oemlock/OemLockService;-><init>(Landroid/content/Context;Lcom/android/server/oemlock/OemLock;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/oemlock/OemLock;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/oemlock/OemLockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/oemlock/OemLockService$1;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    iput-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    new-instance v0, Lcom/android/server/oemlock/OemLockService$2;

    invoke-direct {v0, p0}, Lcom/android/server/oemlock/OemLockService$2;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    iput-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mService:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    return-void
.end method

.method private enforceManageCarrierOemUnlockPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE"

    const-string/jumbo v2, "Can\'t manage OEM unlock allowed by carrier"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceManageUserOemUnlockPermission()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_USER_OEM_UNLOCK_STATE"

    const-string/jumbo v2, "Can\'t manage OEM unlock allowed by user"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceOemUnlockReadPermission()V
    .registers 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_20

    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_20

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private enforceUserIsAdmin()V
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_8
    iget-object v3, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v3

    if-nez v3, :cond_22

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Must be an admin user"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private static getOemLock(Landroid/content/Context;)Lcom/android/server/oemlock/OemLock;
    .registers 4

    invoke-static {}, Lcom/android/server/oemlock/VendorLock;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Using vendor lock via the HAL"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/oemlock/VendorLock;

    invoke-direct {v1, p0, v0}, Lcom/android/server/oemlock/VendorLock;-><init>(Landroid/content/Context;Landroid/hardware/oemlock/V1_0/IOemLock;)V

    return-object v1

    :cond_15
    const-string/jumbo v1, "OemLock"

    const-string/jumbo v2, "Using persistent data block based lock"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/oemlock/PersistentDataBlockLock;

    invoke-direct {v1, p0}, Lcom/android/server/oemlock/PersistentDataBlockLock;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static isHalPresent()Z
    .registers 1

    invoke-static {}, Lcom/android/server/oemlock/VendorLock;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isOemUnlockAllowedByAdmin()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string/jumbo v1, "no_factory_reset"

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private setPersistentDataBlockOemUnlockAllowedBit(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persistent_data_block"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    instance-of v1, v1, Lcom/android/server/oemlock/PersistentDataBlockLock;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    const-string/jumbo v1, "OemLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update OEM Unlock bit in pst partition to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    :cond_32
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    const-string/jumbo v0, "oem_lock"

    iget-object v1, p0, Lcom/android/server/oemlock/OemLockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oemlock/OemLockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
