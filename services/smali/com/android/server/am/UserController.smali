.class final Lcom/android/server/am/UserController;
.super Ljava/lang/Object;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserController$Injector;
    }
.end annotation


# static fields
.field static final MAX_RUNNING_USERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final USER_SWITCH_TIMEOUT:I = 0xbb8


# instance fields
.field private volatile mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/am/UserController$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mStartedUserArray:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStartedUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTargetUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mUserLru:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mUserManager:Lcom/android/server/pm/UserManagerService;

.field private final mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

.field private final mUserSwitchObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/app/IUserSwitchObserver;",
            ">;"
        }
    .end annotation
.end field

.field mUserSwitchUiEnabled:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/UserController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/UserController;)Lcom/android/server/am/UserController$Injector;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/UserController;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    new-instance v0, Lcom/android/server/am/UserController$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/am/UserController$Injector;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/UserController;-><init>(Lcom/android/server/am/UserController$Injector;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UserController$Injector;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    new-array v1, v3, [I

    aput v2, v1, v2

    iput-object v1, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    iput-boolean v3, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    iput-object p1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getLock()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/am/UserController$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/UserState;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-direct {v0, v1}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    return-void
.end method

.method private finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V
    .registers 25

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Finishing user boot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_197

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_3a

    monitor-exit v21

    return-void

    :cond_3a
    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_3c
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_f5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    if-nez v16, :cond_ad

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_ad

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_ad

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "framework_locked_boot_completed"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/16 v17, 0x78

    const/16 v2, 0x78

    move/from16 v0, v20

    if-le v0, v2, :cond_ad

    const-string/jumbo v2, "SystemServerTiming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finishUserBoot took too long. uptimeSeconds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x40

    const/4 v6, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x9000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v5, 0x0

    aput-object v4, v9, v5

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    :cond_f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->isManagedProfile(I)Z

    move-result v2

    if-nez v2, :cond_10b

    invoke-static/range {v16 .. v16}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v2

    if-eqz v2, :cond_1a3

    :cond_10b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v18

    if-eqz v18, :cond_162

    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    move-result v2

    if-eqz v2, :cond_162

    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): attempting unlock because parent is unlocked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_160
    .catchall {:try_start_3c .. :try_end_160} :catchall_197

    :goto_160
    monitor-exit v21

    return-void

    :cond_162
    if-nez v18, :cond_19a

    :try_start_164
    const-string/jumbo v19, "<null>"

    :goto_167
    sget-object v2, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): delaying unlock because parent is locked"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_196
    .catchall {:try_start_164 .. :try_end_196} :catchall_197

    goto :goto_160

    :catchall_197
    move-exception v2

    monitor-exit v21

    throw v2

    :cond_19a
    :try_start_19a
    move-object/from16 v0, v18

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_167

    :cond_1a3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z
    :try_end_1aa
    .catchall {:try_start_19a .. :try_end_1aa} :catchall_197

    goto :goto_160
.end method

