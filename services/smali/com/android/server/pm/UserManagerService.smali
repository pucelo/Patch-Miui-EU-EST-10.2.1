.class public Lcom/android/server/pm/UserManagerService;
.super Landroid/os/IUserManager$Stub;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserManagerService$1;,
        Lcom/android/server/pm/UserManagerService$LifeCycle;,
        Lcom/android/server/pm/UserManagerService$LocalService;,
        Lcom/android/server/pm/UserManagerService$MainHandler;,
        Lcom/android/server/pm/UserManagerService$Shell;,
        Lcom/android/server/pm/UserManagerService$UserData;
    }
.end annotation


# static fields
.field private static final ALLOWED_FLAGS_FOR_CREATE_USERS_PERMISSION:I = 0x32c

.field private static final ATTR_CREATION_TIME:Ljava/lang/String; = "created"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GUEST_TO_REMOVE:Ljava/lang/String; = "guestToRemove"

.field private static final ATTR_ICON_PATH:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_LAST_LOGGED_IN_FINGERPRINT:Ljava/lang/String; = "lastLoggedInFingerprint"

.field private static final ATTR_LAST_LOGGED_IN_TIME:Ljava/lang/String; = "lastLoggedIn"

.field private static final ATTR_MULTIPLE:Ljava/lang/String; = "m"

.field private static final ATTR_NEXT_SERIAL_NO:Ljava/lang/String; = "nextSerialNumber"

.field private static final ATTR_PARTIAL:Ljava/lang/String; = "partial"

.field private static final ATTR_PROFILE_BADGE:Ljava/lang/String; = "profileBadge"

.field private static final ATTR_PROFILE_GROUP_ID:Ljava/lang/String; = "profileGroupId"

.field private static final ATTR_RESTRICTED_PROFILE_PARENT_ID:Ljava/lang/String; = "restrictedProfileParentId"

.field private static final ATTR_SEED_ACCOUNT_NAME:Ljava/lang/String; = "seedAccountName"

.field private static final ATTR_SEED_ACCOUNT_TYPE:Ljava/lang/String; = "seedAccountType"

.field private static final ATTR_SERIAL_NO:Ljava/lang/String; = "serialNumber"

.field private static final ATTR_TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final ATTR_TYPE_BUNDLE:Ljava/lang/String; = "B"

.field private static final ATTR_TYPE_BUNDLE_ARRAY:Ljava/lang/String; = "BA"

.field private static final ATTR_TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final ATTR_TYPE_STRING:Ljava/lang/String; = "s"

.field private static final ATTR_TYPE_STRING_ARRAY:Ljava/lang/String; = "sa"

.field private static final ATTR_USER_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VALUE_TYPE:Ljava/lang/String; = "type"

.field static final DBG:Z = false

.field private static final DBG_WITH_STACKTRACE:Z = false

.field private static final EPOCH_PLUS_30_YEARS:J = 0xdc46c32800L

.field private static final LOG_TAG:Ljava/lang/String; = "UserManagerService"

.field private static final MAX_MANAGED_PROFILES:I = 0x1

.field static final MAX_RECENTLY_REMOVED_IDS_SIZE:I = 0x64

.field static final MAX_USER_ID:I = 0x53e2

.field static final MIN_USER_ID:I = 0xa

.field private static final RELEASE_DELETED_USER_ID:Z = false

.field private static final RESTRICTIONS_FILE_PREFIX:Ljava/lang/String; = "res_"

.field private static final TAG_ACCOUNT:Ljava/lang/String; = "account"

.field private static final TAG_DEVICE_OWNER_USER_ID:Ljava/lang/String; = "deviceOwnerUserId"

.field private static final TAG_DEVICE_POLICY_GLOBAL_RESTRICTIONS:Ljava/lang/String; = "device_policy_global_restrictions"

.field private static final TAG_DEVICE_POLICY_RESTRICTIONS:Ljava/lang/String; = "device_policy_restrictions"

.field private static final TAG_ENTRY:Ljava/lang/String; = "entry"

.field private static final TAG_GLOBAL_RESTRICTION_OWNER_ID:Ljava/lang/String; = "globalRestrictionOwnerUserId"

.field private static final TAG_GUEST_RESTRICTIONS:Ljava/lang/String; = "guestRestrictions"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_SEED_ACCOUNT_OPTIONS:Ljava/lang/String; = "seedAccountOptions"

.field private static final TAG_USER:Ljava/lang/String; = "user"

.field private static final TAG_USERS:Ljava/lang/String; = "users"

.field private static final TAG_VALUE:Ljava/lang/String; = "value"

.field private static final TRON_DEMO_CREATED:Ljava/lang/String; = "users_demo_created"

.field private static final TRON_GUEST_CREATED:Ljava/lang/String; = "users_guest_created"

.field private static final TRON_USER_CREATED:Ljava/lang/String; = "users_user_created"

.field private static final USER_INFO_DIR:Ljava/lang/String;

.field private static final USER_LIST_FILENAME:Ljava/lang/String; = "userlist.xml"

.field private static final USER_PHOTO_FILENAME:Ljava/lang/String; = "photo.png"

.field private static final USER_PHOTO_FILENAME_TMP:Ljava/lang/String; = "photo.png.tmp"

.field private static final USER_VERSION:I = 0x7

.field static final WRITE_USER_DELAY:I = 0x7d0

.field static final WRITE_USER_MSG:I = 0x1

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final mUserRestriconToken:Landroid/os/IBinder;

.field private static sInstance:Lcom/android/server/pm/UserManagerService;


# instance fields
.field private final ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mAppRestrictionsLock:Ljava/lang/Object;

.field private final mAppliedUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeviceOwnerUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation
.end field

.field private final mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

.field private mForceEphemeralUsers:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mGuestRestrictions:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mGuestRestrictions"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsDeviceManaged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mIsUserManaged:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextSerialNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mPackagesLock"
    .end annotation
.end field

.field private final mPackagesLock:Ljava/lang/Object;

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRecentlyRemovedIds:Ljava/util/LinkedList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovingUserIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mRestrictionsLock:Ljava/lang/Object;

.field private final mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

.field private mUserIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation
.end field

.field private final mUserListFile:Ljava/io/File;

.field private final mUserRestrictionsListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserRestrictionsListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UserManagerInternal$UserRestrictionsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserStates:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUserStates"
    .end annotation
.end field

.field private mUserVersion:I

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUsersLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/UserManagerService$UserData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsersDir:Ljava/io/File;

