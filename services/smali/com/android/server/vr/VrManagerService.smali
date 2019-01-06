.class public Lcom/android/server/vr/VrManagerService;
.super Lcom/android/server/SystemService;
.source "VrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/EnabledComponentsObserver$EnabledComponentChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/VrManagerService$1;,
        Lcom/android/server/vr/VrManagerService$2;,
        Lcom/android/server/vr/VrManagerService$3;,
        Lcom/android/server/vr/VrManagerService$4;,
        Lcom/android/server/vr/VrManagerService$LocalService;,
        Lcom/android/server/vr/VrManagerService$NotificationAccessManager;,
        Lcom/android/server/vr/VrManagerService$SettingEvent;,
        Lcom/android/server/vr/VrManagerService$VrState;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final EVENT_LOG_SIZE:I = 0x40

.field private static final FLAG_ALL:I = 0x7

.field private static final FLAG_AWAKE:I = 0x1

.field private static final FLAG_KEYGUARD_UNLOCKED:I = 0x4

.field private static final FLAG_NONE:I = 0x0

.field private static final FLAG_SCREEN_ON:I = 0x2

.field private static final INVALID_APPOPS_MODE:I = -0x1

.field private static final MSG_PENDING_VR_STATE_CHANGE:I = 0x1

.field private static final MSG_PERSISTENT_VR_MODE_STATE_CHANGE:I = 0x2

.field private static final MSG_VR_STATE_CHANGE:I = 0x0

.field private static final PENDING_STATE_DELAY_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "VrManagerService"

.field private static final sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;


# instance fields
.field private mBootsToVr:Z

.field private mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

.field private mCurrentVrModeComponent:Landroid/content/ComponentName;

.field private mCurrentVrModeUser:I

.field private mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

.field private mDefaultVrService:Landroid/content/ComponentName;

.field private final mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

.field private mGuard:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mLogLimitHit:Z

.field private final mLoggingDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/server/utils/ManagedApplicationService$LogFormattable;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private final mOverlayToken:Landroid/os/IBinder;

.field private mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

.field private mPersistentVrModeEnabled:Z

.field private final mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/service/vr/IPersistentVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousCoarseLocationMode:I

.field private mPreviousManageOverlayMode:I

.field private mRunning2dInVr:Z

.field private mSystemSleepFlags:I

.field private mUserUnlocked:Z

.field private mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

.field private mVrAppProcessId:I

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private mVrModeAllowed:Z

.field private mVrModeEnabled:Z

