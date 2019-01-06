.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$1;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final SYNTHETIC_PASSWORD_ENABLED_BY_DEFAULT:I = 0x1

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field private mFirstCallToVold:Z

.field protected mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field protected final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/locksettings/LockSettingsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/locksettings/LockSettingsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    const/16 v0, 0x3f2

    const/16 v1, 0x3f8

    const/16 v2, 0x3e8

    filled-new-array {v0, v1, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v6

    const-string/jumbo v1, "lockscreen.password_type_alternate"

    aput-object v1, v0, v7

    const-string/jumbo v1, "lockscreen.password_salt"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.disabled"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.options"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "lockscreen.passwordhistory"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "lock_pattern_autolock"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "lock_biometric_weak_flags"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.password_salt"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lockscreen.passwordhistory"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "lockscreen.profilechallenge"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    aput-object v1, v0, v5

    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    return-void
.end method

.method private activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v0, v1, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_44

    goto :goto_10

    :catchall_44
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_47
    monitor-exit v4

    return-void
.end method

.method private addUserKeyAuth(I[B[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_10
    iget v4, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v2, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private checkCryptKeeperPermissions()Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v4, "no permission to get the password"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return v1

    :catch_d
    move-exception v0

    const/4 v1, 0x1

    goto :goto_c
.end method

.method private final checkPasswordHavePermission(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "28251513"

    aput-object v1, v0, v2

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_2b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_60

    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_60
    const/4 v1, 0x0

    :goto_61
    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_bc

    sget-object v3, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_b9

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_bc
    return-void
.end method

.method private final checkWritePermission(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearUserKeyProtection(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Managed profile can have escrow token"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_98
    .catchall {:try_start_4 .. :try_end_19} :catchall_a6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1d
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v4}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_36

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Corp-owned device can have escrow token"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_98
    .catchall {:try_start_1d .. :try_end_32} :catchall_a6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_36
    :try_start_36
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_49

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "User with profile owner can have escrow token"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_45} :catch_98
    .catchall {:try_start_36 .. :try_end_45} :catchall_a6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_49
    :try_start_49
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_5c

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_58} :catch_98
    .catchall {:try_start_49 .. :try_end_58} :catchall_a6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_5c
    :try_start_5c
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.automotive"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_68} :catch_98
    .catchall {:try_start_5c .. :try_end_68} :catchall_a6

    move-result v4

    if-eqz v4, :cond_6f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6f
    :try_start_6f
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Disabling escrow token on user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_94

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_94} :catch_98
    .catchall {:try_start_6f .. :try_end_94} :catchall_a6

    :cond_94
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_97
    return-void

    :catch_98
    move-exception v1

    :try_start_99
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "disableEscrowTokenOnNonManagedDevices"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_a6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_97

    :catchall_a6
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Credential can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    const/16 v3, -0x270f

    move/from16 v0, p6

    if-ne v0, v3, :cond_31

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_31

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "FRP credential can only be verified prior to provisioning."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v3

    :cond_31
    const/4 v2, 0x0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    if-eqz v2, :cond_39

    return-object v2

    :cond_39
    const/16 v3, -0x270f

    move/from16 v0, p6

    if-ne v0, v3, :cond_4b

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "Unexpected FRP credential type, should be SP based."

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v3

    :cond_4b
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v5

    iget v3, v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move/from16 v0, p2

    if-eq v3, v0, :cond_85

    const-string/jumbo v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " passed in: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v3

    :cond_85
    iget v3, v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_bb

    iget-boolean v13, v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    :goto_8c
    if-eqz v13, :cond_bd

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_92
    move-object v3, p0

    move/from16 v4, p6

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_ba

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    if-eqz v13, :cond_ba

    iget v9, v5, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/high16 v11, 0x10000

    move-object v7, p0

    move-object v8, p1

    move-object v10, v6

    move/from16 v12, p6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    :cond_ba
    return-object v2

    :cond_bb
    const/4 v13, 0x0

    goto :goto_8c

    :cond_bd
    move-object v6, p1

    goto :goto_92
.end method

.method private enableSyntheticPasswordLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "enable-sp"

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method private enforceShell()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    if-nez p2, :cond_15

    const/4 v0, 0x0

    :goto_7
    if-nez p3, :cond_1a

    const/4 v3, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    if-nez v2, :cond_1f

    return-object v5

    :cond_15
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7

    :cond_1a
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_a

    :cond_1f
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_28
    return-object v1

    :cond_29
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private ensureCallerSystemUid()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->binderGetCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_13

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Only system can call this API."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    return-void
.end method

.method private ensureProfileKeystoreUnlocked(I)V
    .registers 6

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Managed profile got unlocked, will unlock its keystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :try_start_22
    invoke-direct {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Failed to unlock child profile"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private fixateNewestUserKeyAuth(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_a
    invoke-interface {v2, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_11

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x0

    return-object v7

    :cond_e
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v6, :cond_61

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_2f

    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2f
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    if-nez v7, :cond_2c

    :try_start_39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/security/KeyStoreException; {:try_start_39 .. :try_end_44} :catch_45
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_39 .. :try_end_44} :catch_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_39 .. :try_end_44} :catch_45
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_39 .. :try_end_44} :catch_45
    .catch Ljava/security/InvalidKeyException; {:try_start_39 .. :try_end_44} :catch_45
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_39 .. :try_end_44} :catch_45
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_39 .. :try_end_44} :catch_45
    .catch Ljavax/crypto/BadPaddingException; {:try_start_39 .. :try_end_44} :catch_45
    .catch Ljava/security/cert/CertificateException; {:try_start_39 .. :try_end_44} :catch_45
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_44} :catch_45

    goto :goto_2c

    :catch_45
    move-exception v0

    const-string/jumbo v7, "LockSettingsService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    :cond_61
    return-object v5