.field private final mUsersLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7()Landroid/os/IBinder;
    .registers 1

    sget-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/UserManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/UserManagerService;I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->invalidateEffectiveUserRestrictionsLR(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->removeNonSystemUsers()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/pm/UserManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;ZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/pm/UserManagerService;->mUserRestriconToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;)V
    .registers 11

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserDataPreparer;Ljava/lang/Object;Ljava/io/File;)V
    .registers 13

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/os/IUserManager$Stub;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/LockGuard;->installNewLock(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    iput v6, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserRestrictionsListeners:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->ACTION_DISABLE_QUIET_MODE_AFTER_UNLOCK:Ljava/lang/String;

    new-instance v1, Lcom/android/server/pm/UserManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$1;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/pm/UserManagerService$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$MainHandler;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_91
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    invoke-direct {v1, p5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1fd

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v1, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    const-string/jumbo v4, "userlist.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->readUserListLP()V

    sput-object p0, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_cf
    .catchall {:try_start_91 .. :try_end_cf} :catchall_ee

    monitor-exit v2

    new-instance v1, Lcom/android/server/pm/UserManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$LocalService;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    const-class v1, Landroid/os/UserManagerInternal;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v6, v6}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :catchall_ee
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_2e

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_d
    const-string/jumbo v1, "android.intent.extra.QUIET_MODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_2e
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d
.end method

.method private static final checkManageOrCreateUsersPermission(I)V
    .registers 4

    and-int/lit16 v0, p0, -0x32d

    if-nez v0, :cond_24

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You either need MANAGE_USERS or CREATE_USERS permission to create an user with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-nez v0, :cond_44

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS permission to create an user  with flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    return-void
.end method

.method private static final checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageOrCreateUsersPermission()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You either need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V
    .registers 8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_12

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    return-void

    :cond_13
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "You need INTERACT_ACROSS_USERS or MANAGE_USERS permission to: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    return-void
.end method

.method private static final checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_38

    if-eqz v0, :cond_38

    const-string/jumbo v1, "android.permission.MANAGE_USERS"

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_38

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "You need MANAGE_USERS and INTERACT_ACROSS_USERS_FULL permission to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    return-void
.end method

.method private static final checkManageUsersPermission(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private static checkSystemOrRoot(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_28

    if-eqz v0, :cond_28

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Only system may: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    return-void
.end method

.method private static cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V
    .registers 5

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_16
    return-void
.end method

.method private computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v4}, Lcom/android/server/pm/UserRestrictionsUtils;->mergeAll(Landroid/util/SparseArray;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_27

    return-object v0

    :cond_27
    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-static {v1, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-object v1
.end method

.method private createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 9

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_34

    const-string/jumbo v0, "no_add_managed_profile"

    :goto_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string/jumbo v1, "UserManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot add user. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is enabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_34
    const-string/jumbo v0, "no_add_user"

    goto :goto_7

    :cond_38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1
.end method

.method private createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 33

    const-class v23, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static/range {v23 .. v23}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-interface {v7}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->isMemoryLow()Z

    move-result v23

    if-eqz v23, :cond_1a

    const-string/jumbo v23, "UserManagerService"

    const-string/jumbo v24, "Cannot add user. Not enough space on disk."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    return-object v23

    :cond_1a
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v23

    if-eqz v23, :cond_23

    const/16 v23, 0x0

    return-object v23

    :cond_23
    and-int/lit8 v23, p2, 0x4

    if-eqz v23, :cond_6b

    const/4 v12, 0x1

    :goto_28
    const v23, 0x800020

    and-int v23, v23, p2

    if-eqz v23, :cond_6d

    const/4 v13, 0x1

    :goto_30
    and-int/lit8 v23, p2, 0x8

    if-eqz v23, :cond_6f

    const/4 v14, 0x1

    :goto_35
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v23, v0

    if-eqz v23, :cond_71

    const/4 v9, 0x1

    :goto_3e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_79

    const/4 v15, 0x0

    const/16 v23, -0x2710

    move/from16 v0, p3

    move/from16 v1, v23

    if-eq v0, v1, :cond_7e

    :try_start_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_76

    :try_start_59
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_73

    move-result-object v15

    :try_start_61
    monitor-exit v23
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_76

    if-nez v15, :cond_7e

    :try_start_64
    monitor-exit v24
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_79

    const/16 v23, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v23

    :cond_6b
    const/4 v12, 0x0

    goto :goto_28

    :cond_6d
    const/4 v13, 0x0

    goto :goto_30

    :cond_6f
    const/4 v14, 0x0

    goto :goto_35

    :cond_71
    const/4 v9, 0x0

    goto :goto_3e

    :catchall_73
    move-exception v25

    :try_start_74
    monitor-exit v23

    throw v25
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v23

    :try_start_77
    monitor-exit v24

    throw v23
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_79

    :catchall_79
    move-exception v23

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v23

    :cond_7e
    if-eqz v13, :cond_b9

    const/16 v23, 0x0

    :try_start_82
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/UserManagerService;->canAddMoreManagedProfiles(IZ)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_b9

    const-string/jumbo v23, "UserManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot add more managed profiles for user "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_82 .. :try_end_b2} :catchall_76

    :try_start_b2
    monitor-exit v24
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_79

    const/16 v23, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v23

    :cond_b9
    if-nez v12, :cond_d0

    xor-int/lit8 v23, v13, 0x1

    if-eqz v23, :cond_d0

    xor-int/lit8 v23, v9, 0x1

    if-eqz v23, :cond_d0

    :try_start_c3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->isUserLimitReached()Z
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_76

    move-result v23

    if-eqz v23, :cond_d0

    :try_start_c9
    monitor-exit v24
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_79

    const/16 v23, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v23

    :cond_d0
    if-eqz v12, :cond_df

    :try_start_d2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_76

    move-result-object v23

    if-eqz v23, :cond_df

    :try_start_d8
    monitor-exit v24
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_79

    const/16 v23, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v23

    :cond_df
    if-eqz v14, :cond_ff

    :try_start_e1
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_ff

    if-eqz p3, :cond_ff

    const-string/jumbo v23, "UserManagerService"

    const-string/jumbo v25, "Cannot add restricted profile - parent user must be owner"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_e1 .. :try_end_f8} :catchall_76

    :try_start_f8
    monitor-exit v24
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_79

    const/16 v23, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v23

    :cond_ff
    if-eqz v14, :cond_150

    :try_start_101
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v23

    if-eqz v23, :cond_150

    if-nez v15, :cond_11d

    const-string/jumbo v23, "UserManagerService"

    const-string/jumbo v25, "Cannot add restricted profile - parent user must be specified"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_101 .. :try_end_116} :catchall_76

    :try_start_116
    monitor-exit v24
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_79

    const/16 v23, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v23

    :cond_11d
    :try_start_11d
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v23

    if-nez v23, :cond_150

    const-string/jumbo v23, "UserManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Cannot add restricted profile - profiles cannot be created for the specified parent user id "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catchall {:try_start_11d .. :try_end_149} :catchall_76

    :try_start_149
    monitor-exit v24
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_79

    const/16 v23, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v23

    :cond_150
    :try_start_150
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v23

    if-nez v23, :cond_17a

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    if-eqz v23, :cond_17a

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v23, v0

    if-nez v23, :cond_17a

    const-string/jumbo v23, "UserManagerService"

    const-string/jumbo v25, "Ephemeral users are supported on split-system-user systems only."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_173
    .catchall {:try_start_150 .. :try_end_173} :catchall_76

    :try_start_173
    monitor-exit v24
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_79

    const/16 v23, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v23

    :cond_17a
    :try_start_17a
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v23

    if-eqz v23, :cond_1a2

    xor-int/lit8 v23, v12, 0x1

    if-eqz v23, :cond_1a2

    xor-int/lit8 v23, v13, 0x1

    if-eqz v23, :cond_1a2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v23

    if-nez v23, :cond_1a2

    or-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_197
    .catchall {:try_start_17a .. :try_end_197} :catchall_76

    :try_start_197
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    move/from16 v25, v0
    :try_end_19d
    .catchall {:try_start_197 .. :try_end_19d} :catchall_1e8

    if-nez v25, :cond_1a1

    or-int/lit8 p2, p2, 0x2

    :cond_1a1
    :try_start_1a1
    monitor-exit v23

    :cond_1a2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->getNextAvailableId()I

    move-result v23

    move/from16 v0, p2

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/server/pm/UserManagerServiceInjector;->checkAndGetNewUserId(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v23

    if-eqz v23, :cond_1eb

    const-string/jumbo v23, "UserManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "user "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " is exist, we could not create same user"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catchall {:try_start_1a1 .. :try_end_1e1} :catchall_76

    :try_start_1e1
    monitor-exit v24
    :try_end_1e2
    .catchall {:try_start_1e1 .. :try_end_1e2} :catchall_79

    const/16 v23, 0x0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v23

    :catchall_1e8
    move-exception v25

    :try_start_1e9
    monitor-exit v23

    throw v25

    :cond_1eb
    invoke-static/range {v21 .. v21}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->mkdirs()Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v23

    const v25, 0x1120071

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_208
    .catchall {:try_start_1e9 .. :try_end_208} :catchall_76

    if-eqz v12, :cond_20c

    if-nez v8, :cond_220

    :cond_20c
    :try_start_20c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/UserManagerService;->mForceEphemeralUsers:Z

    move/from16 v23, v0

    if-nez v23, :cond_220

    if-eqz v15, :cond_226

    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v23

    if-eqz v23, :cond_226

    :cond_220
    move/from16 v0, p2

    or-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    :cond_226
    new-instance v22, Landroid/content/pm/UserInfo;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v23, v0

    add-int/lit8 v26, v23, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide v26, 0xdc46c32800L

    cmp-long v23, v16, v26

    if-lez v23, :cond_3d2

    :goto_258
    move-wide/from16 v0, v16

    move-object/from16 v2, v22

    iput-wide v0, v2, Landroid/content/pm/UserInfo;->creationTime:J

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    sget-object v23, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v13, :cond_286

    const/16 v23, -0x2710

    move/from16 v0, p3

    move/from16 v1, v23

    if-eq v0, v1, :cond_286

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getFreeProfileBadgeLU(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    :cond_286
    new-instance v20, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2a0
    .catchall {:try_start_20c .. :try_end_2a0} :catchall_3d6

    :try_start_2a0
    monitor-exit v25

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    if-eqz v15, :cond_2ea

    if-eqz v13, :cond_3d9

    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v23, v0

    const/16 v25, -0x2710

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_2da

    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_2da
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_2ea
    .catchall {:try_start_2a0 .. :try_end_2ea} :catchall_76

    :cond_2ea
    :goto_2ea
    :try_start_2ea
    monitor-exit v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-class v24, Landroid/os/storage/StorageManager;

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/storage/StorageManager;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v24

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManager;->createUserKey(IIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->createNewUser(I[Ljava/lang/String;)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_345
    .catchall {:try_start_2ea .. :try_end_345} :catchall_79

    :try_start_345
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_34c
    .catchall {:try_start_345 .. :try_end_34c} :catchall_418

    :try_start_34c
    monitor-exit v23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    if-eqz v12, :cond_36c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_35e
    .catchall {:try_start_34c .. :try_end_35e} :catchall_79

    :try_start_35e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_36b
    .catchall {:try_start_35e .. :try_end_36b} :catchall_41b

    :try_start_36b
    monitor-exit v24

    :cond_36c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_373
    .catchall {:try_start_36b .. :try_end_373} :catchall_79

    :try_start_373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_382
    .catchall {:try_start_373 .. :try_end_382} :catchall_41e

    :try_start_382
    monitor-exit v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->onNewUserCreated(I)V

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v23, "android.intent.action.USER_ADDED"

    move-object/from16 v0, v23

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "android.intent.extra.user_handle"

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    sget-object v24, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v25, "android.permission.MANAGE_USERS"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    if-eqz v12, :cond_421

    const-string/jumbo v23, "users_guest_created"

    :goto_3c3
    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_3ce
    .catchall {:try_start_382 .. :try_end_3ce} :catchall_79

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v22

    :cond_3d2
    const-wide/16 v16, 0x0

    goto/16 :goto_258

    :catchall_3d6
    move-exception v23

    :try_start_3d7
    monitor-exit v25

    throw v23

    :cond_3d9
    if-eqz v14, :cond_2ea

    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v23, v0

    const/16 v25, -0x2710

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_406

    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_406
    iget-object v0, v15, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I
    :try_end_416
    .catchall {:try_start_3d7 .. :try_end_416} :catchall_76

    goto/16 :goto_2ea

    :catchall_418
    move-exception v24

    :try_start_419
    monitor-exit v23

    throw v24

    :catchall_41b
    move-exception v23

    monitor-exit v24

    throw v23

    :catchall_41e
    move-exception v23

    monitor-exit v24

    throw v23

    :cond_421
    if-eqz v9, :cond_427

    const-string/jumbo v23, "users_demo_created"

    goto :goto_3c3

    :cond_427
    const-string/jumbo v23, "users_user_created"
    :try_end_42a
    .catchall {:try_start_419 .. :try_end_42a} :catchall_79

    goto :goto_3c3
.end method

.method private static debug(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "UserManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private fallbackToSingleUserLP()V
    .registers 11

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/16 v2, 0x10

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v8

    if-nez v8, :cond_c

    const/16 v2, 0x13

    :cond_c
    new-instance v4, Landroid/content/pm/UserInfo;

    invoke-direct {v4, v7, v9, v9, v2}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Lcom/android/server/pm/UserManagerService;->putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v5

    const/16 v8, 0xa

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    const/4 v8, 0x7

    iput v8, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :try_start_21
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x107001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    :goto_2f
    if-ge v7, v8, :cond_4a

    aget-object v6, v0, v7

    invoke-static {v6}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    const/4 v9, 0x1

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_3d} :catch_40

    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :catch_40
    move-exception v1

    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "Couldn\'t find resource: config_defaultFirstUserRestrictions"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5a

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_53
    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_67

    monitor-exit v8

    :cond_5a
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    return-void

    :catchall_67
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private findCurrentGuestUser()Landroid/content/pm/UserInfo;
    .registers 7

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_33

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-boolean v3, v2, Landroid/content/pm/UserInfo;->guestToRemove:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_36

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    monitor-exit v4

    return-object v2

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_33
    monitor-exit v4

    const/4 v3, 0x0

    return-object v3

    :catchall_36
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getAliveUsersExcludingGuestsCountLU()I
    .registers 7

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v2, :cond_2b

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_28

    add-int/lit8 v0, v0, 0x1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_2b
    return v0
.end method

.method private getEffectiveUserRestrictions(I)Landroid/os/Bundle;
    .registers 5

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_16

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit v2

    return-object v0

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;
    .registers 4

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v1, p1, :cond_b

    const/4 v0, 0x2

    :goto_5
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    invoke-direct {v1, p1, v0}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    return-object v1

    :cond_b
    const/4 v0, 0x4

    goto :goto_5
.end method

.method public static getInstance()Lcom/android/server/pm/UserManagerService;
    .registers 2

    const-class v0, Lcom/android/server/pm/UserManagerService;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/pm/UserManagerService;->sInstance:Lcom/android/server/pm/UserManagerService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getMaxManagedProfiles()I
    .registers 2

    const/4 v1, 0x1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_6

    return v1

    :cond_6
    const-string/jumbo v0, "persist.sys.max_profiles"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getOwnerName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040408

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getProfileIdsLU(IZ)Landroid/util/IntArray;
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    new-instance v2, Landroid/util/IntArray;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v2, v5}, Landroid/util/IntArray;-><init>(I)V

    if-nez v3, :cond_12

    return-object v2

    :cond_12
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v4, :cond_4c

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v3, v1}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z

    move-result v5

    if-nez v5, :cond_2e

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2e
    if-eqz p2, :cond_38

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2b

    :cond_38
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-boolean v5, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_2b

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_2b

    :cond_4c
    return-object v2
.end method

.method private getProfileParentLU(I)Landroid/content/pm/UserInfo;
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v3

    :cond_8
    iget v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v0, p1, :cond_10

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_11

    :cond_10
    return-object v3

    :cond_11
    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    return-object v2
.end method

.method private getProfilesLU(IZZ)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v6

    if-ge v0, v6, :cond_3a

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    if-nez p3, :cond_35

    new-instance v4, Landroid/content/pm/UserInfo;

    invoke-direct {v4, v3}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    iput-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v7, v4, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    move-object v3, v4

    :goto_2f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_35
    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v3

    goto :goto_2f

    :cond_3a
    return-object v5
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x400000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_16
    .catchall {:try_start_4 .. :try_end_12} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catch_16
    move-exception v2

    const/4 v3, -0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_1c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v0, :cond_1c

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v1, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    return-object v2

    :cond_1c
    return-object v0
.end method

.method private getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 4

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUserInfoLU(I)Landroid/content/pm/UserInfo;
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v0, :cond_36

    iget-object v2, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_36

    const-string/jumbo v2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserInfo: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_36
    if-eqz v0, :cond_3a

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    :cond_3a
    return-object v1
.end method

.method private getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v2

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static final hasManageOrCreateUsersPermission()Z
    .registers 5

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v3, 0x3e8

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_11

    if-nez v0, :cond_12

    :cond_11
    :goto_11
    return v1

    :cond_12
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "android.permission.CREATE_USERS"

    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_11

    move v1, v2

    goto :goto_11
.end method

.method private static final hasManageUsersPermission()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v3, 0x3e8

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_10

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return v1

    :cond_11
    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    const/4 v4, -0x1

    invoke-static {v3, v0, v4, v1}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v3

    if-eqz v3, :cond_10

    move v1, v2

    goto :goto_10
.end method

.method private initDefaultGuestRestrictions()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_config_wifi"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_install_unknown_sources"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v2, "no_sms"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_31

    :cond_2f
    monitor-exit v1

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invalidateEffectiveUserRestrictionsLR(I)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private static isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/content/pm/UserInfo;->id:I

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v3, :cond_14

    iget v2, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_17

    iget v2, p0, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v3, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v2, v3, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    goto :goto_14

    :cond_17
    move v0, v1

    goto :goto_14
.end method

.method private isSameProfileGroupNoChecks(II)Z
    .registers 9

    const/16 v5, -0x2710

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_10

    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_27

    if-ne v4, v5, :cond_12

    :cond_10
    monitor-exit v3

    return v2

    :cond_12
    :try_start_12
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget v4, v0, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_27

    if-ne v4, v5, :cond_1e

    :cond_1c
    monitor-exit v3

    return v2

    :cond_1e
    :try_start_1e
    iget v4, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v0, Landroid/content/pm/UserInfo;->profileGroupId:I
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_27

    if-ne v4, v5, :cond_25

    const/4 v2, 0x1

    :cond_25
    monitor-exit v3

    return v2

    :catchall_27
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isUserLimitReached()Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_10

    move-result v0

    monitor-exit v1

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v1

    if-lt v0, v1, :cond_13

    const/4 v1, 0x1

    :goto_f
    return v1

    :catchall_10
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private static packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "res_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 8

    invoke-static {p2, p3}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/server/pm/UserManagerService$3;-><init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_15

    return-object v3

    :cond_15
    const/4 v1, 0x0

    :try_start_16
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_53

    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to read restrictions file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4f} :catch_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_4f} :catch_5e
    .catchall {:try_start_16 .. :try_end_4f} :catchall_85

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :cond_53
    :goto_53
    :try_start_53
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_81

    invoke-static {v3, v4, v2}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5d} :catch_5e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_5d} :catch_5e
    .catchall {:try_start_53 .. :try_end_5d} :catchall_85

    goto :goto_53

    :catch_5e
    move-exception v0

    :try_start_5f
    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error parsing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_85

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_80
    return-object v3

    :cond_81
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_80

    :catchall_85
    move-exception v5

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method