.field private final mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/service/vr/IVrStateCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mWasDefaultGranted:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/vr/VrManagerService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/vr/VrManagerService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getPersistentVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/vr/VrManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVrMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->grantNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->grantNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/vr/VrManagerService;Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->revokeNotificationListenerAccess(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->revokeNotificationPolicyAccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setAndBindCompositor(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setKeyguardShowing(Z)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setScreenOn(Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/vr/VrManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setSleepState(Z)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->setUserUnlocked()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/vr/VrManagerService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->getVr2dDisplayId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/vr/VrManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->dumpStateTransitions(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/vr/VrManagerService$3;

    invoke-direct {v0}, Lcom/android/server/vr/VrManagerService$3;-><init>()V

    sput-object v0, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousCoarseLocationMode:I

    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mPreviousManageOverlayMode:I

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$NotificationAccessManager;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    new-instance v0, Lcom/android/server/vr/VrManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$1;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    new-instance v0, Lcom/android/server/vr/VrManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$2;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/vr/VrManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/vr/VrManagerService$4;-><init>(Lcom/android/server/vr/VrManagerService;)V

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    return-void
.end method

.method private addPersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method private addStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method private changeVrModeLocked(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_2f

    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    const-string/jumbo v1, "VrManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VR mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_30

    const-string/jumbo v0, "enabled"

    :goto_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->setVrModeNative(Z)V

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->onVrModeChangedLocked()V

    :cond_2f
    return-void

    :cond_30
    const-string/jumbo v0, "disabled"

    goto :goto_1c
.end method

.method private consumeAndApplyPendingStateLocked()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    return-void
.end method

.method private consumeAndApplyPendingStateLocked(Z)V
    .registers 10

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v1, v0, Lcom/android/server/vr/VrManagerService$VrState;->enabled:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v2, v0, Lcom/android/server/vr/VrManagerService$VrState;->running2dInVr:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v3, v0, Lcom/android/server/vr/VrManagerService$VrState;->targetPackageName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v4, v0, Lcom/android/server/vr/VrManagerService$VrState;->userId:I

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget v5, v0, Lcom/android/server/vr/VrManagerService$VrState;->processId:I

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    iget-object v6, v0, Lcom/android/server/vr/VrManagerService$VrState;->callingPackage:Landroid/content/ComponentName;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    iput-object v7, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    :cond_24
    :goto_24
    return-void

    :cond_25
    if-eqz p1, :cond_24

    const/4 v5, -0x1

    move-object v0, p0

    move v2, v1

    move-object v3, v7

    move v4, v1

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    goto :goto_24
.end method

.method private createAndConnectService(Landroid/content/ComponentName;I)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    const-string/jumbo v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .registers 13

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_16

    const/4 v7, 0x1

    :goto_6
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    move-object v5, v4

    invoke-static/range {v0 .. v9}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v7, 0x3

    goto :goto_6
.end method

.method private createVrListenerService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;
    .registers 13

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_1b

    const/4 v7, 0x1

    :goto_5
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.settings.VR_LISTENER_SETTINGS"

    sget-object v5, Lcom/android/server/vr/VrManagerService;->sBinderChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/vr/VrManagerService;->mEventCallback:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    const v3, 0x1040695

    const/4 v6, 0x1

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v9}, Lcom/android/server/utils/ManagedApplicationService;->build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    return-object v0

    :cond_1b
    const/4 v7, 0x2

    goto :goto_5
.end method

.method private dumpStateTransitions(Ljava/io/PrintWriter;)V
    .registers 7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v4

    :try_start_b
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    if-nez v3, :cond_1f

    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "None"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    iget-boolean v3, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    if-eqz v3, :cond_29

    const-string/jumbo v3, "..."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_29
    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;

    invoke-interface {v1, v0}, Lcom/android/server/utils/ManagedApplicationService$LogFormattable;->toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_43

    goto :goto_2f

    :catchall_43
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_46
    monitor-exit v4

    return-void
.end method

.method private varargs enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_12

    aget-object v0, p1, v1

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_f

    return-void

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caller does not hold at least one of the permissions: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static formatSettings(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_8
    const-string/jumbo v4, ""

    return-object v4

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    if-nez v3, :cond_32

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_16

    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getNotificationListeners(Landroid/content/ContentResolver;I)Landroid/util/ArraySet;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v4, "enabled_notification_listeners"

    invoke-static {p1, v4, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    if-eqz v2, :cond_27

    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    array-length v5, v0

    :goto_17
    if-ge v4, v5, :cond_27

    aget-object v3, v0, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_24

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_27
    return-object v1
.end method

.method private getPersistentVrMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getStateAsString()Ljava/lang/String;
    .registers 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_31

    const-string/jumbo v0, "awake, "

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_35

    const-string/jumbo v0, "screen_on, "

    :goto_1b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_39

    const-string/jumbo v0, "keyguard_off"

    :goto_28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    const-string/jumbo v0, ""

    goto :goto_e

    :cond_35
    const-string/jumbo v0, ""

    goto :goto_1b

    :cond_39
    const-string/jumbo v0, ""

    goto :goto_28
.end method

.method private getVr2dDisplayId()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {v0}, Lcom/android/server/vr/Vr2dDisplay;->getVirtualDisplayId()I

    move-result v0

    return v0

    :cond_b
    const-string/jumbo v0, "VrManagerService"

    const-string/jumbo v1, "Vr2dDisplay is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method private getVrMode()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private grantCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .registers 7

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a

    :try_start_9
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "VrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not grant coarse location permission, package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private grantNotificationListenerAccess(Ljava/lang/String;I)V
    .registers 10

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v5, "android.service.notification.NotificationListenerService"

    const-string/jumbo v6, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-static {v3, p2, v5, v6}, Lcom/android/server/vr/EnabledComponentsObserver;->loadComponentNames(Landroid/content/pm/PackageManager;ILjava/lang/String;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    invoke-virtual {v2, v0, p2, v5}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto :goto_1e

    :cond_39
    return-void
.end method

.method private grantNotificationPolicyAccess(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    return-void
.end method

.method private hasVrPackage(Landroid/content/ComponentName;I)I
    .registers 5

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I
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

.method private static native initializeNative()V
.end method

.method private isCurrentVrListener(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_25

    if-nez v2, :cond_a

    monitor-exit v1

    return v0

    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_25

    move-result v2

    if-ne p2, v2, :cond_23

    const/4 v0, 0x1

    :cond_23
    monitor-exit v1

    return v0

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDefaultAllowed(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    const/16 v3, 0x80

    :try_start_a
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_d} :catch_20

    move-result-object v1

    :goto_e
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_22

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    :goto_1a
    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_24

    :cond_1e
    const/4 v3, 0x0

    return v3

    :catch_20
    move-exception v0

    goto :goto_e

    :cond_22
    move v3, v4

    goto :goto_1a

    :cond_24
    return v4
.end method

.method private isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, p1, p2, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method private logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mLogLimitHit:Z

    :cond_15
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mLoggingDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private logStateLocked()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_1a

    const/4 v3, 0x0

    :goto_5
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    iget-boolean v7, p0, Lcom/android/server/vr/VrManagerService;->mWasDefaultGranted:Z

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_5
.end method

.method private onVrModeChangedLocked()V
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v3, v1, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_12
    move v0, v1

    goto :goto_a
.end method

.method private removePersistentStateCallback(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private removeStateCallback(Landroid/service/vr/IVrStateCallbacks;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVrStateRemoteCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private revokeCoarseLocationPermissionIfNeeded(Ljava/lang/String;I)V
    .registers 7

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/vr/VrManagerService;->isPermissionUserUpdated(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a

    :try_start_9
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "VrManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not revoke coarse location permission, package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " was removed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private revokeNotificationListenerAccess(Ljava/lang/String;I)V
    .registers 9

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/NotificationManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-virtual {v3, p2}, Landroid/app/NotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p2, v4}, Landroid/app/NotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto :goto_12

    :cond_2f
    return-void
.end method

.method private revokeNotificationPolicyAccess(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    return-void
.end method

.method private setAndBindCompositor(Landroid/content/ComponentName;)V
    .registers 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_b
    invoke-direct {p0, v2, p1}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_13

    monitor-exit v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method private setKeyguardShowing(Z)V
    .registers 4

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void
.end method

.method private setPersistentModeAndNotifyListenersLocked(Z)V
    .registers 8

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-ne v1, p1, :cond_6

    return-void

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Persistent VR mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_41

    const-string/jumbo v1, "enabled"

    :goto_17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VrManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/vr/VrManagerService$SettingEvent;

    invoke-direct {v1, v0}, Lcom/android/server/vr/VrManagerService$SettingEvent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    iput-boolean p1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    :goto_38
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_41
    const-string/jumbo v1, "disabled"

    goto :goto_17

    :cond_45
    move v1, v2

    goto :goto_38
.end method

.method private setPersistentVrModeEnabled(Z)V
    .registers 9

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    if-nez p1, :cond_11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit v6

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private setScreenOn(Z)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void
.end method

.method private setSleepState(Z)V
    .registers 4

    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/vr/VrManagerService;->setSystemState(IZ)V

    return-void
.end method

.method private setSystemState(IZ)V
    .registers 7

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eqz p2, :cond_15

    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    :goto_c
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    if-eq v0, v1, :cond_13

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1c

    :cond_13
    monitor-exit v2

    return-void

    :cond_15
    :try_start_15
    iget v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    not-int v3, p1

    and-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1c

    goto :goto_c

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setUserUnlocked()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerService;->updateVrModeAllowedLocked()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .registers 18

    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    if-nez p1, :cond_21

    :try_start_5
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    :goto_7
    if-nez p1, :cond_23

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    :goto_b
    if-eqz v2, :cond_25

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    :goto_f
    new-instance v0, Lcom/android/server/vr/VrManagerService$VrState;

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-nez v4, :cond_27

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_54

    monitor-exit v11

    return-void

    :cond_21
    const/4 v1, 0x1

    goto :goto_7

    :cond_23
    const/4 v2, 0x0

    goto :goto_b

    :cond_25
    move-object v3, p2

    goto :goto_f

    :cond_27
    if-nez v1, :cond_3d

    :try_start_29
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    if-nez v4, :cond_39

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_39
    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_54

    monitor-exit v11

    return-void

    :cond_3d
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    move-object v4, p0

    move v5, v1

    move v6, v2

    move-object v7, v3

    move v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_54

    monitor-exit v11

    return-void

    :catchall_54
    move-exception v4

    monitor-exit v11

    throw v4
.end method

.method private static native setVrModeNative(Z)V
.end method

.method private updateCompositorServiceLocked(ILandroid/content/ComponentName;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disconnecting compositor service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v2}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    :cond_2f
    if-eqz p2, :cond_5a

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    if-nez v0, :cond_5a

    const-string/jumbo v0, "VrManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connecting compositor service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p1}, Lcom/android/server/vr/VrManagerService;->createVrCompositorService(Landroid/content/ComponentName;I)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrCompositorService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    :cond_5a
    return-void
.end method

.method private updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    .registers 27

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/vr/EnabledComponentsObserver;->isValid(Landroid/content/ComponentName;I)I

    move-result v17

    if-nez v17, :cond_2d

    const/16 v16, 0x1

    :goto_19
    if-eqz v16, :cond_30

    move/from16 v6, p1

    :goto_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    move/from16 v17, v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_1e4

    if-nez v17, :cond_32

    xor-int/lit8 v17, v6, 0x1

    if-eqz v17, :cond_32

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :cond_2d
    const/16 v16, 0x0

    goto :goto_19

    :cond_30
    const/4 v6, 0x0

    goto :goto_1d

    :cond_32
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_151

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    :goto_48
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/vr/VrManagerService;->changeVrModeLocked(Z)V

    const/4 v11, 0x0

    if-nez v6, :cond_157

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_154

    const-string/jumbo v17, "VrManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Leaving VR mode, disconnecting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    const/16 v17, -0x2710

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    :goto_b3
    if-nez p6, :cond_bd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService;->mPersistentVrModeEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_cf

    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_db

    :cond_cf
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p2

    if-eq v0, v1, :cond_dc

    :cond_db
    const/4 v15, 0x1

    :cond_dc
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_101

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    const/4 v15, 0x1

    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    :goto_117
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeUser:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7, v13, v12}, Lcom/android/server/vr/VrManagerService;->updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_148

    if-eqz v15, :cond_148

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move/from16 v4, p2

    move/from16 v14, p5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/server/vr/VrManagerService$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p5

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/vr/VrManagerService$6;-><init>(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;ZI)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/utils/ManagedApplicationService;->sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V

    :cond_148
    if-nez v11, :cond_14d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/vr/VrManagerService;->logStateLocked()V
    :try_end_14d
    .catchall {:try_start_32 .. :try_end_14d} :catchall_1e4

    :cond_14d
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :cond_151
    const/4 v13, 0x0

    goto/16 :goto_48

    :cond_154
    const/4 v11, 0x1

    goto/16 :goto_b3

    :cond_157
    :try_start_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/ManagedApplicationService;->disconnectIfNotMatching(Landroid/content/ComponentName;I)Z

    move-result v17

    if-eqz v17, :cond_1d2

    const-string/jumbo v17, "VrManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "VR mode component changed to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", disconnecting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " for user "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, -0x2710

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/vr/VrManagerService;->updateCompositorServiceLocked(ILandroid/content/ComponentName;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V

    const/4 v15, 0x1

    goto/16 :goto_b3

    :cond_1d2
    const/4 v11, 0x1

    goto/16 :goto_b3

    :cond_1d5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/vr/VrManagerService;->createAndConnectService(Landroid/content/ComponentName;I)V
    :try_end_1de
    .catchall {:try_start_157 .. :try_end_1de} :catchall_1e4

    const/4 v15, 0x1

    goto/16 :goto_b3

    :cond_1e1
    const/4 v10, 0x0

    goto/16 :goto_117

    :catchall_1e4
    move-exception v17

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17
.end method

.method private updateDependentAppOpsLocked(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 8

    invoke-static {p1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_b
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/vr/VrManagerService;->updateOverlayStateLocked(Ljava/lang/String;II)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_12

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private updateOverlayStateLocked(Ljava/lang/String;II)V
    .registers 10

    const/4 v4, 0x0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-eq p3, p2, :cond_18

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    :cond_18
    if-nez p1, :cond_25

    new-array v4, v2, [Ljava/lang/String;

    :goto_1c
    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-object v3, p0, Lcom/android/server/vr/VrManagerService;->mOverlayToken:Landroid/os/IBinder;

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;[Ljava/lang/String;I)V

    return-void

    :cond_25
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v2

    goto :goto_1c
.end method

.method private updateVrModeAllowedLocked()V
    .registers 15

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/vr/VrManagerService;->mSystemSleepFlags:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2d

    iget-boolean v13, p0, Lcom/android/server/vr/VrManagerService;->mUserUnlocked:Z

    :goto_b
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eq v0, v13, :cond_2c

    iput-boolean v13, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_1c

    invoke-direct {p0, v1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    iget-object v2, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    const/4 v13, 0x0

    goto :goto_b

    :cond_2f
    invoke-direct {p0, v3}, Lcom/android/server/vr/VrManagerService;->setPersistentModeAndNotifyListenersLocked(Z)V

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    if-eqz v0, :cond_60

    new-instance v6, Lcom/android/server/vr/VrManagerService$VrState;

    iget-boolean v7, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v8, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v10

    iget v11, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v12, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    invoke-direct/range {v6 .. v12}, Lcom/android/server/vr/VrManagerService$VrState;-><init>(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    :goto_53
    iput-object v6, p0, Lcom/android/server/vr/VrManagerService;->mPendingState:Lcom/android/server/vr/VrManagerService$VrState;

    move-object v6, p0

    move v7, v3

    move v8, v3

    move-object v9, v5

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z

    goto :goto_2c

    :cond_60
    move-object v6, v5

    goto :goto_53
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 15

    const/4 v12, 0x0

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_9d

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    iget-object v11, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "enabled_vr_listeners"

    const-string/jumbo v4, "android.permission.BIND_VR_LISTENER_SERVICE"

    const-string/jumbo v5, "android.service.vr.VrListenerService"

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    invoke-static/range {v0 .. v7}, Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V
    :try_end_3e
    .catchall {:try_start_15 .. :try_end_3e} :catchall_9e

    monitor-exit v11

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDefaultVrComponents()Landroid/util/ArraySet;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_a1

    invoke-virtual {v8, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mDefaultVrService:Landroid/content/ComponentName;

    :goto_55
    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/display/DisplayManager;

    new-instance v4, Lcom/android/server/vr/Vr2dDisplay;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    const-class v2, Landroid/view/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerInternal;

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-direct {v4, v9, v0, v2, v5}, Lcom/android/server/vr/Vr2dDisplay;-><init>(Landroid/hardware/display/DisplayManager;Landroid/app/ActivityManagerInternal;Landroid/view/WindowManagerInternal;Landroid/service/vr/IVrManager;)V

    iput-object v4, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    invoke-virtual {v0, v2, v4}, Lcom/android/server/vr/Vr2dDisplay;->init(Landroid/content/Context;Z)V

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/android/server/vr/VrManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/vr/VrManagerService$5;-><init>(Lcom/android/server/vr/VrManagerService;)V

    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_9d
    return-void

    :catchall_9e
    move-exception v0

    monitor-exit v11

    throw v0

    :cond_a1
    const-string/jumbo v0, "VrManagerService"

    const-string/jumbo v2, "No default vr listener service found."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method public onCleanupUser(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onEnabledComponentChanged()V
    .registers 15

    iget-object v13, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v8

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_16
    :goto_16
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/server/vr/VrManagerService;->isDefaultAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_34

    goto :goto_16

    :catchall_34
    move-exception v0

    monitor-exit v13

    throw v0

    :cond_37
    :try_start_37
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mNotifAccessManager:Lcom/android/server/vr/VrManagerService$NotificationAccessManager;

    invoke-virtual {v0, v9}, Lcom/android/server/vr/VrManagerService$NotificationAccessManager;->update(Ljava/util/Collection;)V

    iget-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mVrModeAllowed:Z
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_34

    if-nez v0, :cond_42

    monitor-exit v13

    return-void

    :cond_42
    const/4 v0, 0x0

    :try_start_43
    invoke-direct {p0, v0}, Lcom/android/server/vr/VrManagerService;->consumeAndApplyPendingStateLocked(Z)V

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_34

    if-nez v0, :cond_4c

    monitor-exit v13

    return-void

    :cond_4c
    :try_start_4c
    iget-boolean v1, p0, Lcom/android/server/vr/VrManagerService;->mVrModeEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/vr/VrManagerService;->mRunning2dInVr:Z

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    invoke-virtual {v0}, Lcom/android/server/utils/ManagedApplicationService;->getUserId()I

    move-result v4

    iget v5, p0, Lcom/android/server/vr/VrManagerService;->mVrAppProcessId:I

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService;->mCurrentVrModeComponent:Landroid/content/ComponentName;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vr/VrManagerService;->updateCurrentVrServiceLocked(ZZLandroid/content/ComponentName;IILandroid/content/ComponentName;)Z
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_34

    monitor-exit v13

    return-void
.end method

.method public onStart()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/vr/VrManagerService;->initializeNative()V

    invoke-virtual {p0}, Lcom/android/server/vr/VrManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vr/VrManagerService;->mContext:Landroid/content/Context;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2f

    monitor-exit v1

    const-string/jumbo v0, "ro.boot.vr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    new-instance v1, Lcom/android/server/vr/VrManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$LocalService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "vrmanager"

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v1}, Landroid/service/vr/IVrManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vr/VrManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStartUser(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStopUser(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onSwitchUser(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mComponentObserver:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onUsersChanged()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService;->mVr2dDisplay:Lcom/android/server/vr/Vr2dDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/Vr2dDisplay;->setVirtualDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    return-void

    :cond_a
    const-string/jumbo v0, "VrManagerService"

    const-string/jumbo v1, "Vr2dDisplay is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