.end method

.method private getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "lockscreen.password_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->readFrpPasswordQuality()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSyntheticPasswordHandleLocked(I)J
    .registers 6

    const-string/jumbo v0, "sp-handle"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private isCallerShell()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_c

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return v1

    :cond_d
    move v1, v2

    goto :goto_c
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .registers 3

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .registers 3

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, -0x270f

    if-ne p1, v7, :cond_18

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v7

    iget v4, v7, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-eq v4, v5, :cond_15

    const/4 v7, 0x2

    if-ne v4, v7, :cond_16

    :cond_15
    :goto_15
    return v5

    :cond_16
    move v5, v6

    goto :goto_15

    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    const-string/jumbo v7, "enable-sp"

    const-wide/16 v8, 0x1

    invoke-virtual {p0, v7, v8, v9, v6}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    cmp-long v7, v0, v10

    if-eqz v7, :cond_2e

    cmp-long v7, v2, v10

    if-eqz v7, :cond_2e

    move v6, v5

    :cond_2e
    return v6
.end method

.method private isUserSecure(I)Z
    .registers 8

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_12} :catch_1b
    .catchall {:try_start_3 .. :try_end_12} :catchall_24

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_19

    const/4 v1, 0x1

    :goto_17
    monitor-exit v4

    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_17

    :catch_1b
    move-exception v0

    :cond_1c
    monitor-exit v4

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasCredential(I)Z

    move-result v1

    return v1

    :catchall_24
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method private maybeShowEncryptionNotificationForUser(I)V
    .registers 8

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_d

    return-void

    :cond_d
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    :cond_42
    return-void
.end method