.method private static readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Landroid/util/AtomicFile;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method private static readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :goto_9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v0, p1, p0}, Lcom/android/server/pm/UserManagerService;->readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_9

    :cond_13
    return-object v0
.end method

.method private static readEntry(Landroid/os/Bundle;Ljava/util/ArrayList;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_68

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "entry"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    const-string/jumbo v10, "key"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "m"

    const/4 v11, 0x0

    invoke-interface {p2, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_69

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_35
    :goto_35
    if-lez v2, :cond_5c

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_5c

    const/4 v10, 0x2

    if-ne v6, v10, :cond_35

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    :cond_5c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v3, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_68
    :goto_68
    return-void

    :cond_69
    const-string/jumbo v10, "B"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7a

    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_68

    :cond_7a
    const-string/jumbo v10, "BA"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_aa

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8c
    invoke-static {p2, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v10

    if-eqz v10, :cond_9a

    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->readBundleEntry(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    :cond_9a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_68

    :cond_aa
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "b"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c3

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_68

    :cond_c3
    const-string/jumbo v10, "i"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_68

    :cond_d4
    invoke-virtual {p0, v3, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68
.end method

.method private readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 7

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return p3

    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    return v2

    :catch_d
    move-exception v0

    return p3
.end method

.method private readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 10

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return-wide p3

    :cond_8
    :try_start_8
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide v2

    return-wide v2

    :catch_d
    move-exception v0

    return-wide p3
.end method

.method private readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_2c} :catch_31
    .catchall {:try_start_1 .. :try_end_2c} :catchall_4e

    move-result-object v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v4

    :catch_31
    move-exception v2

    :try_start_32
    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "Error reading user list"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_4e

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_3e
    const/4 v4, 0x0

    return-object v4

    :catch_40
    move-exception v1

    :try_start_41
    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "Error reading user list"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_4e

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3e

    :catchall_4e
    move-exception v4

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method

.method private readUserListLP()V
    .registers 16

    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_c

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V

    return-void

    :cond_c
    const/4 v1, 0x0

    new-instance v10, Landroid/util/AtomicFile;

    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v10, v12}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_14
    invoke-virtual {v10}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_25
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v12, 0x2

    if-eq v8, v12, :cond_2f

    const/4 v12, 0x1

    if-ne v8, v12, :cond_25

    :cond_2f
    const/4 v12, 0x2

    if-eq v8, v12, :cond_42

    const-string/jumbo v12, "UserManagerService"

    const-string/jumbo v13, "Unable to read user list"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_3e} :catch_be
    .catchall {:try_start_14 .. :try_end_3e} :catchall_c9

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :cond_42
    const/4 v12, -0x1

    :try_start_43
    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "users"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    const-string/jumbo v12, "nextSerialNumber"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_62

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    :cond_62
    const-string/jumbo v12, "version"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_72

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    :cond_72
    const/4 v5, 0x0

    :cond_73
    :goto_73
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_132

    const/4 v12, 0x2

    if-ne v8, v12, :cond_73

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, "user"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ce

    const-string/jumbo v12, "id"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-direct {p0, v12}, Lcom/android/server/pm/UserManagerService;->readUserLP(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v9

    if-eqz v9, :cond_73

    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_9f} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_9f} :catch_be
    .catchall {:try_start_43 .. :try_end_9f} :catchall_c9

    :try_start_9f
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget-object v14, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v12, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    if-ltz v12, :cond_b4

    iget v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    iget-object v14, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    if-gt v12, v14, :cond_bc

    :cond_b4
    iget-object v12, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v12, v12, Landroid/content/pm/UserInfo;->id:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I
    :try_end_bc
    .catchall {:try_start_9f .. :try_end_bc} :catchall_c6

    :cond_bc
    :try_start_bc
    monitor-exit v13
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bd} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bc .. :try_end_bd} :catch_be
    .catchall {:try_start_bc .. :try_end_bd} :catchall_c9

    goto :goto_73

    :catch_be
    move-exception v0

    :try_start_bf
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->fallbackToSingleUserLP()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c9

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_c5
    return-void

    :catchall_c6
    move-exception v12

    :try_start_c7
    monitor-exit v13

    throw v12
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_c9} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c7 .. :try_end_c9} :catch_be
    .catchall {:try_start_c7 .. :try_end_c9} :catchall_c9

    :catchall_c9
    move-exception v12

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v12

    :cond_ce
    :try_start_ce
    const-string/jumbo v12, "guestRestrictions"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ff

    :cond_d7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_73

    const/4 v12, 0x3

    if-eq v8, v12, :cond_73

    const/4 v12, 0x2

    if-ne v8, v12, :cond_d7

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "restrictions"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_73

    iget-object v13, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v13
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_f4} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ce .. :try_end_f4} :catch_be
    .catchall {:try_start_ce .. :try_end_f4} :catchall_c9

    :try_start_f4
    iget-object v12, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-static {v7, v12}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_f9
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_fc

    :try_start_f9
    monitor-exit v13

    goto/16 :goto_73

    :catchall_fc
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_ff
    const-string/jumbo v12, "deviceOwnerUserId"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_111

    const-string/jumbo v12, "globalRestrictionOwnerUserId"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_123

    :cond_111
    const-string/jumbo v12, "id"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_73

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    goto/16 :goto_73

    :cond_123
    const-string/jumbo v12, "device_policy_restrictions"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_73

    invoke-static {v7}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v5

    goto/16 :goto_73

    :cond_132
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_138} :catch_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f9 .. :try_end_138} :catch_be
    .catchall {:try_start_f9 .. :try_end_138} :catchall_c9

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_c5
.end method

.method private removeNonSystemUsers()V
    .registers 8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_8
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_25

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    if-eqz v5, :cond_22

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_3c

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_25
    monitor-exit v6

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    goto :goto_2a

    :catchall_3c
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_3f
    return-void