.method private finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    .registers 39

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v36, v0

    monitor-enter v36

    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_135

    move-result-object v4

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_25

    monitor-exit v36

    return-void

    :cond_25
    :try_start_25
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_135

    move-result-object v35

    if-nez v35, :cond_31

    monitor-exit v36

    return-void

    :cond_31
    :try_start_31
    invoke-static/range {v18 .. v18}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_135

    move-result v4

    if-nez v4, :cond_39

    monitor-exit v36

    return-void

    :cond_39
    :try_start_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->onUserLoggedIn(I)V

    invoke-virtual/range {v35 .. v35}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_93

    if-eqz v18, :cond_93

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Initializing user #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_INITIALIZE"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x11000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v7, Lcom/android/server/am/UserController$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/UserController$1;-><init>(Lcom/android/server/am/UserController;Landroid/content/pm/UserInfo;)V

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    :cond_93
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sending BOOT_COMPLETE user #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v18, :cond_e2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->isRuntimeRestarted()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->isFirstBootOrUpgrade()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v0, v6

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v6, "framework_boot_completed"

    move/from16 v0, v34

    invoke-static {v4, v6, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_e2
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "android.intent.extra.user_handle"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x9000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v19, v0

    new-instance v22, Lcom/android/server/am/UserController$2;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/UserController$2;-><init>(Lcom/android/server/am/UserController;I)V

    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v4, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v6, 0x0

    aput-object v4, v26, v6

    sget v31, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v32, 0x3e8

    move/from16 v33, v18

    invoke-virtual/range {v19 .. v33}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_133
    .catchall {:try_start_39 .. :try_end_133} :catchall_135

    monitor-exit v36

    return-void

    :catchall_135
    move-exception v4

    monitor-exit v36

    throw v4
.end method

.method private finishUserUnlocking(Lcom/android/server/am/UserState;)V
    .registers 7

    iget-object v2, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_6e

    move-result-object v2

    if-eq v2, p1, :cond_1a

    monitor-exit v3

    return-void

    :cond_1a
    :try_start_1a
    invoke-static {v1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_6e

    move-result v2

    if-nez v2, :cond_22

    monitor-exit v3

    return-void

    :cond_22
    const/4 v2, 0x1

    const/4 v4, 0x2

    :try_start_24
    invoke-virtual {p1, v2, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    iget v4, p1, Lcom/android/server/am/UserState;->state:I

    invoke-virtual {v2, v1, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_6e

    const/4 v0, 0x1

    :cond_36
    monitor-exit v3

    if-eqz v0, :cond_6d

    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->start()V

    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040079

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerService;->onBeforeUnlockUser(I)V

    iget-object v2, p1, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/internal/util/ProgressReporter;->setProgress(I)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_6d
    return-void

    :catchall_6e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private forceStopUserLocked(ILjava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/UserController$Injector;->activityManagerForceStopPackageLocked(ILjava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_STOPPED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    const/16 v16, -0x1

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .registers 2

    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method private getUsersToStopLocked(I)[I
    .registers 15

    const/16 v12, -0x2710

    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v5

    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {v7, p1}, Landroid/util/IntArray;->add(I)V

    iget-object v10, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v10

    :try_start_13
    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    const/16 v11, -0x2710

    invoke-virtual {v9, p1, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v5, :cond_50

    iget-object v9, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/UserState;

    iget-object v9, v8, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    const/16 v11, -0x2710

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v6, v12, :cond_45

    if-ne v6, v3, :cond_43

    const/4 v1, 0x1

    :goto_39
    if-ne v4, p1, :cond_47

    const/4 v2, 0x1

    :goto_3c
    if-eqz v1, :cond_40

    if-eqz v2, :cond_49

    :cond_40
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_43
    const/4 v1, 0x0

    goto :goto_39

    :cond_45
    const/4 v1, 0x0

    goto :goto_39

    :cond_47
    const/4 v2, 0x0

    goto :goto_3c

    :cond_49
    invoke-virtual {v7, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_4d

    goto :goto_40

    :catchall_4d
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_50
    monitor-exit v10

    invoke-virtual {v7}, Landroid/util/IntArray;->toArray()[I

    move-result-object v9

    return-object v9
.end method

.method private isCurrentUserLocked(I)Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static notifyFinished(ILandroid/os/IProgressListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, p0, v1}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method private stopBackgroundUsersIfEnforced(I)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v1, "no_run_in_background"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_12
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-void

    :catchall_17
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private stopGuestOrEphemeralUserIfBackground()V
    .registers 10

    iget-object v6, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_6d

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v5, v7, :cond_31

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_31
    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x4

    if-eq v5, v7, :cond_2e

    iget v5, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v7, 0x5

    if-eq v5, v7, :cond_2e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_58

    const-class v5, Landroid/os/UserManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManagerInternal;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/os/UserManagerInternal;->onEphemeralUserStop(I)V

    :cond_58
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v5

    if-nez v5, :cond_64

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v5

    if-eqz v5, :cond_2e

    :cond_64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6f

    :cond_6d
    monitor-exit v6

    return-void

    :catchall_6f
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/UserState;

    if-nez v19, :cond_23

    if-eqz p2, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/am/UserController$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/am/UserController$4;-><init>(Lcom/android/server/am/UserController;Landroid/app/IStopUserCallback;I)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void

    :cond_23
    if-eqz p2, :cond_2e

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_ab

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v6, 0x5

    if-eq v4, v6, :cond_ab

    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    :try_start_5a
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STOPPING"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v6, 0x1

    invoke-virtual {v5, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v7, Lcom/android/server/am/UserController$5;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v1, v2}, Lcom/android/server/am/UserController$5;-><init>(Lcom/android/server/am/UserController;ILcom/android/server/am/UserState;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/UserController$Injector;->clearBroadcastQueueForUserLocked(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/String;

    const-string/jumbo v6, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v8, 0x0

    aput-object v6, v11, v8

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x3e8

    const/16 v18, -0x1

    invoke-virtual/range {v4 .. v18}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_a8
    .catchall {:try_start_5a .. :try_end_a8} :catchall_ac

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_ab
    return-void

    :catchall_ac
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    .registers 12

    const/4 v6, 0x0

    if-nez p1, :cond_5

    const/4 v4, -0x3

    return v4

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, -0x2

    return v4

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->getUsersToStopLocked(I)[I

    move-result-object v3

    const/4 v0, 0x0

    :goto_12
    array-length v4, v3

    if-ge v0, v4, :cond_4a

    aget v1, v3, v0

    if-eqz v1, :cond_1f

    invoke-direct {p0, v1}, Lcom/android/server/am/UserController;->isCurrentUserLocked(I)Z

    move-result v4

    if-eqz v4, :cond_47

    :cond_1f
    if-eqz p2, :cond_45

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force stop user "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ". Related users will not be stopped"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    return v6

    :cond_45
    const/4 v4, -0x4

    return v4

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_4a
    array-length v7, v3

    move v5, v6

    :goto_4c
    if-ge v5, v7, :cond_5c

    aget v2, v3, v5

    if-ne v2, p1, :cond_5a

    move-object v4, p3

    :goto_53
    invoke-direct {p0, v2, v4}, Lcom/android/server/am/UserController;->stopSingleUserLocked(ILandroid/app/IStopUserCallback;)V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4c

    :cond_5a
    const/4 v4, 0x0

    goto :goto_53

    :cond_5c
    return v6
.end method

.method private updateCurrentProfileIdsLocked()V
    .registers 10

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    iget v6, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [I

    const/4 v1, 0x0

    :goto_14
    array-length v5, v0

    if-ge v1, v5, :cond_24

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_24
    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v6

    :try_start_29
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    iget-object v5, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    :goto_3a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_58

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v7, -0x2710

    if-eq v5, v7, :cond_55

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    iget v8, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_55
    .catchall {:try_start_29 .. :try_end_55} :catchall_5a

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_58
    monitor-exit v6

    return-void

    :catchall_5a
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private updateStartedUserArrayLocked()V
    .registers 9

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_21

    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_1e

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_1e

    add-int/lit8 v1, v1, 0x1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_21
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_27
    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4f

    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v6, :cond_4c

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    if-eq v4, v7, :cond_4c

    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    add-int/lit8 v2, v1, 0x1

    iget-object v5, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    move v1, v2

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_4f
    return-void
.end method


# virtual methods
.method continueUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 9

    const/16 v4, 0x37

    const/4 v3, 0x0

    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continue user switch oldUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newUser #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v0, :cond_38

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2e
    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingScreen()V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_51

    monitor-exit v1

    :cond_38
    iput-boolean v3, p1, Lcom/android/server/am/UserState;->switching:Z

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/android/server/am/UserController;->stopGuestOrEphemeralUserIfBackground()V

    invoke-direct {p0, p2}, Lcom/android/server/am/UserController;->stopBackgroundUsersIfEnforced(I)V

    return-void

    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method dispatchForegroundProfileChanged(I)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_17

    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onForegroundProfileSwitch(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_1d
    move-exception v0

    goto :goto_14
.end method

.method dispatchLockedBootComplete(I)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v2, :cond_17

    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onLockedBootComplete(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_1d

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_1d
    move-exception v0

    goto :goto_14
.end method

.method dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 19

    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Dispatch onUserSwitching oldUser #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " newUser #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v14

    if-lez v14, :cond_9c

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iget-object v9, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v3, 0x1

    :try_start_39
    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/UserState;->switching:Z

    iput-object v7, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_94

    monitor-exit v9

    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v13, 0x0

    :goto_4a
    if-ge v13, v14, :cond_a3

    :try_start_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "#"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v13}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_74} :catch_9a

    :try_start_74
    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_97

    :try_start_77
    monitor-exit v3

    new-instance v2, Lcom/android/server/am/UserController$8;

    move-object v3, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/UserController$8;-><init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v13}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    move/from16 v0, p3

    invoke-interface {v3, v0, v2}, Landroid/app/IUserSwitchObserver;->onUserSwitching(ILandroid/os/IRemoteCallback;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_91} :catch_9a

    :goto_91
    add-int/lit8 v13, v13, 0x1

    goto :goto_4a

    :catchall_94
    move-exception v3

    monitor-exit v9

    throw v3

    :catchall_97
    move-exception v9

    :try_start_98
    monitor-exit v3

    throw v9
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_9a} :catch_9a

    :catch_9a
    move-exception v12

    goto :goto_91

    :cond_9c
    iget-object v3, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9f
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a9

    monitor-exit v3

    :cond_a3
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catchall_a9
    move-exception v9

    monitor-exit v3

    throw v9
.end method

.method dispatchUserSwitchComplete(I)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v2, :cond_21

    :try_start_13
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/app/IUserSwitchObserver;

    invoke-interface {v3, p1}, Landroid/app/IUserSwitchObserver;->onUserSwitchComplete(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_27

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_21
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_27
    move-exception v0

    goto :goto_1e
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .registers 7

    const-string/jumbo v2, "  mStartedUsers:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/UserState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_35
    const-string/jumbo v2, "  mStartedUserArray: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3c
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    array-length v2, v2

    if-ge v0, v2, :cond_53

    if-lez v0, :cond_49

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_49
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_53
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  mUserLru: ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_60
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7c

    if-lez v0, :cond_70

    const-string/jumbo v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_70
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_7c
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_93

    const-string/jumbo v2, "  mStartedUserArray: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_93
    iget-object v3, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v3

    :try_start_96
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_ce

    const-string/jumbo v2, "  mUserProfileGroupIds:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_a5
    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_ce

    const-string/jumbo v2, "    User #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, " -> profile #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V
    :try_end_cb
    .catchall {:try_start_96 .. :try_end_cb} :catchall_d0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    :cond_ce
    monitor-exit v3

    return-void

    :catchall_d0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method exists(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    return v0
.end method

.method finishUserStopped(Lcom/android/server/am/UserState;)V
    .registers 11

    iget-object v6, p1, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object v7, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v6, p1, Lcom/android/server/am/UserState;->mStopCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_5d

    move-result-object v6

    if-eq v6, p1, :cond_2f

    const/4 v4, 0x0

    :goto_19
    monitor-exit v7

    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6c

    if-eqz v4, :cond_60

    :try_start_23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/IStopUserCallback;

    invoke-interface {v6, v5}, Landroid/app/IStopUserCallback;->userStopped(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_6a

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2f
    :try_start_2f
    iget v6, p1, Lcom/android/server/am/UserState;->state:I

    const/4 v8, 0x5

    if-eq v6, v8, :cond_36

    const/4 v4, 0x0

    goto :goto_19

    :cond_36
    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->remove(I)V

    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/UserManagerInternal;->removeUserState(I)V

    iget-object v6, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6, v5}, Lcom/android/server/am/UserController$Injector;->activityManagerOnUserStopped(I)V

    const-string/jumbo v6, "finish user"

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/UserController;->forceStopUserLocked(ILjava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_2f .. :try_end_5c} :catchall_5d

    goto :goto_19

    :catchall_5d
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_60
    :try_start_60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/IStopUserCallback;

    invoke-interface {v6, v5}, Landroid/app/IStopUserCallback;->userStopAborted(I)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_69} :catch_6a

    goto :goto_2c

    :catch_6a
    move-exception v1

    goto :goto_2c

    :cond_6c
    if-eqz v4, :cond_9a

    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6, v5}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerCleanupUser(I)V

    iget-object v7, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_76
    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getActivityStackSupervisor()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeUserLocked(I)V
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_9b

    monitor-exit v7

    invoke-virtual {p0, v5}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v6

    if-eqz v6, :cond_93

    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/pm/UserManagerService;->removeUser(I)Z

    :cond_93
    :try_start_93
    invoke-direct {p0}, Lcom/android/server/am/UserController;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/os/storage/IStorageManager;->lockUserKey(I)V
    :try_end_9a
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_9a} :catch_9e

    :cond_9a
    return-void

    :catchall_9b
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_9e
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method finishUserStopping(ILcom/android/server/am/UserState;)V
    .registers 21

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v5, Lcom/android/server/am/UserController$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Lcom/android/server/am/UserController$6;-><init>(Lcom/android/server/am/UserController;Lcom/android/server/am/UserState;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1b
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/server/am/UserState;->state:I
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_73

    const/4 v6, 0x4

    if-eq v2, v6, :cond_24

    monitor-exit v4

    return-void

    :cond_24
    const/4 v2, 0x5

    :try_start_25
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UserState;->setState(I)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_73

    monitor-exit v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x4007

    move/from16 v0, p1

    invoke-virtual {v2, v6, v4, v0}, Lcom/android/server/am/UserController$Injector;->batteryStatsServiceNoteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/UserController$Injector;->systemServiceManagerStopUser(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    move/from16 v16, p1

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_71
    .catchall {:try_start_5b .. :try_end_71} :catchall_76

    monitor-exit v17

    return-void

    :catchall_73
    move-exception v2

    monitor-exit v4

    throw v2

    :catchall_76
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method finishUserSwitch(Lcom/android/server/am/UserState;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V

    invoke-virtual {p0}, Lcom/android/server/am/UserController;->startProfilesLocked()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->stopRunningUsersLocked(I)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method finishUserUnlocked(Lcom/android/server/am/UserState;)V
    .registers 38

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v35, v0

    monitor-enter v35

    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_127

    move-result-object v2

    move-object/from16 v0, p1

    if-eq v2, v0, :cond_25

    monitor-exit v35

    return-void

    :cond_25
    :try_start_25
    invoke-static/range {v16 .. v16}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_127

    move-result v2

    if-nez v2, :cond_2d

    monitor-exit v35

    return-void

    :cond_2d
    const/4 v2, 0x2

    const/4 v4, 0x3

    :try_start_2f
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/UserState;->setState(II)Z

    move-result v2

    if-eqz v2, :cond_11b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Landroid/os/UserManagerInternal;->setUserState(II)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    invoke-virtual {v2}, Lcom/android/internal/util/ProgressReporter;->finish()V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x50000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_db

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v33

    if-eqz v33, :cond_db

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v2, 0x50000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v17, v0

    sget v29, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move-object/from16 v0, v33

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v31, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x3e8

    invoke-virtual/range {v17 .. v31}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    :cond_db
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v2, v0, Landroid/content/pm/UserInfo;->lastLoggedInFingerprint:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_123

    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_120

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/UserState;->tokenProvided:Z

    if-eqz v2, :cond_11d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    xor-int/lit8 v34, v2, 0x1

    :goto_107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v4, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move/from16 v0, v16

    move/from16 v1, v34

    invoke-virtual {v2, v0, v1, v4}, Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V
    :try_end_11b
    .catchall {:try_start_2f .. :try_end_11b} :catchall_127

    :cond_11b
    :goto_11b
    monitor-exit v35

    return-void

    :cond_11d
    const/16 v34, 0x1

    goto :goto_107

    :cond_120
    const/16 v34, 0x0

    goto :goto_107

    :cond_123
    :try_start_123
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V
    :try_end_126
    .catchall {:try_start_123 .. :try_end_126} :catchall_127

    goto :goto_11b

    :catchall_127
    move-exception v2

    monitor-exit v35

    throw v2
.end method

.method getCurrentOrTargetUserIdLocked()I
    .registers 3

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_8
.end method

.method getCurrentProfileIdsLocked()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    return-object v0
.end method

.method getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_56

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: getCurrentUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_63

    iget v1, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    :cond_63
    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_66
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserLocked()Landroid/content/pm/UserInfo;
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6c

    move-result-object v2

    monitor-exit v1

    return-object v2

    :catchall_6c
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method getCurrentUserIdLocked()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    return v0
.end method

.method getCurrentUserLocked()Landroid/content/pm/UserInfo;
    .registers 4

    iget v1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_d

    iget v0, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    return-object v1

    :cond_d
    iget v0, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    goto :goto_8
.end method

.method getProfileIds(I)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2a
    return-object v3
.end method

.method getStartedUserArrayLocked()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUserArray:[I

    return-object v0
.end method

.method getStartedUserStateLocked(I)Lcom/android/server/am/UserState;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UserState;

    return-object v0
.end method

.method getUserIds()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method getUsers()[I
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v2, v1, v2

    goto :goto_d
.end method

.method handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 20

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, p3, :cond_7

    return p3

    :cond_7
    invoke-virtual {p0, p3}, Lcom/android/server/am/UserController;->unsafeConvertIncomingUserLocked(I)I

    move-result v11

    if-eqz p2, :cond_27

    const/16 v1, 0x3e8

    if-eq p2, v1, :cond_27

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-nez v1, :cond_45

    const/4 v7, 0x1

    :goto_21
    if-nez v7, :cond_27

    const/4 v1, -0x3

    if-ne p3, v1, :cond_87

    move v11, v9

    :cond_27
    if-nez p4, :cond_e8

    if-gez v11, :cond_e8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Call does not support special user #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_4c

    const/4 v7, 0x0

    goto :goto_21

    :cond_4c
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/UserController$Injector;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v7, 0x0

    goto :goto_21

    :cond_5d
    if-nez p5, :cond_61

    const/4 v7, 0x1

    goto :goto_21

    :cond_61
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_6b

    invoke-virtual {p0, v9, v11}, Lcom/android/server/am/UserController;->isSameProfileGroup(II)Z

    move-result v7

    goto :goto_21

    :cond_6b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_87
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Permission Denial: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p7, :cond_a6

    const-string/jumbo v1, " from "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a6
    const-string/jumbo v1, " asks to run as user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " but is calling from user "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; this requires "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    move/from16 v0, p5

    if-eq v0, v1, :cond_d9

    const-string/jumbo v1, " or "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e8
    const/16 v1, 0x7d0

    if-ne p2, v1, :cond_121

    if-ltz v11, :cond_121

    const-string/jumbo v1, "no_debugging_features"

    invoke-virtual {p0, v1, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_121

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Shell does not have permission to access user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_121
    return v11
.end method

.method hasStartedUserState(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isCurrentProfileLocked(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method isLockScreenDisabled(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0
.end method

.method isSameProfileGroup(II)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v7, -0x2710

    if-ne p1, p2, :cond_7

    return v2

    :cond_7
    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    monitor-enter v4

    :try_start_a
    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    const/16 v6, -0x2710

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v5, p0, Lcom/android/server/am/UserController;->mUserProfileGroupIdsSelfLocked:Landroid/util/SparseIntArray;

    const/16 v6, -0x2710

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_24

    move-result v1

    if-eq v0, v7, :cond_22

    if-ne v0, v1, :cond_20

    :goto_1e
    monitor-exit v4

    return v2

    :cond_20
    move v2, v3

    goto :goto_1e

    :cond_22
    move v2, v3

    goto :goto_1e

    :catchall_24
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method isUserRunningLocked(II)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/UserController;->getStartedUserStateLocked(I)Lcom/android/server/am/UserState;

    move-result-object v0

    if-nez v0, :cond_9

    return v2

    :cond_9
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_e

    return v1

    :cond_e
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_19

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v3, :pswitch_data_46

    return v2

    :pswitch_18
    return v1

    :cond_19
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_29

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v3, :pswitch_data_4e

    return v2

    :pswitch_23
    return v1

    :pswitch_24
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    :cond_29
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_39

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    packed-switch v3, :pswitch_data_5a

    return v2

    :pswitch_33
    return v1

    :pswitch_34
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    return v1

    :cond_39
    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_44

    iget v3, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_44

    :goto_43
    return v1

    :cond_44
    move v1, v2

    goto :goto_43

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_23
        :pswitch_23
        :pswitch_24
        :pswitch_24
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x3
        :pswitch_33
        :pswitch_34
        :pswitch_34
    .end packed-switch
.end method

.method synthetic lambda$-com_android_server_am_UserController_17590(Lcom/android/server/am/UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/UserController;->finishUserUnlockedCompleted(Lcom/android/server/am/UserState;)V

    return-void
.end method

.method maybeUnlockUser(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    return v0
.end method

.method moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getActivityStackSupervisor()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->switchUserLocked(ILcom/android/server/am/UserState;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "moveUserToForeground"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/am/UserController$Injector;->startHomeActivityLocked(ILjava/lang/String;)V

    :goto_14
    invoke-static {p3}, Lcom/android/server/am/EventLogTags;->writeAmSwitchUser(I)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/UserController;->sendUserSwitchBroadcastsLocked(II)V

    return-void

    :cond_1b
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getActivityStackSupervisor()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto :goto_14
.end method

.method onSystemReady()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    return-void
.end method

.method registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v1, "Observer name cannot be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: registerUserSwitchObserver() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51
    iget-object v1, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method restartUser(IZ)I
    .registers 5

    new-instance v0, Lcom/android/server/am/UserController$3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/UserController$3;-><init>(Lcom/android/server/am/UserController;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/UserController;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    return v0
.end method

.method sendBootCompletedLocked(Landroid/content/IIntentReceiver;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    iget-object v2, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-direct {p0, v1, p1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;Landroid/content/IIntentReceiver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    .registers 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UserController;->mCurWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendUserSwitchBroadcastsLocked(II)V
    .registers 40

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    if-ltz p1, :cond_5c

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v4, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v32

    const/16 v33, 0x0

    :goto_1b
    move/from16 v0, v33

    move/from16 v1, v32

    if-ge v0, v1, :cond_5c

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    add-int/lit8 v33, v33, 0x1

    goto :goto_1b

    :cond_5c
    if-ltz p2, :cond_f7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v32

    const/16 v33, 0x0

    :goto_73
    move/from16 v0, v33

    move/from16 v1, v32

    if-ge v0, v1, :cond_b4

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_FOREGROUND"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x3e8

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    add-int/lit8 v33, v33, 0x1

    goto :goto_73

    :cond_b4
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x50000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    move/from16 v0, p2

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    move-object/from16 v17, v0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v2, "android.permission.MANAGE_USERS"

    const/4 v4, 0x0

    aput-object v2, v24, v4

    sget v29, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x3e8

    const/16 v31, -0x1

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v31}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_f7
    .catchall {:try_start_6 .. :try_end_f7} :catchall_fb

    :cond_f7
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_fb
    move-exception v2

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setTargetUserIdLocked(I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/UserController;->mTargetUserId:I

    return p1
.end method

.method shouldConfirmCredentials(I)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_18

    move-result-object v3

    if-nez v3, :cond_e

    monitor-exit v2

    return v1

    :cond_e
    monitor-exit v2

    iget-object v2, p0, Lcom/android/server/am/UserController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1b

    return v1

    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1b
    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/UserController$Injector;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0, p1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    :cond_2b
    return v1
.end method

.method showUserSwitchDialog(Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/pm/UserInfo;",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/UserInfo;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/UserController$Injector;->showUserSwitchingDialog(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method startProfilesLocked()V
    .registers 10

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/UserManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v6, v4, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1a

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    iget v7, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-eq v6, v7, :cond_1a

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isQuietModeEnabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1a

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_40
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_45
    if-ge v0, v3, :cond_58

    const/4 v6, 0x2

    if-ge v0, v6, :cond_58

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_58
    if-ge v0, v3, :cond_62

    sget-object v6, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "More profiles than MAX_RUNNING_USERS"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return-void
.end method

.method startUser(IZ)Z
    .registers 37

    move/from16 v29, p1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_53

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: switchUser() from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_53
    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting userid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " fg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    :try_start_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    move-object/from16 v33, v0

    monitor-enter v33
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_2f1

    :try_start_86
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_2ee

    move/from16 v0, p1

    if-ne v7, v0, :cond_94

    :try_start_8e
    monitor-exit v33
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_2f1

    const/4 v4, 0x1

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_94
    if-eqz p2, :cond_a7

    :try_start_96
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getActivityStackSupervisor()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v4

    const-string/jumbo v5, "startUser"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v8, v5, v10}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    :cond_a7
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v30

    if-nez v30, :cond_ce

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No user info for user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catchall {:try_start_96 .. :try_end_c8} :catchall_2ee

    :try_start_c8
    monitor-exit v33
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_2f1

    const/4 v4, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_ce
    if-eqz p2, :cond_fe

    :try_start_d0
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_fe

    sget-object v4, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot switch to User #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": not a full user"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_d0 .. :try_end_f8} :catchall_2ee

    :try_start_f8
    monitor-exit v33
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_2f1

    const/4 v4, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_fe
    if-eqz p2, :cond_117

    :try_start_100
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_117

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    const v5, 0x10a0084

    const v6, 0x10a0083

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->startFreezingScreen(II)V

    :cond_117
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_151

    new-instance v31, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-direct {v0, v4}, Lcom/android/server/am/UserState;-><init>(Landroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v31

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    const/16 v27, 0x1

    :cond_151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/am/UserState;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2f6

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/UserController;->mCurrentUserId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->updateUserConfigurationLocked()V

    const/16 v4, -0x2710

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/UserController;->mTargetUserId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/UserController;->mUserSwitchUiEnabled:Z

    if-eqz v4, :cond_2db

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v5}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    move/from16 v5, p1

    move/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerServiceInjector;->handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[I)V

    :goto_1b8
    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_324

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/UserState;->lastState:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    const/16 v27, 0x1

    :cond_1de
    :goto_1de
    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    if-nez v4, :cond_205

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerService;->onBeforeStartUser(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2a

    const/4 v8, 0x0

    move/from16 v0, p1

    invoke-virtual {v5, v6, v0, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_205
    if-eqz p2, :cond_258

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    move/from16 v0, p1

    invoke-virtual {v5, v6, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x22

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x22

    move/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x24

    move/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v5, v6, v7, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v10, 0xbb8

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_258
    if-eqz v27, :cond_28a

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STARTED"

    invoke-direct {v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x50000000

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v9, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    sget v20, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x3e8

    move/from16 v22, p1

    invoke-virtual/range {v8 .. v22}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    :cond_28a
    if-eqz p2, :cond_349

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/am/UserController;->moveUserToForegroundLocked(Lcom/android/server/am/UserState;II)V

    :goto_295
    if-eqz v27, :cond_2d5

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.USER_STARTING"

    invoke-direct {v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.user_handle"

    move/from16 v0, p1

    invoke-virtual {v9, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    new-instance v11, Lcom/android/server/am/UserController$7;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/am/UserController$7;-><init>(Lcom/android/server/am/UserController;)V

    const/4 v4, 0x1

    new-array v15, v4, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v5, 0x0

    aput-object v4, v15, v5

    sget v20, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x3e8

    const/16 v22, -0x1

    invoke-virtual/range {v8 .. v22}, Lcom/android/server/am/UserController$Injector;->broadcastIntentLocked(Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    :try_end_2d5
    .catchall {:try_start_100 .. :try_end_2d5} :catchall_2ee

    :cond_2d5
    :try_start_2d5
    monitor-exit v33
    :try_end_2d6
    .catchall {:try_start_2d5 .. :try_end_2d6} :catchall_2f1

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v4, 0x1

    return v4

    :cond_2db
    :try_start_2db
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V
    :try_end_2ec
    .catchall {:try_start_2db .. :try_end_2ec} :catchall_2ee

    goto/16 :goto_1b8

    :catchall_2ee
    move-exception v4

    :try_start_2ef
    monitor-exit v33

    throw v4
    :try_end_2f1
    .catchall {:try_start_2ef .. :try_end_2f1} :catchall_2f1

    :catchall_2f1
    move-exception v4

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_2f6
    :try_start_2f6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateCurrentProfileIdsLocked()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/UserController;->mCurrentProfileIds:[I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setCurrentProfileIds([I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b8

    :cond_324
    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1de

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/server/am/UserState;->setState(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v4}, Lcom/android/server/am/UserController$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v4

    move-object/from16 v0, v32

    iget v5, v0, Lcom/android/server/am/UserState;->state:I

    move/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->setUserState(II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->updateStartedUserArrayLocked()V

    const/16 v27, 0x1

    goto/16 :goto_1de

    :cond_349
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/server/am/UserController;->finishUserBoot(Lcom/android/server/am/UserState;)V
    :try_end_350
    .catchall {:try_start_2f6 .. :try_end_350} :catchall_2ee

    goto/16 :goto_295
.end method

.method startUserInForeground(I)V
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/UserController;->startUser(IZ)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/UserController$Injector;->getWindowManager()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSwitchingUser(Z)V

    :cond_11
    return-void
.end method

.method stopRunningUsersLocked(I)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-le v1, p1, :cond_6e

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6e

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    if-nez v3, :cond_31

    iget-object v4, p0, Lcom/android/server/am/UserController;->mUserLru:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_31
    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3b

    iget v4, v3, Lcom/android/server/am/UserState;->state:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_40

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4e

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/android/server/am/UserController;->mCurrentUserId:I

    if-ne v4, v5, :cond_5d

    :cond_4e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/content/pm/UserInfo;->isSystemOnly(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    add-int/lit8 v1, v1, -0x1

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_5d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I

    move-result v4

    if-eqz v4, :cond_69

    add-int/lit8 v1, v1, -0x1

    :cond_69
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_6e
    return-void
.end method

.method stopUser(IZLandroid/app/IStopUserCallback;)I
    .registers 8

    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: switchUser() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4b
    if-ltz p1, :cond_4f

    if-nez p1, :cond_69

    :cond_4f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t stop system user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_69
    iget-object v1, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v2, "no_debugging_features"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/UserController$Injector;->enforceShellRestriction(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->stopUsersLocked(IZLandroid/app/IStopUserCallback;)I
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7a

    move-result v2

    monitor-exit v1

    return v2

    :catchall_7a
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method timeoutUserSwitch(Lcom/android/server/am/UserState;II)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User switch timeout: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLocked(Lcom/android/server/am/UserState;II)V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    .registers 10

    iget-object v3, p0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController$Injector;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: unlockUser() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4f
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/UserController;->unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_57

    move-result v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_57
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method unlockUserCleared(I[B[BLandroid/os/IProgressListener;)Z
    .registers 21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_5
    invoke-static/range {p1 .. p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v12

    if-nez v12, :cond_1e

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/UserController;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/UserController;->getStorageManager()Landroid/os/storage/IStorageManager;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_d7

    move-result-object v8

    :try_start_13
    iget v12, v10, Landroid/content/pm/UserInfo;->serialNumber:I

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v8, v0, v12, v1, v2}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_36
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_1e} :catch_36
    .catchall {:try_start_13 .. :try_end_1e} :catchall_d7

    :cond_1e
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/UserState;

    if-nez v11, :cond_57

    move/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->notifyFinished(ILandroid/os/IProgressListener;)V
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_d7

    const/4 v12, 0x0

    monitor-exit v13

    return v12

    :catch_36
    move-exception v4

    :try_start_37
    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to unlock: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_d7

    const/4 v12, 0x0

    monitor-exit v13

    return v12

    :cond_57
    :try_start_57
    iget-object v12, v11, Lcom/android/server/am/UserState;->mUnlockProgress:Lcom/android/internal/util/ProgressReporter;

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/android/internal/util/ProgressReporter;->addListener(Landroid/os/IProgressListener;)V

    if-eqz p2, :cond_d5

    const/4 v12, 0x1

    :goto_61
    iput-boolean v12, v11, Lcom/android/server/am/UserState;->tokenProvided:Z
    :try_end_63
    .catchall {:try_start_57 .. :try_end_63} :catchall_d7

    monitor-exit v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/am/UserController;->finishUserUnlocking(Lcom/android/server/am/UserState;)V

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/UserController;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v5, 0x0

    :goto_74
    :try_start_74
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v5, v12, :cond_da

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mStartedUsers:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/UserController;->mInjector:Lcom/android/server/am/UserController$Injector;

    invoke-virtual {v12}, Lcom/android/server/am/UserController$Injector;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_d2

    iget v12, v6, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_d2

    move/from16 v0, p1

    if-eq v9, v0, :cond_d2

    sget-object v12, Lcom/android/server/am/UserController;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "User "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " (parent "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "): attempting unlock because parent was just unlocked"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_d2
    .catchall {:try_start_74 .. :try_end_d2} :catchall_f4

    :cond_d2
    add-int/lit8 v5, v5, 0x1

    goto :goto_74

    :cond_d5
    const/4 v12, 0x0

    goto :goto_61

    :catchall_d7
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_da
    monitor-exit v13

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_e0
    if-ge v5, v7, :cond_f7

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/am/UserController;->maybeUnlockUser(I)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_e0

    :catchall_f4
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_f7
    const/4 v12, 0x1

    return v12
.end method

.method unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/UserController;->mUserSwitchObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method unsafeConvertIncomingUserLocked(I)I
    .registers 3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_6

    const/4 v0, -0x3

    if-ne p1, v0, :cond_a

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result p1

    :cond_a
    return p1
.end method