.method private migrateFrpCredential()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v3

    sget-object v4, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v3, v4, :cond_b

    return-void

    :cond_b
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v4

    :try_start_34
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string/jumbo v3, "lockscreen.password_type"

    const-wide/16 v6, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3, v6, v7, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v0, v6

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result v5

    invoke-virtual {v3, v6, v7, v1, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    :try_end_57
    .catchall {:try_start_34 .. :try_end_57} :catchall_59

    :cond_57
    monitor-exit v4

    return-void

    :catchall_59
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_5c
    return-void
.end method

.method private migrateOldData()V
    .registers 39

    :try_start_0
    const-string/jumbo v34, "migrated"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v35, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    const/16 v34, 0x0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v36, v0

    :goto_28
    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_48

    aget-object v32, v35, v34

    move-object/from16 v0, v32

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_45

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_45
    add-int/lit8 v34, v34, 0x1

    goto :goto_28

    :cond_48
    const-string/jumbo v34, "migrated"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated lock settings to new location"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    const-string/jumbo v34, "migrated_user_specific"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_15e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v31

    const/16 v25, 0x0

    :goto_8f
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v25

    move/from16 v1, v34

    if-ge v0, v1, :cond_142

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    const-string/jumbo v6, "lock_screen_owner_info"

    const-string/jumbo v34, "lock_screen_owner_info"

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_da

    const-string/jumbo v34, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v20

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "lock_screen_owner_info"

    const-string/jumbo v35, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v29

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_da
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_dd} :catch_131

    :try_start_dd
    const-string/jumbo v34, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_114

    const/4 v14, 0x1

    :goto_eb
    const-string/jumbo v35, "lock_screen_owner_info_enabled"

    if-eqz v14, :cond_116

    const/16 v34, 0x1

    :goto_f2
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_102
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_dd .. :try_end_102} :catch_119
    .catch Landroid/os/RemoteException; {:try_start_dd .. :try_end_102} :catch_131

    :cond_102
    :goto_102
    :try_start_102
    const-string/jumbo v34, "lock_screen_owner_info_enabled"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v29

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_8f

    :cond_114
    const/4 v14, 0x0

    goto :goto_eb

    :cond_116
    const/16 v34, 0x0

    goto :goto_f2

    :catch_119
    move-exception v12

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_102

    const-string/jumbo v34, "lock_screen_owner_info_enabled"

    const-wide/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_130
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_130} :catch_131

    goto :goto_102

    :catch_131
    move-exception v21

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Unable to migrate old data"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_141
    :goto_141
    return-void

    :cond_142
    :try_start_142
    const-string/jumbo v34, "migrated_user_specific"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated per-user lock settings to new location"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15e
    const-string/jumbo v34, "migrated_biometric_weak"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_1f8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v31

    const/4 v15, 0x0

    :goto_17e
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_1dc

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v29, v0

    const-string/jumbo v34, "lockscreen.password_type"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v26

    const-string/jumbo v34, "lockscreen.password_type_alternate"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v10

    const-wide/32 v34, 0x8000

    cmp-long v34, v26, v34

    if-nez v34, :cond_1c9

    const-string/jumbo v34, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    :cond_1c9
    const-string/jumbo v34, "lockscreen.password_type_alternate"

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_17e

    :cond_1dc
    const-string/jumbo v34, "migrated_biometric_weak"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f8
    const-string/jumbo v34, "migrated_lockscreen_disabled"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_292

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v28

    const/16 v24, 0x0

    const/4 v15, 0x0

    :goto_21e
    move/from16 v0, v28

    if-ge v15, v0, :cond_235

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v34 .. v34}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v34

    if-eqz v34, :cond_232

    add-int/lit8 v24, v24, 0x1

    :cond_232
    add-int/lit8 v15, v15, 0x1

    goto :goto_21e

    :cond_235
    const/16 v34, 0x1

    move/from16 v0, v24

    move/from16 v1, v34

    if-le v0, v1, :cond_276

    const/4 v15, 0x0

    :goto_23e
    move/from16 v0, v28

    if-ge v15, v0, :cond_276

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    const-string/jumbo v34, "lockscreen.disabled"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v34

    if-eqz v34, :cond_273

    const-string/jumbo v34, "lockscreen.disabled"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    :cond_273
    add-int/lit8 v15, v15, 0x1

    goto :goto_23e

    :cond_276
    const-string/jumbo v34, "migrated_lockscreen_disabled"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated lockscreen disabled flag"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v31

    const/4 v15, 0x0

    :goto_29d
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_372

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v34

    if-eqz v34, :cond_302

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move-object/from16 v34, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v34

    if-eqz v34, :cond_302

    const-string/jumbo v34, "lockscreen.password_type"

    const-wide/16 v36, 0x0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    const-wide/16 v34, 0x0

    cmp-long v34, v22, v34

    if-nez v34, :cond_33d

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated tied profile lock type"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v34, "lockscreen.password_type"

    const-wide/32 v36, 0x50000

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_302
    .catch Landroid/os/RemoteException; {:try_start_142 .. :try_end_302} :catch_131

    :cond_302
    :goto_302
    :try_start_302
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "profile_key_name_encrypt_"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v30

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v34, "AndroidKeyStore"

    invoke-static/range {v34 .. v34}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v19

    const/16 v34, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_339

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_339
    .catch Ljava/security/KeyStoreException; {:try_start_302 .. :try_end_339} :catch_363
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_302 .. :try_end_339} :catch_363
    .catch Ljava/security/cert/CertificateException; {:try_start_302 .. :try_end_339} :catch_363
    .catch Ljava/io/IOException; {:try_start_302 .. :try_end_339} :catch_363
    .catch Landroid/os/RemoteException; {:try_start_302 .. :try_end_339} :catch_131

    :cond_339
    :goto_339
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_29d

    :cond_33d
    const-wide/32 v34, 0x50000

    cmp-long v34, v22, v34

    if-eqz v34, :cond_302

    :try_start_344
    const-string/jumbo v34, "LockSettingsService"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "Invalid tied profile lock type: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_302

    :catch_363
    move-exception v13

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Unable to remove tied profile key"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_339

    :cond_372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v34

    const-string/jumbo v35, "android.hardware.type.watch"

    invoke-virtual/range {v34 .. v35}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_141

    const-string/jumbo v34, "migrated_wear_lockscreen_disabled"

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_141

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v28

    const/4 v15, 0x0

    :goto_39f
    move/from16 v0, v28

    if-ge v15, v0, :cond_3c4

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    const-string/jumbo v34, "lockscreen.disabled"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_39f

    :cond_3c4
    const-string/jumbo v34, "migrated_wear_lockscreen_disabled"

    const-string/jumbo v35, "true"

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v34, "LockSettingsService"

    const-string/jumbo v35, "Migrated lockscreen_disabled for Wear devices"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e0
    .catch Landroid/os/RemoteException; {:try_start_344 .. :try_end_3e0} :catch_131

    goto/16 :goto_141
.end method

.method private migrateOldDataAfterSystemReady()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string/jumbo v1, "migrated_frp"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_29

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    const-string/jumbo v1, "migrated_frp"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Migrated migrated_frp."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2a

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Unable to migrateOldDataAfterSystemReady"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29
.end method

.method private notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V
    .registers 6

    if-nez p1, :cond_12

    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics;-><init>()V

    :goto_7
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;

    invoke-direct {v2, p2, p0, v0}, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_12
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    iput v1, v0, Landroid/app/admin/PasswordMetrics;->quality:I

    goto :goto_7
.end method

.method private notifyPasswordChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw;

    invoke-direct {v1, p1, p0}, Lcom/android/server/locksettings/-$Lambda$uuAdbltCNvfImff6TxhVt9IC9Qw;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readFrpPasswordQuality()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    iget v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    return v0
.end method

.method private redactActualQualityToMostLenientEquivalentQuality(I)I
    .registers 3

    sparse-switch p1, :sswitch_data_a

    return p1

    :sswitch_4
    const/high16 v0, 0x40000

    return v0

    :sswitch_7
    const/high16 v0, 0x20000

    return v0

    :sswitch_data_a
    .sparse-switch
        0x20000 -> :sswitch_7
        0x30000 -> :sswitch_7
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
    .end sparse-switch
.end method