.end method

.method private removeUserState(I)V
    .registers 10

    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v4, p1}, Landroid/os/storage/StorageManager;->destroyUserKey(I)V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_d} :catch_8e

    :goto_d
    :try_start_d
    invoke-static {}, Landroid/security/GateKeeper;->getService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-interface {v2, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_b2

    :cond_16
    :goto_16
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, p0, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpUser(Lcom/android/server/pm/UserManagerService;I)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v5, 0x3

    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/UserDataPreparer;->destroyUserData(II)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_24
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_be

    monitor-exit v5

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v5

    :try_start_32
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_c1

    monitor-exit v5

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3b
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5f

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V
    :try_end_5f
    .catchall {:try_start_3b .. :try_end_5f} :catchall_c4

    :cond_5f
    monitor-exit v5

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_63
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_c7

    monitor-exit v4

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->updateUserIds()V

    return-void

    :catch_8e
    move-exception v0

    const-string/jumbo v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Destroying key for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " failed, continuing anyway"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    :catch_b2
    move-exception v1

    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "unable to clear GK secure user id"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :catchall_be
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_c1
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_c4
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_c7
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method private removeUserUnchecked(I)Z
    .registers 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne v0, p1, :cond_19

    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v8, "Current user cannot be removed"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_88

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_19
    :try_start_19
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_88

    :try_start_1c
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_85

    :try_start_1f
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_82

    if-eqz p1, :cond_2b

    if-nez v5, :cond_31

    :cond_2b
    :try_start_2b
    monitor-exit v9
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_85

    :try_start_2c
    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_88

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_31
    :try_start_31
    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_82

    :try_start_3c
    monitor-exit v9

    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/content/pm/UserInfo;->partial:Z

    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v10, v9, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v10, v10, 0x40

    iput v10, v9, Landroid/content/pm/UserInfo;->flags:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_85

    :try_start_4d
    monitor-exit v8
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_88

    :try_start_4e
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v8, p1}, Lcom/android/internal/app/IAppOpsService;->removeUser(I)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_53} :catch_8d
    .catchall {:try_start_4e .. :try_end_53} :catchall_88

    :goto_53
    :try_start_53
    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v9, -0x2710

    if-eq v8, v9, :cond_6e

    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v8

    if-eqz v8, :cond_6e

    iget-object v8, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget-object v9, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/pm/UserManagerService;->sendProfileRemovedBroadcast(II)V
    :try_end_6e
    .catchall {:try_start_53 .. :try_end_6e} :catchall_88

    :cond_6e
    :try_start_6e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    new-instance v9, Lcom/android/server/pm/UserManagerService$5;

    invoke-direct {v9, p0}, Lcom/android/server/pm/UserManagerService$5;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/4 v10, 0x1

    invoke-interface {v8, p1, v10, v9}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_7b} :catch_98
    .catchall {:try_start_6e .. :try_end_7b} :catchall_88

    move-result v4

    if-nez v4, :cond_9d

    :goto_7e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_82
    move-exception v6

    :try_start_83
    monitor-exit v9

    throw v6
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception v6

    :try_start_86
    monitor-exit v8

    throw v6
    :try_end_88
    .catchall {:try_start_86 .. :try_end_88} :catchall_88

    :catchall_88
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :catch_8d
    move-exception v1

    :try_start_8e
    const-string/jumbo v8, "UserManagerService"

    const-string/jumbo v9, "Unable to notify AppOpsService of removing user"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_8e .. :try_end_97} :catchall_88

    goto :goto_53

    :catch_98
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_9d
    move v6, v7

    goto :goto_7e
.end method

.method private runList(Ljava/io/PrintWriter;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_13

    const-string/jumbo v4, "Error: couldn\'t get users"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :cond_13
    const-string/jumbo v4, "Users:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5d

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, v4, v6}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v4

    if-eqz v4, :cond_59

    const-string/jumbo v2, " running"

    :goto_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_59
    const-string/jumbo v2, ""

    goto :goto_31

    :cond_5d
    return v6
.end method

.method private scanNextAvailableIdLocked()I
    .registers 3

    const/16 v0, 0xa

    :goto_2
    const/16 v1, 0x53e2

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    return v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    const/4 v1, -0x1

    return v1
.end method

.method private scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_16
    return-void
.end method