.method private removeKeystoreProfileKey(I)V
    .registers 7

    :try_start_0
    const-string/jumbo v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_encrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_decrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_39} :catch_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_39} :catch_3a
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_39} :catch_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v0

    const-string/jumbo v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to remove keystore profile key for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method private removeUser(IZ)V
    .registers 8

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1f} :catch_31

    :cond_1f
    :goto_1f
    if-nez p2, :cond_2d

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2d
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    :cond_30
    return-void

    :catch_31
    move-exception v0

    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private static secretFromCredential(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v3, "SHA-512"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string/jumbo v3, "Android FBE credential hash"

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v3

    return-object v3

    :catch_27
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setAuthlessUserKeyProtection(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    return-void
.end method

.method private setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 p3, 0x0

    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 p1, 0x0

    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v5

    :try_start_15
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_72

    monitor-exit v5

    return-void

    :cond_24
    monitor-exit v5

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_75

    if-eqz p1, :cond_35

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "CredentialType is none, but credential is non-null."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move/from16 v0, p5

    invoke-interface {v4, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    return-void

    :catchall_72
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_75
    if-nez p1, :cond_80

    new-instance v4, Landroid/os/RemoteException;

    const-string/jumbo v5, "Null credential with mismatched credential type"

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_80
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v12

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v4

    if-eqz v4, :cond_d7

    if-nez p3, :cond_9e

    :try_start_96
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_9d
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_9d} :catch_cc
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_96 .. :try_end_9d} :catch_c1
    .catch Ljava/security/InvalidKeyException; {:try_start_96 .. :try_end_9d} :catch_c1
    .catch Ljava/security/KeyStoreException; {:try_start_96 .. :try_end_9d} :catch_c1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_96 .. :try_end_9d} :catch_c1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_96 .. :try_end_9d} :catch_c1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_96 .. :try_end_9d} :catch_c1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_96 .. :try_end_9d} :catch_c1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_96 .. :try_end_9d} :catch_c1
    .catch Ljava/security/cert/CertificateException; {:try_start_96 .. :try_end_9d} :catch_c1
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9d} :catch_c1

    move-result-object p3

    :cond_9e
    :goto_9e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v10

    :try_start_a3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v4

    if-eqz v4, :cond_e9

    iget-object v5, v12, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    iget v7, v12, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_bf
    .catchall {:try_start_a3 .. :try_end_bf} :catchall_14f

    monitor-exit v10

    return-void

    :catch_c1
    move-exception v14

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Failed to decrypt child profile key"

    invoke-static {v4, v5, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9e

    :catch_cc
    move-exception v13

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Child profile key not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :cond_d7
    iget-object v4, v12, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v4, :cond_9e

    if-eqz p3, :cond_e6

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Saved credential provided, but none stored"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    const/16 p3, 0x0

    goto :goto_9e

    :cond_e9
    monitor-exit v10

    iget-object v4, v12, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move/from16 v3, p5

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v15

    if-eqz v15, :cond_152

    move/from16 v0, p2

    invoke-static {v15, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const-wide/16 v6, 0x0

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v10, p5

    invoke-direct/range {v4 .. v11}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    return-void

    :catchall_14f
    move-exception v4

    monitor-exit v10

    throw v4

    :cond_152
    new-instance v5, Landroid/os/RemoteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to enroll "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_174

    const-string/jumbo v4, "password"

    :goto_168
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_174
    const-string/jumbo v4, "pattern"

    goto :goto_168
.end method

.method private setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v8

    if-eqz p1, :cond_5c

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    :goto_27
    const-string/jumbo v0, "sp-handle"

    invoke-virtual {p0, v0, v8, v9, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-direct {p0, p5, v7}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    invoke-direct {p0, p1, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    return-wide v8

    :cond_34
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    const-wide/16 v4, 0x0

    move-object v3, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    invoke-virtual {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_27

    :cond_5c
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v7

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p5}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_27
.end method

.method private setLockCredentialWithTokenInternal(Ljava/lang/String;IJ[BII)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v11

    :try_start_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v10

    iget-object v2, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_23

    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Invalid escrow token supplied"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_5e

    const/4 v2, 0x0

    monitor-exit v11

    return v2

    :cond_23
    :try_start_23
    iget-object v2, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_37

    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Obsolete token: synthetic password derived but it fails GK verification."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_5e

    const/4 v2, 0x0

    monitor-exit v11

    return v2

    :cond_37
    :try_start_37
    const-string/jumbo v2, "lockscreen.password_type"

    move/from16 v0, p6

    int-to-long v4, v0

    move/from16 v0, p7

    invoke-virtual {p0, v2, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v8

    iget-object v5, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move/from16 v0, p7

    invoke-virtual {v2, v8, v9, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_5e

    const/4 v2, 0x1

    monitor-exit v11

    return v2

    :catchall_5e
    move-exception v2

    monitor-exit v11

    throw v2
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    const/16 v0, -0x270f

    if-eq p2, v0, :cond_1f

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "cannot store lock settings for FRP user"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/locksettings/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_b

    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Null response verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-OK response verifying a credential we just set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    if-nez v0, :cond_3e

    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3e
    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    return-void
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 11

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10804ec

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x1060161

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .registers 12

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v0, 0x1040678

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v0, 0x104054f

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v0, 0x104054e

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v6, v9, v9, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_32

    return-void

    :cond_32
    const/high16 v0, 0x10800000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v9, 0x8000000

    invoke-static {v0, v1, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private spBasedDoVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_7

    const/16 p1, 0x0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_e
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_11d

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, 0x0

    monitor-exit v19

    return-object v4

    :cond_1b
    const/16 v4, -0x270f

    move/from16 v0, p6

    if-ne v0, v4, :cond_35

    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p7

    invoke-virtual {v4, v5, v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_11d

    move-result-object v4

    monitor-exit v19

    return-object v4

    :cond_35
    :try_start_35
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    move-object/from16 v8, p1

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v15

    iget v4, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->credentialType:I

    move/from16 v0, p2

    if-eq v4, v0, :cond_60

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Credential type mismatch."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_5e
    .catchall {:try_start_35 .. :try_end_5e} :catchall_11d

    monitor-exit v19

    return-object v4

    :cond_60
    :try_start_60
    iget-object v0, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_8f

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v10

    iget-object v11, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-wide/from16 v12, p4

    move/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-eqz v4, :cond_8f

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge with SP failed."

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_8d
    .catchall {:try_start_60 .. :try_end_8d} :catchall_11d

    monitor-exit v19

    return-object v4

    :cond_8f
    monitor-exit v19

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_120

    if-eqz p7, :cond_9b

    invoke-interface/range {p7 .. p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    :cond_9b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    iget-object v4, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    iget-object v4, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v17

    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unlocking user "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " with secret only, length "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    array-length v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    iget-object v4, v15, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v4

    if-eqz v4, :cond_113

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "trust"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/trust/TrustManager;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p6

    invoke-virtual {v0, v1, v4}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    :cond_11c
    :goto_11c
    return-object v16

    :catchall_11d
    move-exception v4

    monitor-exit v19

    throw v4

    :cond_120
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11c

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_11c

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_11c
.end method

.method private spBasedSetLockCredentialInternalLocked(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v4

    if-eqz v4, :cond_12

    :try_start_a
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_11} :catch_67
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_a .. :try_end_11} :catch_5a
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_11} :catch_5a
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_11} :catch_5a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_11} :catch_5a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a .. :try_end_11} :catch_5a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_11} :catch_5a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a .. :try_end_11} :catch_5a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a .. :try_end_11} :catch_5a
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_11} :catch_5a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_5a

    move-result-object p3

    :cond_12
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    move-object/from16 v8, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz p3, :cond_76

    if-nez v11, :cond_76

    new-instance v5, Landroid/os/RemoteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to enroll "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_72

    const-string/jumbo v4, "password"

    :goto_4e
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_5a
    move-exception v20

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Failed to decrypt child profile key"

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :catch_67
    move-exception v19

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Child profile key not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_72
    const-string/jumbo v4, "pattern"

    goto :goto_4e

    :cond_76
    if-eqz v11, :cond_8f

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move/from16 v0, p5

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    :goto_8e
    return-void

    :cond_8f
    if-eqz v21, :cond_ca

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_ca

    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Untrusted credential change invoked"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p4

    move/from16 v17, p5

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move/from16 v0, p5

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    goto :goto_8e

    :cond_ca
    const-string/jumbo v5, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "spBasedSetLockCredentialInternalLocked: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v21, :cond_ea

    const-string/jumbo v4, "rate limit exceeded"

    :goto_de
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ea
    const-string/jumbo v4, "failed"

    goto :goto_de
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v7

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v10, :cond_81

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_3c

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_3c
    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_46
    :goto_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_49
    if-eqz v7, :cond_4f

    invoke-virtual {p0, v5, v1}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    goto :goto_46

    :cond_4f
    if-eqz p2, :cond_72

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    :goto_69
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_46

    :cond_72
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v3, "clear tied profile challenges, but no password supplied."

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    goto :goto_69

    :cond_81
    return-void
.end method

.method private tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_37

    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-nez v0, :cond_35

    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x1

    goto :goto_34

    :cond_37
    const/4 v0, 0x0

    goto :goto_34
.end method

.method private unlockChildProfile(IZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v8

    instance-of v0, v8, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Child profile key not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_1e
    if-eqz p2, :cond_2e

    instance-of v0, v8, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Parent keystore seems locked, ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_2e
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Failed to decrypt child profile key"

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    return-void
.end method

.method private unlockUser(I[B[B)V
    .registers 14

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v3, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    :try_start_b
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v7, p1, p2, p3, v3}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_59

    const-wide/16 v8, 0xf

    :try_start_12
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_17} :catch_5f

    :goto_17
    :try_start_17
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_58

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_58

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_35
    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->tiedManagedProfileReadyToUnlock(Landroid/content/pm/UserInfo;)Z

    move-result v7

    if-eqz v7, :cond_35

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZ)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_4d} :catch_4e

    goto :goto_35

    :catch_4e
    move-exception v0

    const-string/jumbo v7, "LockSettingsService"

    const-string/jumbo v8, "Failed to unlock child profile"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_58
    return-void

    :catch_59
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    :catch_5f
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_17
.end method