.method private sendProfileRemovedBroadcast(II)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private sendUserInfoChangedBroadcast(I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private setDevicePolicyUserRestrictionsInner(ILandroid/os/Bundle;ZI)V
    .registers 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2, p3, p4, v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->sortToGlobalAndLocal(Landroid/os/Bundle;ZILandroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_10
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz p3, :cond_3a

    iput p1, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_43

    :cond_20
    :goto_20
    monitor-exit v5

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v5

    if-nez v3, :cond_28

    if-eqz v1, :cond_2f

    :cond_28
    :try_start_28
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_46

    :cond_2f
    monitor-exit v5

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5

    if-eqz v1, :cond_49

    :try_start_35
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_4f

    :cond_38
    :goto_38
    monitor-exit v5

    return-void

    :cond_3a
    :try_start_3a
    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-ne v4, p1, :cond_20

    const/16 v4, -0x2710

    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_43

    goto :goto_20

    :catchall_43
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_46
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_49
    if-eqz v3, :cond_38

    :try_start_4b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_38

    :catchall_4f
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_17

    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    :goto_17
    return v0

    :cond_18
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_17
.end method

.method private updateUserIds()V
    .registers 9

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v5, :cond_20

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_1d

    add-int/lit8 v4, v4, 0x1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_20
    new-array v3, v4, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    :goto_25
    if-ge v0, v5, :cond_43

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v6, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v6, :cond_4a

    add-int/lit8 v1, v2, 0x1

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    aput v6, v3, v2

    :goto_3f
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_25

    :cond_43
    iput-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_47

    monitor-exit v7

    return-void

    :catchall_47
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_4a
    move v1, v2

    goto :goto_3f
.end method

.method private updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/android/server/pm/UserRestrictionsUtils;->nonNull(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz p1, :cond_38

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eq v2, p1, :cond_5d

    move v3, v4

    :goto_1b
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p1, :cond_5f

    :goto_26
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/pm/UserManagerService;->updateRestrictionsIfNeededLR(ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_38
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->computeEffectiveUserRestrictionsLR(I)Landroid/os/Bundle;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/pm/UserManagerService$2;

    invoke-direct {v4, p0, v0, p2}, Lcom/android/server/pm/UserManagerService$2;-><init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4f
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mAppliedUserRestrictions:Landroid/util/SparseArray;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_5d
    move v3, v5

    goto :goto_1b

    :cond_5f
    move v4, v5

    goto :goto_26
.end method

.method private upgradeIfNecessaryLP(Landroid/os/Bundle;)V
    .registers 13

    const/16 v10, -0x2710

    const/4 v9, 0x7

    const/4 v8, 0x0

    iget v1, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_31

    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    const-string/jumbo v5, "Primary"

    iget-object v6, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, v6, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040408

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_30
    const/4 v4, 0x1

    :cond_31
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4c

    invoke-direct {p0, v8}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_4b

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_4b
    const/4 v4, 0x2

    :cond_4c
    const/4 v5, 0x4

    if-ge v4, v5, :cond_50

    const/4 v4, 0x4

    :cond_50
    const/4 v5, 0x5

    if-ge v4, v5, :cond_57

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->initDefaultGuestRestrictions()V

    const/4 v4, 0x5

    :cond_57
    const/4 v5, 0x6

    if-ge v4, v5, :cond_8f

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v0, 0x0

    :goto_62
    :try_start_62
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_8d

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v2, :cond_8a

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_8a

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v5, v10, :cond_8a

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v7, 0x0

    iput v7, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_8a
    .catchall {:try_start_62 .. :try_end_8a} :catchall_db

    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_8d
    monitor-exit v6

    const/4 v4, 0x6

    :cond_8f
    if-ge v4, v9, :cond_b1

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_94
    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_a5

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    if-eq v5, v10, :cond_a5

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v5, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a5
    const-string/jumbo v5, "ensure_verify_apps"

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-static {v5, v7, v8}, Lcom/android/server/pm/UserRestrictionsUtils;->moveRestriction(Ljava/lang/String;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    :try_end_af
    .catchall {:try_start_94 .. :try_end_af} :catchall_de

    monitor-exit v6

    const/4 v4, 0x7

    :cond_b1
    if-ge v4, v9, :cond_e1

    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " didn\'t upgrade as expected to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    :goto_da
    return-void

    :catchall_db
    move-exception v5

    monitor-exit v6

    throw v5

    :catchall_de
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_e1
    iput v4, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    iget v5, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    if-ge v1, v5, :cond_da

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V

    goto :goto_da
.end method

.method private userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    .registers 4

    if-eqz p1, :cond_16

    iget-object v1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_16

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_16

    new-instance v0, Landroid/content/pm/UserInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getOwnerName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    return-object v0

    :cond_16
    return-object p1
.end method

.method static writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v4, "restrictions"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {p0, v3}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "restrictions"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_40

    :goto_3f
    return-void

    :catch_40
    move-exception v1

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v4, "UserManagerService"

    const-string/jumbo v5, "Error writing application restrictions list"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method private static writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAppRestrictionsLock"
    .end annotation

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->packageToRestrictionsFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-static {p1, v0}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Landroid/os/Bundle;Landroid/util/AtomicFile;)V

    return-void
.end method

.method private writeBitmapLP(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V
    .registers 13

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    iget v7, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "photo.png"

    invoke-direct {v2, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "photo.png.tmp"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f9

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v6, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_31
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v7, 0x64

    invoke-virtual {p2, v6, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_52} :catch_5b

    :cond_52
    :try_start_52
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_59
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_55} :catch_5b

    :goto_55
    :try_start_55
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_58
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_58} :catch_5b

    :goto_58
    return-void

    :catch_59
    move-exception v3

    goto :goto_55

    :catch_5b
    move-exception v1

    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v7, "Error setting photo for user "

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58
.end method

.method private static writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v7, "entry"

    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "key"

    invoke-interface {p1, v12, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_41

    const-string/jumbo v7, "type"

    const-string/jumbo v9, "b"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3a
    :goto_3a
    const-string/jumbo v7, "entry"

    invoke-interface {p1, v12, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    :cond_41
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_56

    const-string/jumbo v7, "type"

    const-string/jumbo v9, "i"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3a

    :cond_56
    if-eqz v5, :cond_5c

    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_71

    :cond_5c
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "s"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v5, :cond_6d

    check-cast v5, Ljava/lang/String;

    :goto_69
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3a

    :cond_6d
    const-string/jumbo v5, ""

    goto :goto_69

    :cond_71
    instance-of v7, v5, Landroid/os/Bundle;

    if-eqz v7, :cond_84

    const-string/jumbo v7, "type"

    const-string/jumbo v9, "B"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v5, Landroid/os/Bundle;

    invoke-static {v5, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_3a

    :cond_84
    instance-of v7, v5, [Landroid/os/Parcelable;

    if-eqz v7, :cond_c4

    const-string/jumbo v7, "type"

    const-string/jumbo v9, "BA"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v0, v5

    check-cast v0, [Landroid/os/Parcelable;

    array-length v9, v0

    move v7, v8

    :goto_96
    if-ge v7, v9, :cond_3a

    aget-object v4, v0, v7

    instance-of v10, v4, Landroid/os/Bundle;

    if-nez v10, :cond_a7

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "bundle-array can only hold Bundles"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a7
    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "type"

    const-string/jumbo v11, "B"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4, p1}, Lcom/android/server/pm/UserManagerService;->writeBundle(Landroid/os/Bundle;Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v10, "entry"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_96

    :cond_c4
    const-string/jumbo v7, "type"

    const-string/jumbo v9, "sa"

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v6, v5

    check-cast v6, [Ljava/lang/String;

    const-string/jumbo v7, "m"

    array-length v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v12, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    array-length v9, v6

    move v7, v8

    :goto_dd
    if-ge v7, v9, :cond_3a

    aget-object v1, v6, v7

    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v1, :cond_f5

    :goto_e9
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "value"

    invoke-interface {p1, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_dd

    :cond_f5
    const-string/jumbo v1, ""

    goto :goto_e9

    :cond_f9
    return-void
.end method

.method private writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    .registers 10

    const/4 v1, 0x0

    new-instance v3, Landroid/util/AtomicFile;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_25
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_35

    :goto_34
    return-void

    :catch_35
    move-exception v2

    const-string/jumbo v4, "UserManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing user info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_34
.end method

.method private writeUserListLP()V
    .registers 15

    const/4 v2, 0x0

    new-instance v8, Landroid/util/AtomicFile;

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUserListFile:Ljava/io/File;

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_8
    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v9, "users"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "nextSerialNumber"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mNextSerialNumber:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "version"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mUserVersion:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "guestRestrictions"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v10
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5a} :catch_a8

    :try_start_5a
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    const-string/jumbo v11, "restrictions"

    invoke-static {v5, v9, v11}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_a5

    :try_start_62
    monitor-exit v10

    const-string/jumbo v9, "guestRestrictions"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "deviceOwnerUserId"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "id"

    iget v10, p0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "deviceOwnerUserId"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v10, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_88} :catch_a8

    :try_start_88
    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    new-array v7, v9, [I

    const/4 v3, 0x0

    :goto_91
    array-length v9, v7

    if-ge v3, v9, :cond_b6

    iget-object v9, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v6, v9, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    aput v9, v7, v3
    :try_end_a2
    .catchall {:try_start_88 .. :try_end_a2} :catchall_d9

    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    :catchall_a5
    move-exception v9

    :try_start_a6
    monitor-exit v10

    throw v9
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a8} :catch_a8

    :catch_a8
    move-exception v1

    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v9, "UserManagerService"

    const-string/jumbo v10, "Error writing user list"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b5
    return-void

    :cond_b6
    :try_start_b6
    monitor-exit v10

    const/4 v9, 0x0

    array-length v10, v7

    :goto_b9
    if-ge v9, v10, :cond_dc

    aget v4, v7, v9

    const-string/jumbo v11, "user"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "id"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v5, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "user"

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_b9

    :catchall_d9
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_dc
    const-string/jumbo v9, "users"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v8, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_e9} :catch_a8

    goto :goto_b5
.end method


# virtual methods
.method addRemovingUserIdLocked(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method applyUserRestrictionsForAllUsersLR()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRestrictionsLock"
    .end annotation

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Lcom/android/server/pm/UserManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$4;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method applyUserRestrictionsLR(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V

    return-void
.end method

.method public canAddMoreManagedProfiles(IZ)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "check if more managed profiles can be added."

    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v6

    if-eqz v6, :cond_f

    return v5

    :cond_f
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "android.software.managed_users"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f

    return v5

    :cond_1f
    invoke-virtual {p0, p1, v5}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    if-lez v0, :cond_37

    if-eqz p2, :cond_37

    const/4 v1, 0x1

    :goto_2e
    sub-int v6, v0, v1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v7

    if-lt v6, v7, :cond_39

    return v5

    :cond_37
    const/4 v1, 0x0

    goto :goto_2e

    :cond_39
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->canHaveProfile()Z
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_5e

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4c

    :cond_4a
    monitor-exit v6

    return v5

    :cond_4c
    :try_start_4c
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->getAliveUsersExcludingGuestsCountLU()I

    move-result v7

    sub-int v3, v7, v1

    if-eq v3, v4, :cond_5a

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_5e

    move-result v7

    if-ge v3, v7, :cond_5c

    :cond_5a
    :goto_5a
    monitor-exit v6

    return v4

    :cond_5c
    move v4, v5

    goto :goto_5a

    :catchall_5e
    move-exception v4

    monitor-exit v6

    throw v4
.end method

.method public canHaveRestrictedProfile(I)Z
    .registers 6

    const/4 v1, 0x0

    const-string/jumbo v2, "canHaveRestrictedProfile"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_30

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1a

    :cond_18
    monitor-exit v2

    return v1

    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_30

    move-result v3

    if-nez v3, :cond_22

    monitor-exit v2

    return v1

    :cond_22
    :try_start_22
    iget-boolean v3, p0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    if-nez v3, :cond_2e

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_30

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_2e
    monitor-exit v2

    return v1

    :catchall_30
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method cleanupPartialUsers()V
    .registers 9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_8
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v4, :cond_39

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-nez v5, :cond_29

    iget-boolean v5, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-nez v5, :cond_29

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_36

    :cond_29
    if-eqz v0, :cond_36

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v5}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->partial:Z
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_7f

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_39
    monitor-exit v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v2, :cond_82

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    const-string/jumbo v5, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Removing partially created user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " (name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :catchall_7f
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_82
    return-void
.end method

.method public clearSeedAccountData()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "Cannot clear seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_25

    :try_start_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_22

    move-result-object v0

    if-nez v0, :cond_19

    :try_start_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_25

    monitor-exit v2

    return-void

    :cond_19
    :try_start_19
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$UserData;->clearSeedAccountData()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_22

    :try_start_1c
    monitor-exit v3

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_25

    monitor-exit v2

    return-void

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v3

    throw v1
    :try_end_25
    .catchall {:try_start_23 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6

    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createProfileForUserEvenWhenDisallowed(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 6

    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->createUserInternalUnchecked(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 10

    const/4 v4, 0x0

    const-string/jumbo v3, "setupRestrictedProfile"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/android/server/pm/UserManagerService;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_10

    return-object v4

    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_14
    const-string/jumbo v3, "no_modify_accounts"

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_mode"

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v3, "no_share_location"

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_39

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_39
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
    .registers 4

    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(I)V

    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/UserManagerService;->createUserInternal(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "UserManagerService"

    move-object/from16 v0, p2

    invoke-static {v10, v11, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v10

    if-nez v10, :cond_10

    return-void

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_1ea

    :try_start_23
    const-string/jumbo v10, "Users:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v2, v10, :cond_223

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v7, :cond_45

    :cond_42
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_45
    iget-object v9, v7, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v8, v9, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v10, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v10, " serialNo="

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, v9, Landroid/content/pm/UserInfo;->serialNumber:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-eqz v10, :cond_77

    const-string/jumbo v10, " <removing> "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_77
    iget-boolean v10, v9, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v10, :cond_83

    const-string/jumbo v10, " <partial>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_83
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v10, "    State: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v13
    :try_end_93
    .catchall {:try_start_23 .. :try_end_93} :catchall_1e7

    :try_start_93
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    const/4 v14, -0x1

    invoke-virtual {v10, v8, v14}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_1ed

    move-result v6

    :try_start_9c
    monitor-exit v13

    invoke-static {v6}, Lcom/android/server/am/UserState;->stateToString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v10, "    Created: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v9, Landroid/content/pm/UserInfo;->creationTime:J

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    if-nez v10, :cond_1f0

    const-string/jumbo v10, "<unknown>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_be
    const-string/jumbo v10, "    Last logged in: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v9, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    if-nez v10, :cond_208

    const-string/jumbo v10, "<unknown>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d6
    const-string/jumbo v10, "    Last logged in fingerprint: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v9, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v10, "    Has profile owner: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mIsUserManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v10, "    Restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_107
    .catchall {:try_start_9c .. :try_end_107} :catchall_1e7

    :try_start_107
    const-string/jumbo v14, "      "

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    move-object/from16 v0, p2

    invoke-static {v0, v14, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v10, "    Device policy global restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v14, "      "

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    move-object/from16 v0, p2

    invoke-static {v0, v14, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v10, "    Device policy local restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v14, "      "

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    move-object/from16 v0, p2

    invoke-static {v0, v14, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v10, "    Effective restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v14, "      "

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mCachedEffectiveUserRestrictions:Landroid/util/SparseArray;

    iget v15, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    move-object/from16 v0, p2

    invoke-static {v0, v14, v10}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_16f
    .catchall {:try_start_107 .. :try_end_16f} :catchall_220

    :try_start_16f
    monitor-exit v13

    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v10, :cond_192

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    Account name: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v7, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_192
    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v10, :cond_42

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "    Seed account name: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v7, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v10, :cond_1d6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "         account type: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v13, v7, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1d6
    iget-object v10, v7, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v10, :cond_42

    const-string/jumbo v10, "         account options exist"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1e5
    .catchall {:try_start_16f .. :try_end_1e5} :catchall_1e7

    goto/16 :goto_42

    :catchall_1e7
    move-exception v10

    :try_start_1e8
    monitor-exit v12

    throw v10
    :try_end_1ea
    .catchall {:try_start_1e8 .. :try_end_1ea} :catchall_1ea

    :catchall_1ea
    move-exception v10

    monitor-exit v11

    throw v10

    :catchall_1ed
    move-exception v10

    :try_start_1ee
    monitor-exit v13

    throw v10

    :cond_1f0
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v14, v9, Landroid/content/pm/UserInfo;->creationTime:J

    sub-long v14, v4, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v10, " ago"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_be

    :cond_208
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v14, v9, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    sub-long v14, v4, v14

    invoke-static {v14, v15, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string/jumbo v10, " ago"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_d6

    :catchall_220
    move-exception v10

    monitor-exit v13

    throw v10
    :try_end_223
    .catchall {:try_start_1ee .. :try_end_223} :catchall_1e7

    :cond_223
    :try_start_223
    monitor-exit v12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Device owner id:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/pm/UserManagerService;->mDeviceOwnerUserId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v10, "  Guest restrictions:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v12
    :try_end_254
    .catchall {:try_start_223 .. :try_end_254} :catchall_1ea

    :try_start_254
    const-string/jumbo v10, "    "

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    move-object/from16 v0, p2

    invoke-static {v0, v10, v13}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_260
    .catchall {:try_start_254 .. :try_end_260} :catchall_337

    :try_start_260
    monitor-exit v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_266
    .catchall {:try_start_260 .. :try_end_266} :catchall_1ea

    :try_start_266
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Device managed: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/pm/UserManagerService;->mIsDeviceManaged:Z

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    if-lez v10, :cond_2b0

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Recently removed userIds: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b0
    .catchall {:try_start_266 .. :try_end_2b0} :catchall_33a

    :cond_2b0
    :try_start_2b0
    monitor-exit v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    monitor-enter v12
    :try_end_2b6
    .catchall {:try_start_2b0 .. :try_end_2b6} :catchall_1ea

    :try_start_2b6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  Started users state: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/pm/UserManagerService;->mUserStates:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d3
    .catchall {:try_start_2b6 .. :try_end_2d3} :catchall_33d

    :try_start_2d3
    monitor-exit v12

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Max users: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  Supports switchable users: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "  All guests ephemeral: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1120071

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_335
    .catchall {:try_start_2d3 .. :try_end_335} :catchall_1ea

    monitor-exit v11

    return-void

    :catchall_337
    move-exception v10

    :try_start_338
    monitor-exit v12

    throw v10

    :catchall_33a
    move-exception v10

    monitor-exit v12

    throw v10

    :catchall_33d
    move-exception v10

    monitor-exit v12

    throw v10
    :try_end_340
    .catchall {:try_start_338 .. :try_end_340} :catchall_1ea
.end method

.method public evictCredentialEncryptionKey(I)V
    .registers 7

    const-string/jumbo v4, "evict CE key"

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_e
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->restartUserInBackground(I)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_15
    .catchall {:try_start_e .. :try_end_11} :catchall_1b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_15
    move-exception v1

    :try_start_16
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public exists(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method finishRemoveUser(I)V
    .registers 14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.extra.user_handle"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.MANAGE_USERS"

    new-instance v4, Lcom/android/server/pm/UserManagerService$6;

    invoke-direct {v4, p0, p1}, Lcom/android/server/pm/UserManagerService$6;-><init>(Lcom/android/server/pm/UserManagerService;I)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_29

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_29
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationRestrictionsForUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUidForPackage(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2d

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "get application restrictions for other user/app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    :cond_2d
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_30
    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->readApplicationRestrictionsLAr(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_36

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_36
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getCredentialOwnerProfile(I)I
    .registers 5

    const-string/jumbo v1, "get the credential owner"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    monitor-exit v2

    return v1

    :cond_1b
    monitor-exit v2

    :cond_1c
    return p1

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDefaultGuestRestrictions()Landroid/os/Bundle;
    .registers 4

    const-string/jumbo v0, "getDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_9
    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getFreeProfileBadgeLU(I)I
    .registers 9

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getMaxManagedProfiles()I

    move-result v1

    new-array v3, v1, [Z

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v4, :cond_3b

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v2, v5, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_38

    iget v5, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, p1, :cond_38

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_38

    iget v5, v2, Landroid/content/pm/UserInfo;->profileBadge:I

    if-ge v5, v1, :cond_38

    iget v5, v2, Landroid/content/pm/UserInfo;->profileBadge:I

    const/4 v6, 0x1

    aput-boolean v6, v3, v5

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    if-ge v0, v1, :cond_46

    aget-boolean v5, v3, v0

    if-nez v5, :cond_43

    return v0

    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_46
    const/4 v5, 0x0

    return v5
.end method

.method public getManagedProfileBadge(I)I
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1d

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v2

    if-nez v2, :cond_1d

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_20
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget v2, v1, Landroid/content/pm/UserInfo;->profileBadge:I
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_2c

    :goto_28
    monitor-exit v3

    return v2

    :cond_2a
    const/4 v2, 0x0

    goto :goto_28

    :catchall_2c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method getNextAvailableId()I
    .registers 8

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3e

    move-result v0

    if-ltz v0, :cond_b

    monitor-exit v4

    return v0

    :cond_b
    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_45

    const-string/jumbo v3, "UserManagerService"

    const-string/jumbo v5, "All available IDs are used. Recycling LRU ids."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRecentlyRemovedIds:Ljava/util/LinkedList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_3e

    goto :goto_27

    :catchall_3e
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_41
    :try_start_41
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->scanNextAvailableIdLocked()I
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    move-result v0

    :cond_45
    monitor-exit v4

    if-gez v0, :cond_51

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "No user id available!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_51
    return v0
.end method

.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .registers 7

    const-string/jumbo v3, "query users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v2, :cond_33

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_36

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_30

    monitor-exit v4

    return-object v1

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_33
    monitor-exit v4

    const/4 v3, 0x0

    return-object v3

    :catchall_36
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getProfileIds(IZ)[I
    .registers 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p1, v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getting profiles related to user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_21
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_34

    :try_start_24
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getProfileIdsLU(IZ)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_31

    move-result-object v2

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_34

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3

    throw v2
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_34

    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 4

    const-string/jumbo v0, "get the profile parent"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_f

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getProfiles(IZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    if-eq p1, v3, :cond_2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getting profiles related to user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    :goto_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_22
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_36

    :try_start_25
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/pm/UserManagerService;->getProfilesLU(IZZ)Ljava/util/List;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_33

    move-result-object v4

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_36

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :cond_2e
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v2

    goto :goto_1e

    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v3

    throw v4
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSeedAccountName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "Cannot get seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v2

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getSeedAccountOptions()Landroid/os/PersistableBundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "Cannot get seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v2

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getSeedAccountType()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "Cannot get seed account information"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v2

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getUserAccount(I)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "get user account"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUserCreationTime(I)J
    .registers 8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    if-ne v0, p1, :cond_1a

    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_29

    move-result-object v2

    :cond_e
    :goto_e
    monitor-exit v4

    if-nez v2, :cond_2c

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "userHandle can only be the calling user or a managed profile associated with this user"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    :try_start_1a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_e

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_29

    move-result-object v2

    goto :goto_e

    :catchall_29
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2c
    iget-wide v4, v2, Landroid/content/pm/UserInfo;->creationTime:J

    return-wide v4
.end method

.method public getUserHandle(I)I
    .registers 9

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I

    const/4 v2, 0x0

    array-length v5, v4

    :goto_7
    if-ge v2, v5, :cond_1a

    aget v1, v4, v2

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1d

    if-ne v6, p1, :cond_17

    monitor-exit v3

    return v1

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1a
    const/4 v2, -0x1

    monitor-exit v3

    return v2

    :catchall_1d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getUserIcon(I)Landroid/os/ParcelFileDescriptor;
    .registers 14

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_e

    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v7, :cond_2a

    :cond_e
    const-string/jumbo v7, "UserManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getUserIcon: unknown user #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_62

    monitor-exit v8

    return-object v11

    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserInfoNoChecks(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v0, v7, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v5, v6, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v0, v7, :cond_51

    if-ne v0, v5, :cond_4f

    const/4 v4, 0x1

    :goto_3d
    if-eq v1, p1, :cond_49

    xor-int/lit8 v7, v4, 0x1

    if-eqz v7, :cond_49

    const-string/jumbo v7, "get the icon of a user who is not related"

    invoke-static {v7}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    :cond_49
    iget-object v7, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_2a .. :try_end_4b} :catchall_62

    if-nez v7, :cond_53

    monitor-exit v8

    return-object v11

    :cond_4f
    const/4 v4, 0x0

    goto :goto_3d

    :cond_51
    const/4 v4, 0x0

    goto :goto_3d

    :cond_53
    :try_start_53
    iget-object v3, v6, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_62

    monitor-exit v8

    :try_start_56
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v8, 0x10000000

    invoke-static {v7, v8}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_60} :catch_65

    move-result-object v7

    return-object v7

    :catchall_62
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_65
    move-exception v2

    const-string/jumbo v7, "UserManagerService"

    const-string/jumbo v8, "Couldn\'t find icon file"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v11
.end method

.method public getUserIds()[I
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUserIds:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 4

    const-string/jumbo v0, "query user"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_13

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUserRestrictionSource(Ljava/lang/String;I)I
    .registers 7

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager$EnforcingUser;

    invoke-virtual {v3}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_1b
    return v2
.end method

.method public getUserRestrictionSources(Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    const-string/jumbo v5, "getUserRestrictionSource"

    invoke-static {v5}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_27

    new-instance v5, Landroid/os/UserManager$EnforcingUser;

    const/16 v6, -0x2710

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_47
    if-ltz v1, :cond_67

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v0, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-direct {p0, v3}, Lcom/android/server/pm/UserManagerService;->getEnforcingUserLocked(I)Landroid/os/UserManager$EnforcingUser;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catchall {:try_start_2a .. :try_end_64} :catchall_69

    :cond_64
    add-int/lit8 v1, v1, -0x1

    goto :goto_47

    :cond_67
    monitor-exit v6

    return-object v4

    :catchall_69
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getUserRestrictions(I)Landroid/os/Bundle;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUserSerialNumber(I)I
    .registers 4

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, -0x1

    monitor-exit v1

    return v0

    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->serialNumber:I
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_14

    monitor-exit v1

    return v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUsers(Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v4, "query users"

    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_9
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v2, :cond_47

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_2e

    :cond_2b
    :goto_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2e
    if-eqz p1, :cond_3c

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2b

    :cond_3c
    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->userWithName(Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_44

    goto :goto_2b

    :catchall_44
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_47
    monitor-exit v5

    return-object v3
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .registers 7

    const/4 v1, 0x0

    const-string/jumbo v2, "hasBaseUserRestriction"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    :cond_e
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_22

    move-result v1

    :cond_20
    monitor-exit v2

    return v1

    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method hasManagedProfile(I)Z
    .registers 8

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_2a

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v1, v4, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq p1, v4, :cond_27

    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->isProfileOf(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_2d

    move-result v4

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    monitor-exit v5

    return v4

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2a
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    :catchall_2d
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public hasUserRestriction(Ljava/lang/String;I)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    invoke-direct {p0, p2}, Lcom/android/server/pm/UserManagerService;->getEffectiveUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_12
    return v1
.end method

.method public isDemoUser(I)Z
    .registers 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_2f

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "You need MANAGE_USERS permission to query if u="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is a demo user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_32
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDemo()Z
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_40

    move-result v2

    :goto_3c
    monitor-exit v3

    return v2

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3c

    :catchall_40
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method isInitialized(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public isManagedProfile(I)Z
    .registers 6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p1, :cond_1d

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->hasManageUsersPermission()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v2

    if-nez v2, :cond_1d

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "You need MANAGE_USERS permission to: check if specified user a managed profile outside your profile group"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_20
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_2e

    move-result v2

    :goto_2a
    monitor-exit v3

    return v2

    :cond_2c
    const/4 v2, 0x0

    goto :goto_2a

    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isQuietModeEnabled(I)Z
    .registers 6

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1b

    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_18

    move-result-object v0

    :try_start_a
    monitor-exit v1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1b

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    :cond_15
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v1

    throw v3
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1b

    move-result v1

    monitor-exit v2

    return v1
.end method

.method public isRestricted()Z
    .registers 3

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit v1

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSameProfileGroup(II)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    const-string/jumbo v0, "check if in the same profile group"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroupNoChecks(II)Z

    move-result v0

    return v0
.end method

.method public isUserNameSet(I)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    if-eqz v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    monitor-exit v2

    return v1

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isUserRunning(I)Z
    .registers 3

    const-string/jumbo v0, "isUserRunning"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(I)Z
    .registers 3

    const-string/jumbo v0, "isUserUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 3

    const-string/jumbo v0, "isUserUnlockingOrUnlocked"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrInteractPermIfCallerInOtherProfileGroup(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    return v0
.end method

.method public makeInitialized(I)V
    .registers 8

    const-string/jumbo v2, "makeInitialized"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-eqz v1, :cond_1a

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_36

    :cond_1a
    const-string/jumbo v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeInitialized: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_4e

    monitor-exit v3

    return-void

    :cond_36
    :try_start_36
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v2, v2, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_47

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v4, v2, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/content/pm/UserInfo;->flags:I
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_4e

    const/4 v0, 0x1

    :cond_47
    monitor-exit v3

    if-eqz v0, :cond_4d

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    :cond_4d
    return-void

    :catchall_4e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public markGuestForDeletion(I)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "Only the system can remove users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "no_remove_user"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string/jumbo v3, "UserManagerService"

    const-string/jumbo v4, "Cannot remove user. DISALLOW_REMOVE_USER is enabled."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_27
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_5b

    :try_start_2a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_58

    :try_start_2d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/UserManagerService$UserData;
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_55

    if-eqz p1, :cond_39

    if-nez v2, :cond_3f

    :cond_39
    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_58

    :try_start_3a
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_5b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_3f
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_55

    move-result v3

    if-nez v3, :cond_39

    :try_start_47
    monitor-exit v5

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isGuest()Z
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_58

    move-result v3

    if-nez v3, :cond_60

    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_5b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v5

    throw v3
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v3

    :try_start_59
    monitor-exit v4

    throw v3
    :try_end_5b
    .catchall {:try_start_59 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_60
    :try_start_60
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/content/pm/UserInfo;->guestToRemove:Z

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget v5, v3, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v3, Landroid/content/pm/UserInfo;->flags:I

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_70
    .catchall {:try_start_60 .. :try_end_70} :catchall_58

    :try_start_70
    monitor-exit v4
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_5b

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7
.end method

.method public onBeforeStartUser(I)V
    .registers 8

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget v2, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v3, p1, v2, v5}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v5, v0}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    if-eqz p1, :cond_27

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_23
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_28

    monitor-exit v3

    :cond_27
    return-void

    :catchall_28
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public onBeforeUnlockUser(I)V
    .registers 8

    const/4 v5, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget v2, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    invoke-virtual {v3, p1, v2, v5}, Lcom/android/server/pm/UserDataPreparer;->prepareUserData(III)V

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v5, v0}, Lcom/android/server/pm/PackageManagerService;->reconcileAppsData(IIZ)V

    return-void
.end method

.method onShellCommand(Lcom/android/server/pm/UserManagerService$Shell;Ljava/lang/String;)I
    .registers 7

    if-nez p2, :cond_7

    invoke-virtual {p1, p2}, Lcom/android/server/pm/UserManagerService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    :try_start_b
    const-string/jumbo v2, "list"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->runList(Ljava/io/PrintWriter;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_19

    move-result v2

    return v2

    :catch_19
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_31
    const/4 v2, -0x1

    return v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/pm/UserManagerService$Shell;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$Shell;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$Shell;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/UserManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserLoggedIn(I)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v3, v3, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v3, :cond_27

    :cond_c
    const-string/jumbo v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userForeground: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v4, 0xdc46c32800L

    cmp-long v3, v0, v4

    if-lez v3, :cond_38

    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-wide v0, v3, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    :cond_38
    iget-object v3, v2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(Lcom/android/server/pm/UserManagerService$UserData;)V

    return-void
.end method

.method putUserInfo(Landroid/content/pm/UserInfo;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 6

    new-instance v0, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct {v0}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    iput-object p1, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_13

    monitor-exit v2

    return-object v0

    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method readUserLP(ILjava/io/InputStream;)Lcom/android/server/pm/UserManagerService$UserData;
    .registers 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v10, 0x0

    move/from16 v29, p1

    const/16 v18, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v24, -0x2710

    const/16 v23, 0x0

    const/16 v25, -0x2710

    const/16 v21, 0x0

    const/4 v12, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    sget-object v36, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v36 .. v36}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_33
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    const/16 v36, 0x2

    move/from16 v0, v32

    move/from16 v1, v36

    if-eq v0, v1, :cond_47

    const/16 v36, 0x1

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_33

    :cond_47
    const/16 v36, 0x2

    move/from16 v0, v32

    move/from16 v1, v36

    if-eq v0, v1, :cond_70

    const-string/jumbo v36, "UserManagerService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Unable to read user "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x0

    return-object v36

    :cond_70
    const/16 v36, 0x2

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_259

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "user"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_259

    const-string/jumbo v36, "id"

    const/16 v37, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, p1

    if-eq v0, v1, :cond_a8

    const-string/jumbo v36, "UserManagerService"

    const-string/jumbo v37, "User id does not match the file name"

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x0

    return-object v36

    :cond_a8
    const-string/jumbo v36, "serialNumber"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v29

    const-string/jumbo v36, "flags"

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v36, "icon"

    const/16 v37, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v36, "created"

    const-wide/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v36, "lastLoggedIn"

    const-wide/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move-wide/from16 v3, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/UserManagerService;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    const-string/jumbo v36, "lastLoggedInFingerprint"

    const/16 v37, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v36, "profileGroupId"

    const/16 v37, -0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v24

    const-string/jumbo v36, "profileBadge"

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    const-string/jumbo v36, "restrictedProfileParentId"

    const/16 v37, -0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    move/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v25

    const-string/jumbo v36, "partial"

    const/16 v37, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "true"

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_159

    const/16 v21, 0x1

    :cond_159
    const-string/jumbo v36, "guestToRemove"

    const/16 v37, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "true"

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_176

    const/4 v12, 0x1

    :cond_176
    const-string/jumbo v36, "seedAccountName"

    const/16 v37, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v36, "seedAccountType"

    const/16 v37, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-nez v26, :cond_198

    if-eqz v28, :cond_19a

    :cond_198
    const/16 v22, 0x1

    :cond_19a
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    :cond_19e
    :goto_19e
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    const/16 v36, 0x1

    move/from16 v0, v32

    move/from16 v1, v36

    if-eq v0, v1, :cond_259

    const/16 v36, 0x3

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_1bc

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v19

    if-le v0, v1, :cond_259

    :cond_1bc
    const/16 v36, 0x3

    move/from16 v0, v32

    move/from16 v1, v36

    if-eq v0, v1, :cond_19e

    const/16 v36, 0x4

    move/from16 v0, v32

    move/from16 v1, v36

    if-eq v0, v1, :cond_19e

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v36, "name"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1ee

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    const/16 v36, 0x4

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_19e

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v18

    goto :goto_19e

    :cond_1ee
    const-string/jumbo v36, "restrictions"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_200

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v7

    goto :goto_19e

    :cond_200
    const-string/jumbo v36, "device_policy_restrictions"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_212

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v15

    goto :goto_19e

    :cond_212
    const-string/jumbo v36, "device_policy_global_restrictions"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_225

    invoke-static/range {v20 .. v20}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v11

    goto/16 :goto_19e

    :cond_225
    const-string/jumbo v36, "account"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_244

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v32

    const/16 v36, 0x4

    move/from16 v0, v32

    move/from16 v1, v36

    if-ne v0, v1, :cond_19e

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_19e

    :cond_244
    const-string/jumbo v36, "seedAccountOptions"

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_19e

    invoke-static/range {v20 .. v20}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v27

    const/16 v22, 0x1

    goto/16 :goto_19e

    :cond_259
    new-instance v34, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v34

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v13, v10}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    move/from16 v0, v29

    move-object/from16 v1, v34

    iput v0, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    move-object/from16 v0, v34

    iput-wide v8, v0, Landroid/content/pm/UserInfo;->creationTime:J

    move-wide/from16 v0, v16

    move-object/from16 v2, v34

    iput-wide v0, v2, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    move-object/from16 v0, v34

    iput-object v14, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    move/from16 v0, v21

    move-object/from16 v1, v34

    iput-boolean v0, v1, Landroid/content/pm/UserInfo;->partial:Z

    move-object/from16 v0, v34

    iput-boolean v12, v0, Landroid/content/pm/UserInfo;->guestToRemove:Z

    move/from16 v0, v24

    move-object/from16 v1, v34

    iput v0, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    move/from16 v0, v23

    move-object/from16 v1, v34

    iput v0, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    move/from16 v0, v25

    move-object/from16 v1, v34

    iput v0, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    new-instance v33, Lcom/android/server/pm/UserManagerService$UserData;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/pm/UserManagerService$UserData;-><init>()V

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    move-object/from16 v0, v33

    iput-object v6, v0, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    move/from16 v0, v22

    move-object/from16 v1, v33

    iput-boolean v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    iput-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    move-object/from16 v37, v0

    monitor-enter v37

    if-eqz v7, :cond_2d1

    :try_start_2c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2d1
    if-eqz v15, :cond_2e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2e0
    if-eqz v11, :cond_2ef

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2ef
    .catchall {:try_start_2c4 .. :try_end_2ef} :catchall_2f1

    :cond_2ef
    monitor-exit v37

    return-object v33

    :catchall_2f1
    move-exception v36

    monitor-exit v37

    throw v36
.end method

.method reconcileUsers(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUserDataPreparer:Lcom/android/server/pm/UserDataPreparer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/UserDataPreparer;->reconcileUsers(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public removeUser(I)Z
    .registers 9

    const/4 v6, 0x0

    const-string/jumbo v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeUser u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "Only the system can remove users"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_24
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_66

    move-result v0

    :goto_2e
    monitor-exit v4

    if-eqz v0, :cond_69

    const-string/jumbo v1, "no_remove_managed_profile"

    :goto_34
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6d

    const-string/jumbo v3, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot remove user. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is enabled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_64
    const/4 v0, 0x0

    goto :goto_2e

    :catchall_66
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_69
    const-string/jumbo v1, "no_remove_user"

    goto :goto_34

    :cond_6d
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v3

    return v3
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3

    const-string/jumbo v0, "Only the system can remove users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->removeUserUnchecked(I)Z

    move-result v0

    return v0
.end method

.method removeUserInfo(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 7

    const-string/jumbo v1, "set application restrictions"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkSystemOrRoot(Ljava/lang/String;)V

    if-eqz p2, :cond_c

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mAppRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_17

    :try_start_11
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_17
    invoke-static {p1, p3}, Lcom/android/server/pm/UserManagerService;->cleanAppRestrictionsForPackageLAr(Ljava/lang/String;I)V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_39

    :goto_1a
    monitor-exit v2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_35
    :try_start_35
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/UserManagerService;->writeApplicationRestrictionsLAr(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_1a

    :catchall_39
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDefaultGuestRestrictions(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "setDefaultGuestRestrictions"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mGuestRestrictions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_1c

    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_17
    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->writeUserListLP()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1f

    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setQuietModeEnabled(IZ)V
    .registers 13

    const-string/jumbo v6, "silence profile"

    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_a
    iget-object v8, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_41

    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParentLU(I)Landroid/content/pm/UserInfo;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_44

    move-result-object v4

    :try_start_15
    monitor-exit v8

    if-eqz v5, :cond_20

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_47

    :cond_20
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not a profile"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v6

    monitor-exit v7

    throw v6

    :catchall_44
    move-exception v6

    :try_start_45
    monitor-exit v8

    throw v6

    :cond_47
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    if-eq v6, p2, :cond_5d

    iget v6, v5, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit16 v6, v6, 0x80

    iput v6, v5, Landroid/content/pm/UserInfo;->flags:I

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_5c
    .catchall {:try_start_45 .. :try_end_5c} :catchall_41

    const/4 v0, 0x1

    :cond_5d
    monitor-exit v7

    if-eqz v0, :cond_88

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    if-eqz p2, :cond_89

    :try_start_66
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, p1, v7, v8}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    const-class v6, Landroid/app/ActivityManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6, p1}, Landroid/app/ActivityManagerInternal;->killForegroundAppsForUser(I)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_7a} :catch_91
    .catchall {:try_start_66 .. :try_end_7a} :catchall_9f

    :goto_7a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_7d
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-direct {p0, v6, v7, p2}, Lcom/android/server/pm/UserManagerService;->broadcastProfileAvailabilityChanges(Landroid/os/UserHandle;Landroid/os/UserHandle;Z)V

    :cond_88
    return-void

    :cond_89
    :try_start_89
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/app/IActivityManager;->startUserInBackground(I)Z
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_90} :catch_91
    .catchall {:try_start_89 .. :try_end_90} :catchall_9f

    goto :goto_7a

    :catch_91
    move-exception v1

    :try_start_92
    const-string/jumbo v6, "UserManagerService"

    const-string/jumbo v7, "fail to start/stop user for quiet mode"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catchall {:try_start_92 .. :try_end_9b} :catchall_9f

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7d

    :catchall_9f
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Z)V
    .registers 12

    const-string/jumbo v1, "Require MANAGE_USERS permission to set user seed data"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_42

    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string/jumbo v1, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No such user for settings seed data u="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_3f

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_42

    monitor-exit v2

    return-void

    :cond_2f
    :try_start_2f
    iput-object p2, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    iput-boolean p5, v0, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_3f

    :try_start_37
    monitor-exit v3

    if-eqz p5, :cond_3d

    invoke-direct {p0, v0}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_42

    :cond_3d
    monitor-exit v2

    return-void

    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v3

    throw v1
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUserAccount(ILjava/lang/String;)V
    .registers 11

    const-string/jumbo v3, "set user account"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUserAndAcrossUsersFullPermission(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_a
    iget-object v5, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_4a

    :try_start_d
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService$UserData;

    if-nez v1, :cond_34

    const-string/jumbo v3, "UserManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "User not found for setting user account: u"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_47

    :try_start_31
    monitor-exit v5
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_4a

    monitor-exit v4

    return-void

    :cond_34
    :try_start_34
    iget-object v0, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-static {v0, p2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    iput-object p2, v1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_47

    move-object v2, v1

    :cond_3f
    :try_start_3f
    monitor-exit v5

    if-eqz v2, :cond_45

    invoke-direct {p0, v2}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_4a

    :cond_45
    monitor-exit v4

    return-void

    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v5

    throw v3
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setUserEnabled(I)V
    .registers 6

    const-string/jumbo v1, "enable user"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2f

    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfoLU(I)Landroid/content/pm/UserInfo;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_2c

    move-result-object v0

    :try_start_10
    monitor-exit v1

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2a

    iget v1, v0, Landroid/content/pm/UserInfo;->flags:I

    xor-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/content/pm/UserInfo;->flags:I

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_2f

    :cond_2a
    monitor-exit v2

    return-void

    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v1

    throw v3
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 5

    const-string/jumbo v0, "update users"

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "UserManagerService"

    const-string/jumbo v1, "Cannot set user icon. DISALLOW_SET_USER_ICON is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService;->mLocalService:Lcom/android/server/pm/UserManagerService$LocalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService$LocalService;->setUserIcon(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public setUserName(ILjava/lang/String;)V
    .registers 9

    const-string/jumbo v2, "rename users"

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataNoChecks(I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v2, v2, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_32

    :cond_16
    const-string/jumbo v2, "UserManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUserName: unknown user #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_4f

    monitor-exit v3

    return-void

    :cond_32
    if-eqz p2, :cond_48

    :try_start_34
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_48

    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iput-object p2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/UserManagerService;->writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;)V
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_4f

    const/4 v0, 0x1

    :cond_48
    monitor-exit v3

    if-eqz v0, :cond_4e

    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService;->sendUserInfoChangedBroadcast(I)V

    :cond_4e
    return-void

    :catchall_4f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setUserRestriction(Ljava/lang/String;ZI)V
    .registers 7

    const-string/jumbo v1, "setUserRestriction"

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/android/server/pm/UserRestrictionsUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_24

    monitor-exit v2

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v3, "Cannot check seed account information"

    invoke-static {v3}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v2, :cond_44

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$UserData;

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_25
    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v3, :cond_22

    iget-object v3, v0, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_47

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_22

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :cond_44
    monitor-exit v4

    const/4 v3, 0x0

    return v3

    :catchall_47
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method systemReady()V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/UserManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_12
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_44

    monitor-exit v1

    invoke-direct {p0}, Lcom/android/server/pm/UserManagerService;->findCurrentGuestUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_32

    const-string/jumbo v1, "no_config_wifi"

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_32

    const-string/jumbo v1, "no_config_wifi"

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    :cond_32
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDisableQuietModeCallback:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catchall_44
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z
    .registers 13

    const/4 v9, 0x0

    const-string/jumbo v6, "silence profile"

    invoke-static {v6}, Lcom/android/server/pm/UserManagerService;->checkManageUsersPermission(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v6

    if-nez v6, :cond_17

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1c

    :cond_17
    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/UserManagerService;->setQuietModeEnabled(IZ)V

    const/4 v6, 0x1

    return v6

    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_20
    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_7c

    move-result-object v5

    if-nez v5, :cond_37

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :cond_37
    :try_start_37
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_47

    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v0, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_47
    const-string/jumbo v6, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x54000000

    invoke-static {v6, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v6, 0x10800000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_78
    .catchall {:try_start_37 .. :try_end_78} :catchall_7c

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catchall_7c
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method writeUserLP(Lcom/android/server/pm/UserManagerService$UserData;Ljava/io/OutputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v3, 0x1

    const/16 v7, -0x2710

    const/4 v6, 0x0

    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    const-string/jumbo v2, "user"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "id"

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "serialNumber"

    iget v3, v1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "flags"

    iget v3, v1, Landroid/content/pm/UserInfo;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "created"

    iget-wide v4, v1, Landroid/content/pm/UserInfo;->creationTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "lastLoggedIn"

    iget-wide v4, v1, Landroid/content/pm/UserInfo;->lastLoggedInTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    if-eqz v2, :cond_6f

    const-string/jumbo v2, "lastLoggedInFingerprint"

    iget-object v3, v1, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6f
    iget-object v2, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v2, :cond_7b

    const-string/jumbo v2, "icon"

    iget-object v3, v1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7b
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v2, :cond_88

    const-string/jumbo v2, "partial"

    const-string/jumbo v3, "true"

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_88
    iget-boolean v2, v1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    if-eqz v2, :cond_95

    const-string/jumbo v2, "guestToRemove"

    const-string/jumbo v3, "true"

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_95
    iget v2, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v2, v7, :cond_a5

    const-string/jumbo v2, "profileGroupId"

    iget v3, v1, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a5
    const-string/jumbo v2, "profileBadge"

    iget v3, v1, Landroid/content/pm/UserInfo;->profileBadge:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-eq v2, v7, :cond_c1

    const-string/jumbo v2, "restrictedProfileParentId"

    iget v3, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c1
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_dd

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    if-eqz v2, :cond_d1

    const-string/jumbo v2, "seedAccountName"

    iget-object v3, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountName:Ljava/lang/String;

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d1
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    if-eqz v2, :cond_dd

    const-string/jumbo v2, "seedAccountType"

    iget-object v3, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountType:Ljava/lang/String;

    invoke-interface {v0, v6, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_dd
    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_f2

    const-string/jumbo v2, "name"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "name"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f2
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService;->mRestrictionsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_f5
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mBaseUserRestrictions:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string/jumbo v4, "restrictions"

    invoke-static {v0, v2, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyLocalUserRestrictions:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string/jumbo v4, "device_policy_restrictions"

    invoke-static {v0, v2, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService;->mDevicePolicyGlobalUserRestrictions:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string/jumbo v4, "device_policy_global_restrictions"

    invoke-static {v0, v2, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_125
    .catchall {:try_start_f5 .. :try_end_125} :catchall_15e

    monitor-exit v3

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    if-eqz v2, :cond_13b

    const-string/jumbo v2, "account"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->account:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "account"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13b
    iget-boolean v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->persistSeedData:Z

    if-eqz v2, :cond_154

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    if-eqz v2, :cond_154

    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/pm/UserManagerService$UserData;->seedAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v0}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v2, "seedAccountOptions"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_154
    const-string/jumbo v2, "user"

    invoke-interface {v0, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    return-void

    :catchall_15e
    move-exception v2

    monitor-exit v3

    throw v2
.end method