.method private verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_12

    :cond_9
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    :cond_12
    if-eqz p2, :cond_1a

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1a
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    :cond_1d
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_be

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a1

    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v13

    :goto_35
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v13, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_bb

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_ae

    invoke-static/range {p3 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    :goto_51
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlocking user with fake token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11, v11}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b8

    const/high16 v8, 0x10000

    :goto_89
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    if-nez p4, :cond_be

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    :cond_a1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v13

    goto :goto_35

    :cond_ae
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    goto :goto_51

    :cond_b8
    const/high16 v8, 0x50000

    goto :goto_89

    :cond_bb
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    :cond_be
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v14

    invoke-virtual {v12}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v15

    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_198

    if-eqz p7, :cond_e7

    invoke-interface/range {p7 .. p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    :cond_e7
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlocking user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " with token length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v4

    if-eqz v4, :cond_14f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "trust"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/trust/TrustManager;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    :cond_14f
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_16a

    const/high16 v8, 0x10000

    :goto_158
    if-eqz v15, :cond_16d

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v7, p3

    move/from16 v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    :cond_169
    :goto_169
    return-object v14

    :cond_16a
    const/high16 v8, 0x50000

    goto :goto_158

    :cond_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_174
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v4

    if-eqz v4, :cond_193

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v10

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    :try_end_193
    .catchall {:try_start_174 .. :try_end_193} :catchall_195

    :cond_193
    monitor-exit v17

    goto :goto_169

    :catchall_195
    move-exception v4

    monitor-exit v17

    throw v4

    :cond_198
    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_169

    invoke-virtual {v14}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_169

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_169
.end method


# virtual methods
.method public addEscrowToken([BI)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->ensureCallerSystemUid()V

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v7

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enableSyntheticPasswordLocked()V

    const/4 v6, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v6

    :cond_20
    :goto_20
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Escrow token is disabled on the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_3d
    :try_start_3d
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const/4 v4, 0x0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLjava/lang/String;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    goto :goto_20

    :cond_50
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BI)J

    move-result-wide v8

    if-eqz v6, :cond_5d

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, v8, v9, v6, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    :try_end_5d
    .catchall {:try_start_3d .. :try_end_5d} :catchall_3a

    :cond_5d
    monitor-exit v7

    return-wide v8
.end method

.method public checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1a

    if-nez p3, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    :cond_1a
    return-object v8
.end method

.method public checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    invoke-static {p1, p2, p3}, Landroid/security/MiuiLockPatternUtils;->checkPrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkVoldPassword(I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    if-nez v5, :cond_7

    return v7

    :cond_7
    iput-boolean v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_16
    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->clearPassword()V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_23

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_28

    return v7

    :catchall_23
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_28
    :try_start_28
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, p1, v6}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_39} :catch_3d

    move-result v5

    if-nez v5, :cond_3e

    return v8

    :catch_3d
    move-exception v0

    :cond_3e
    :try_start_3e
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_54

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {p0, v1, v5, p1, v6}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4f} :catch_53

    move-result v5

    if-nez v5, :cond_54

    return v8

    :catch_53
    move-exception v0

    :cond_54
    return v7
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "LockSettingsService"

    invoke-static {v4, v5, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v4

    if-nez v4, :cond_e

    return-void

    :cond_e
    const-string/jumbo v4, "Current lock settings service state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "SP Enabled = %b"

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isSyntheticPasswordEnabled()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    :goto_33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_96

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v5

    :try_start_5b
    const-string/jumbo v4, "        SP Handle = %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_93

    monitor-exit v5

    :try_start_74
    const-string/jumbo v4, "        SID = %x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_90} :catch_97

    :goto_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :catchall_93
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_96
    return-void

    :catch_97
    move-exception v0

    goto :goto_90
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .registers 6

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return p2

    :cond_f
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_e

    :cond_20
    const/4 p2, 0x1

    goto :goto_e
.end method

.method protected getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0xc

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v7, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v6

    if-nez v6, :cond_14

    new-instance v7, Ljava/io/FileNotFoundException;

    const-string/jumbo v8, "Child profile lock file not found"

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_14
    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    array-length v7, v6

    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const-string/jumbo v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profile_key_name_decrypt_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v9}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    const-string/jumbo v7, "AES/GCM/NoPadding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v7
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_32

    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_a
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_32

    monitor-exit p0

    return-object v1

    :cond_27
    :try_start_27
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Unable to acquire GateKeeperService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-object v3

    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLong(Ljava/lang/String;JI)J
    .registers 7

    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return-wide p2

    :cond_f
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_e
.end method

.method public getPassword()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkCryptKeeperPermissions()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MANAGE_DEVICE_ADMINS"

    const-string/jumbo v2, "no crypt_keeper or admin permission to get the password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    sget-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    const-string/jumbo v0, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_13

    move-result v0

    monitor-exit v1

    return v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string/jumbo v2, "1"
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_20

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_1c
    :try_start_1c
    const-string/jumbo v2, "0"
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_18

    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_25
    const/16 v2, -0x270f

    if-ne p3, v2, :cond_2e

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getFrpStringUnchecked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2e
    const-string/jumbo v2, "legacy_lock_pattern_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo p1, "lock_pattern_autolock"

    :cond_3a
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getStrongAuthForUser(I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method public havePassword(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_26

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1c

    const/4 v2, 0x1

    :goto_1a
    monitor-exit v3

    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1a

    :cond_1e
    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v2

    return v2

    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public havePattern(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v0, v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_25

    move-result v4

    if-ne v4, v2, :cond_1b

    :goto_19
    monitor-exit v3

    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_19

    :cond_1d
    monitor-exit v3

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v2

    return v2

    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected initializeSyntheticPasswordLocked([BLjava/lang/String;III)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const-string/jumbo v0, "LockSettingsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initialize SyntheticPassword for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLjava/lang/String;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v4

    if-nez v4, :cond_31

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_31
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Ljava/lang/String;ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;II)J

    move-result-wide v8

    if-eqz p2, :cond_70

    if-nez p1, :cond_4c

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, v4, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    :cond_4c
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const-wide/16 v5, 0x0

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_66
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    const-string/jumbo v0, "sp-handle"

    invoke-virtual {p0, v0, v8, v9, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    return-object v4

    :cond_70
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I)V

    invoke-direct {p0, v7, p5}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p5}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    goto :goto_66
.end method

.method public isEscrowTokenActive(JI)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->ensureCallerSystemUid()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method synthetic lambda$-com_android_server_locksettings_LockSettingsService_84353(Landroid/app/admin/PasswordMetrics;I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method synthetic lambda$-com_android_server_locksettings_LockSettingsService_84901(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 3

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_7
    new-instance v0, Lcom/android/server/locksettings/LockSettingsShellCommand;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_24

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_24
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onStartUser(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public removeEscrowToken(JI)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->ensureCallerSystemUid()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    :try_start_8
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-nez v0, :cond_1b

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v2, "Cannot remove password handle"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_36

    monitor-exit v1

    return v4

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_36

    move-result v0

    if-eqz v0, :cond_25

    monitor-exit v1

    return v5

    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_36

    monitor-exit v1

    return v5

    :cond_34
    monitor-exit v1

    return v4

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public requireStrongAuth(II)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public resetKeyStore(I)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    const/4 v3, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_13
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_13

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, -0x1

    if-ne v3, v9, :cond_4d

    :try_start_42
    iget v9, v4, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_13

    :cond_4d
    const-string/jumbo v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "More than one managed profile, uid1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", uid2:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_42 .. :try_end_74} :catch_75
    .catch Ljava/security/InvalidKeyException; {:try_start_42 .. :try_end_74} :catch_75
    .catch Ljava/security/KeyStoreException; {:try_start_42 .. :try_end_74} :catch_75
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_42 .. :try_end_74} :catch_75
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_42 .. :try_end_74} :catch_75
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_42 .. :try_end_74} :catch_75
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_42 .. :try_end_74} :catch_75
    .catch Ljavax/crypto/BadPaddingException; {:try_start_42 .. :try_end_74} :catch_75
    .catch Ljava/security/cert/CertificateException; {:try_start_42 .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_74} :catch_75

    goto :goto_13

    :catch_75
    move-exception v1

    const-string/jumbo v9, "LockSettingsService"

    const-string/jumbo v10, "Failed to decrypt child profile key"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_80
    :try_start_80
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v11

    const/4 v9, 0x0

    array-length v12, v11

    move v10, v9

    :goto_8d
    if-ge v10, v12, :cond_ab

    aget v6, v11, v10

    sget-object v13, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    const/4 v9, 0x0

    array-length v14, v13

    :goto_95
    if-ge v9, v14, :cond_a7

    aget v8, v13, v9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_a4
    .catchall {:try_start_80 .. :try_end_a4} :catchall_b6

    add-int/lit8 v9, v9, 0x1

    goto :goto_95

    :cond_a7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_8d

    :cond_ab
    const/4 v9, -0x1

    if-eq v3, v9, :cond_b5

    if-eqz v2, :cond_b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    :cond_b5
    return-void

    :catchall_b6
    move-exception v9

    const/4 v10, -0x1

    if-eq v3, v10, :cond_c1

    if-eqz v2, :cond_c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    :cond_c1
    throw v9
.end method

.method public retainPassword(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_b

    sput-object p1, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    :cond_a
    :goto_a
    return-void

    :cond_b
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    goto :goto_a
.end method

.method public sanitizePassword()V
    .registers 2

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    :cond_b
    return-void
.end method

.method public savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    invoke-static {p1, p2, p3}, Landroid/security/MiuiLockPatternUtils;->savePrivacyPasswordPattern(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    if-eqz p2, :cond_c

    const-string/jumbo v0, "1"

    :goto_8
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_c
    const-string/jumbo v0, "0"

    goto :goto_8
.end method

.method public setLockCredential(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p5, v0, v2}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_13

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->ensureCallerSystemUid()V

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Escrow token is disabled on the current user"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1a
    :try_start_1a
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternal(Ljava/lang/String;IJ[BII)Z
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_17

    move-result v0

    monitor-exit v2

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_26
    invoke-virtual {p0, p7, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2e

    monitor-exit v1

    invoke-direct {p0, p7}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    :cond_2d
    return v0

    :catchall_2e
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public setLong(Ljava/lang/String;JI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setRawLockPassword([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    if-eqz p2, :cond_18

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1c

    :goto_16
    monitor-exit v1

    return-void

    :cond_18
    :try_start_18
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_16

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected shouldMigrateToSyntheticPasswordLocked(I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    const-string/jumbo v5, "enable-sp"

    const-wide/16 v6, 0x1

    invoke-virtual {p0, v5, v6, v7, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    cmp-long v5, v0, v8

    if-eqz v5, :cond_19

    cmp-long v5, v2, v8

    if-nez v5, :cond_19

    const/4 v4, 0x1

    :cond_19
    return v4
.end method

.method public systemReady()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "28251513"

    aput-object v2, v1, v4

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, ""

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_2b
    invoke-direct {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_39} :catch_49

    :goto_39
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->systemReady()V

    return-void

    :catch_49
    move-exception v0

    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method public tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2f

    return-void

    :cond_2f
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v8, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_3e

    return-void

    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_45} :catch_4d

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_58

    return-void

    :catch_4d
    move-exception v6

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v2, "Failed to talk to GateKeeper service"

    invoke-static {v0, v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_58
    const/4 v0, 0x0

    new-array v10, v0, [B

    :try_start_5b
    const-string/jumbo v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v10

    invoke-static {v10}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    const/high16 v9, 0x50000

    const/4 v2, 0x2

    const/high16 v4, 0x50000

    move-object v0, p0

    move-object v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Ljava/lang/String;ILjava/lang/String;II)V

    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/32 v2, 0x50000

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V
    :try_end_87
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5b .. :try_end_87} :catch_88
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_87} :catch_88

    :goto_87
    return-void

    :catch_88
    move-exception v7

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v2, "Fail to tie managed profile"

    invoke-static {v0, v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_87
.end method

.method protected tieProfileLockToParent(ILjava/lang/String;)V
    .registers 21

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    :try_start_8
    const-string/jumbo v12, "AES"

    invoke-static {v12}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v6

    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v12}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v6}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    const-string/jumbo v12, "AndroidKeyStore"

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_26
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_26} :catch_151
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_8 .. :try_end_26} :catch_151
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_26} :catch_151
    .catch Ljavax/crypto/BadPaddingException; {:try_start_8 .. :try_end_26} :catch_151
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_8 .. :try_end_26} :catch_151
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_26} :catch_151
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_26} :catch_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_26} :catch_151
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_26} :catch_151

    :try_start_26
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const-string/jumbo v16, "GCM"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const-string/jumbo v16, "NoPadding"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v14

    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_decrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const-string/jumbo v16, "GCM"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const-string/jumbo v16, "NoPadding"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/16 v15, 0x1e

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v14

    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v8

    check-cast v8, Ljavax/crypto/SecretKey;

    const-string/jumbo v12, "AES/GCM/NoPadding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B
    :try_end_ed
    .catchall {:try_start_26 .. :try_end_ed} :catchall_136

    move-result-object v5

    :try_start_ee
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/security/cert/CertificateException; {:try_start_ee .. :try_end_107} :catch_151
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_ee .. :try_end_107} :catch_151
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_107} :catch_151
    .catch Ljavax/crypto/BadPaddingException; {:try_start_ee .. :try_end_107} :catch_151
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_ee .. :try_end_107} :catch_151
    .catch Ljava/security/KeyStoreException; {:try_start_ee .. :try_end_107} :catch_151
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_ee .. :try_end_107} :catch_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ee .. :try_end_107} :catch_151
    .catch Ljava/security/InvalidKeyException; {:try_start_ee .. :try_end_107} :catch_151

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_10c
    array-length v12, v5

    const/16 v13, 0xc

    if-eq v12, v13, :cond_15b

    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid iv length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_12c} :catch_12c

    :catch_12c
    move-exception v2

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Failed to concatenate byte arrays"

    invoke-direct {v12, v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :catchall_136
    move-exception v12

    :try_start_137
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "profile_key_name_encrypt_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    throw v12
    :try_end_151
    .catch Ljava/security/cert/CertificateException; {:try_start_137 .. :try_end_151} :catch_151
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_137 .. :try_end_151} :catch_151
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_151} :catch_151
    .catch Ljavax/crypto/BadPaddingException; {:try_start_137 .. :try_end_151} :catch_151
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_137 .. :try_end_151} :catch_151
    .catch Ljava/security/KeyStoreException; {:try_start_137 .. :try_end_151} :catch_151
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_137 .. :try_end_151} :catch_151
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_137 .. :try_end_151} :catch_151
    .catch Ljava/security/InvalidKeyException; {:try_start_137 .. :try_end_151} :catch_151

    :catch_151
    move-exception v3

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Failed to encrypt key"

    invoke-direct {v12, v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    :cond_15b
    :try_start_15b
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_161} :catch_12c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    return-void
.end method

.method public unlockUserWithToken(J[BI)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->ensureCallerSystemUid()V

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v7

    :try_start_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Escrow token is disabled on the current user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v6

    iget-object v0, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v0, :cond_37

    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Invalid escrow token supplied"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_1b .. :try_end_35} :catchall_18

    monitor-exit v7

    return-void

    :cond_37
    monitor-exit v7

    iget-object v0, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    invoke-direct {p0, p4, v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public userPresent(I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    return-void
.end method

.method public verifyCredential(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyTiedProfileChallenge(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v3, "User id must be managed profile with unified lock"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_3b

    return-object v19

    :cond_3b
    :try_start_3b
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-wide/from16 v14, p3

    move/from16 v16, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Ljava/lang/String;IZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_50
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/InvalidKeyException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/KeyStoreException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/security/cert/CertificateException; {:try_start_3b .. :try_end_50} :catch_52
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_50} :catch_52

    move-result-object v2

    return-object v2

    :catch_52
    move-exception v18

    const-string/jumbo v2, "LockSettingsService"

    const-string/jumbo v3, "Failed to decrypt child profile key"

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Landroid/os/RemoteException;

    const-string/jumbo v3, "Unable to get tied profile token"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
