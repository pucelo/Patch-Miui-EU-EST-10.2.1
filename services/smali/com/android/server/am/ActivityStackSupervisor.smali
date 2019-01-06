.class public Lcom/android/server/am/ActivityStackSupervisor;
.super Lcom/android/server/am/ConfigurationContainer;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;,
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;,
        Lcom/android/server/am/ActivityStackSupervisor$AnyTaskForIdMatchTaskMode;,
        Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;,
        Lcom/android/server/am/ActivityStackSupervisor$PendingActivityLaunch;,
        Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;,
        Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final CREATE_IF_NEEDED:Z = true

.field static final DEFER_RESUME:Z = true

.field static final FORCE_FOCUS:Z = true

.field static final HANDLE_DISPLAY_ADDED:I = 0x69

.field static final HANDLE_DISPLAY_CHANGED:I = 0x6a

.field static final HANDLE_DISPLAY_REMOVED:I = 0x6b

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0x70

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final LOCK_TASK_END_MSG:I = 0x6e

.field static final LOCK_TASK_START_MSG:I = 0x6d

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field static final MATCH_TASK_IN_STACKS_ONLY:I = 0x0

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS:I = 0x1

.field static final MATCH_TASK_IN_STACKS_OR_RECENT_TASKS_AND_RESTORE:I = 0x2

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final MOVING:Z = true

.field static final ON_TOP:Z = true

.field static final PAUSE_IMMEDIATELY:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field static final REMOVE_FROM_RECENTS:Z = true

.field static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0x72

.field static final REPORT_PIP_MODE_CHANGED_MSG:I = 0x73

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SHOW_LOCK_TASK_ESCAPE_MESSAGE_MSG:I = 0x71

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_FOCUS:Ljava/lang/String;

.field private static final TAG_IDLE:Ljava/lang/String;

.field private static final TAG_LOCKTASK:Ljava/lang/String;

.field private static final TAG_PAUSE:Ljava/lang/String;

.field private static final TAG_RECENTS:Ljava/lang/String;

.field private static final TAG_RELEASE:Ljava/lang/String;

.field private static final TAG_STACK:Ljava/lang/String;

.field private static final TAG_STATES:Ljava/lang/String;

.field private static final TAG_SWITCH:Ljava/lang/String;

.field static final TAG_TASKS:Ljava/lang/String;

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field private static final VIRTUAL_DISPLAY_BASE_NAME:Ljava/lang/String; = "ActivityViewVirtualDisplay"

.field public static mPerfSendTapHint:Z


# instance fields
.field inResumeTopActivity:Z

.field final mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;",
            ">;"
        }
    .end annotation
.end field

.field final mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

.field private mAllowDockedStackResize:Z

.field mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field mCurrentUser:I

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field mDefaultMinSizeOfResizeableTask:I

.field private mDeferResumeCount:I

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private final mDisplayAccessUIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/IntArray;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedStack:Lcom/android/server/am/ActivityStack;

.field mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field mHasResumeRecentsBehind:Z

.field mHomeStack:Lcom/android/server/am/ActivityStack;

.field private mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mIsDockMinimized:Z

.field final mKeyguardController:Lcom/android/server/am/KeyguardController;

.field private mLastFocusedStack:Lcom/android/server/am/ActivityStack;

.field mLaunchRecentsFromGesture:Z

.field mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field private mLockTaskModeState:I

.field mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

.field private mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

.field final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedScheduleIdle:Z

.field private mNextFreeStackId:I

.field public mPerfBoost:Landroid/util/BoostFramework;

.field public mPerfPack:Landroid/util/BoostFramework;

.field final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRecentTasks:Lcom/android/server/am/RecentTasks;

.field private final mResizingTasksDuringAnimation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mSleepTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManagerInternal$SleepToken;",
            ">;"
        }
    .end annotation
.end field

.field mStacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mStopLaunchRecentsBehind:Z

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskLayersChanged:Z

.field private final mTmpActivityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

.field private mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

.field private mToken:Landroid/os/IBinder;

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/ActivityStackSupervisor;)I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/ActivityStackSupervisor;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAdded(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChanged(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemoved(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_FOCUS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_IDLE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_LOCKTASK:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PAUSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_PAUSE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_RECENTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_RELEASE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STACK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_STACK:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_STATES:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_SWITCH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_TASKS:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.intent.action.CALL"

    const-string/jumbo v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-direct {v0}, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStopLaunchRecentsBehind:Z

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    new-instance v0, Lcom/android/server/am/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    new-instance v0, Lcom/android/server/am/KeyguardController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/am/KeyguardController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    return-void
.end method

.method private beginDeferResume()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    return-void
.end method

.method private calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    .registers 4

    const-string/jumbo v0, "persist.sys.miui_optimization"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    return-void
.end method

.method private checkActivityBelongsInStack(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isRecentsStack()Z

    move-result v0

    return v0

    :cond_16
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isAssistantActivity()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isAssistantStack()Z

    move-result v0

    return v0

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method private checkFinishBootingLocked()Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    const/4 v1, 0x1

    :cond_16
    if-nez v0, :cond_1a

    if-eqz v1, :cond_1f

    :cond_1a
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->postFinishBooting(ZZ)V

    :cond_1f
    return v0
.end method

.method private displayConfigMatchesGlobal(I)Z
    .registers 6

    const/4 v2, 0x0

    if-nez p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    const/4 v1, -0x1

    if-ne p1, v1, :cond_9

    return v2

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    return v1
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    :goto_a
    if-ltz v6, :cond_1a6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityRecord;

    if-eqz p8, :cond_25

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_25

    :cond_22
    :goto_22
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    :cond_25
    if-nez v7, :cond_40

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "      "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/String;

    :cond_40
    const/4 v9, 0x1

    if-nez p6, :cond_113

    if-nez p5, :cond_110

    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v12

    xor-int/lit8 v5, v12, 0x1

    :goto_4b
    if-eqz p9, :cond_57

    const-string/jumbo v12, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p9, 0x0

    :cond_57
    if-eqz p10, :cond_62

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p10, 0x0

    :cond_62
    if-eqz p11, :cond_6d

    move-object/from16 v0, p1

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p11, 0x0

    :cond_6d
    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v12

    if-eq v8, v12, :cond_aa

    invoke-virtual {v10}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_116

    const-string/jumbo v12, "* "

    :goto_83
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v5, :cond_11b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v12}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_aa
    :goto_aa
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_13d

    const-string/jumbo v12, "  * "

    :goto_b6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, " #"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v12, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v5, :cond_142

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v7}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_e3
    :goto_e3
    if-eqz p7, :cond_22

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_22

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    :try_start_f2
    new-instance v11, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v11}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f7} :catch_16b
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_f7} :catch_18a

    :try_start_f7
    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v11}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v13

    iget-object v14, v10, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v12, v13, v14, v7, v2}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    const-wide/16 v12, 0x7d0

    invoke-virtual {v11, p0, v12, v13}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_109
    .catchall {:try_start_f7 .. :try_end_109} :catchall_166

    :try_start_109
    invoke-virtual {v11}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_10c} :catch_16b
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_10c} :catch_18a

    :goto_10c
    const/16 p9, 0x1

    goto/16 :goto_22

    :cond_110
    const/4 v5, 0x1

    goto/16 :goto_4b

    :cond_113
    const/4 v5, 0x0

    goto/16 :goto_4b

    :cond_116
    const-string/jumbo v12, "  "

    goto/16 :goto_83

    :cond_11b
    if-eqz p5, :cond_aa

    iget-object v12, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v12, :cond_aa

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v12, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_aa

    :cond_13d
    const-string/jumbo v12, "    "

    goto/16 :goto_b6

    :cond_142
    if-eqz p5, :cond_e3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_e3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_e3

    :catchall_166
    move-exception v12

    :try_start_167
    invoke-virtual {v11}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v12
    :try_end_16b
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16b} :catch_16b
    .catch Landroid/os/RemoteException; {:try_start_167 .. :try_end_16b} :catch_18a

    :catch_16b
    move-exception v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "Failure while dumping the activity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10c

    :catch_18a
    move-exception v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "Got a RemoteException while dumping the activity"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_10c

    :cond_1a6
    return v9
.end method

.method private endDeferResume()V
    .registers 2

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    return-void
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)I
    .registers 14

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez p1, :cond_5

    return v7

    :cond_5
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_10

    return v7

    :cond_10
    :try_start_10
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1d} :catch_27

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    return v7

    :catch_27
    move-exception v0

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot find package info for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_42
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v6, :cond_4c

    const/4 v4, 0x1

    return v4

    :cond_4c
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_53

    return v7

    :cond_53
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-static {v1, p4, p2, v4, p5}, Lcom/android/server/am/ActivityStackSupervisorInjector;->noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)I

    move-result v4

    if-eqz v4, :cond_5d

    const/4 v4, 0x2

    return v4

    :cond_5d
    return v7
.end method

.method private getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .registers 8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v2, :cond_11

    return-object v5

    :cond_11
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_1a

    return-object v5

    :cond_1a
    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_44

    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " gone before initialization complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_44
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayAdded(I)V

    return-object v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .registers 15

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-nez p5, :cond_18

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-ne v0, v8, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v0, :cond_1d

    return v7

    :cond_1d
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_26

    return v7

    :cond_26
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v6, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    if-nez p5, :cond_34

    const/4 v0, 0x2

    return v0

    :cond_34
    return v7
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_23

    const-string/jumbo v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_23

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_2a

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_2a
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;
    .registers 16

    iget v1, p1, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v12, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    new-instance v3, Landroid/app/ActivityManager$StackInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$StackInfo;-><init>()V

    iget-object v12, v3, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v12}, Lcom/android/server/am/ActivityStack;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    iput v1, v3, Landroid/app/ActivityManager$StackInfo;->displayId:I

    iget v12, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v12, v3, Landroid/app/ActivityManager$StackInfo;->stackId:I

    iget v12, p1, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iput v12, v3, Landroid/app/ActivityManager$StackInfo;->userId:I

    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6f

    const/4 v12, 0x1

    :goto_27
    iput-boolean v12, v3, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v0, :cond_71

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v12, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    :goto_31
    iput v12, v3, Landroid/app/ActivityManager$StackInfo;->position:I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v7, v4, [I

    new-array v8, v4, [Ljava/lang/String;

    new-array v6, v4, [Landroid/graphics/Rect;

    new-array v9, v4, [I

    const/4 v2, 0x0

    :goto_44
    if-ge v2, v4, :cond_8f

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget v12, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    aput v12, v7, v2

    iget-object v12, v5, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_73

    iget-object v12, v5, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    :goto_5a
    aput-object v12, v8, v2

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    aput-object v12, v6, v2

    aget-object v12, v6, v2

    invoke-virtual {v5, v12}, Lcom/android/server/am/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    iget v12, v5, Lcom/android/server/am/TaskRecord;->userId:I

    aput v12, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_6f
    const/4 v12, 0x0

    goto :goto_27

    :cond_71
    const/4 v12, 0x0

    goto :goto_31

    :cond_73
    iget-object v12, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_7e

    iget-object v12, v5, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5a

    :cond_7e
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-eqz v12, :cond_8b

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_5a

    :cond_8b
    const-string/jumbo v12, "unknown"

    goto :goto_5a

    :cond_8f
    iput-object v7, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iput-object v8, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    iput-object v6, v3, Landroid/app/ActivityManager$StackInfo;->taskBounds:[Landroid/graphics/Rect;

    iput-object v9, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_a6

    iget-object v12, v11, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    :goto_a3
    iput-object v12, v3, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    return-object v3

    :cond_a6
    const/4 v12, 0x0

    goto :goto_a3
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_24

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_24

    const-string/jumbo v0, "StatusBarManager"

    const-string/jumbo v2, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2b

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_2b
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private handleDisplayAdded(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private handleDisplayChanged(I)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_2a

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_34

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "Display-off"

    invoke-virtual {v2, v4, p1}, Lcom/android/server/am/ActivityManagerService;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayChanged(I)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_44

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_34
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    :try_start_37
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mOffToken:Landroid/app/ActivityManagerInternal$SleepToken;
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_44

    goto :goto_2a

    :catchall_44
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private handleDisplayRemoved(I)V
    .registers 10

    if-nez p1, :cond_b

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Can\'t remove the primary display."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->shouldDestroyContentOnRemove()Z

    move-result v1

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    :goto_21
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4b

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_42

    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->moveStackToDisplayLocked(IIZ)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_3c

    goto :goto_21

    :catchall_3c
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_42
    :try_start_42
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    goto :goto_21

    :cond_4b
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->releaseSleepTokens(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V
    :try_end_58
    .catchall {:try_start_42 .. :try_end_58} :catchall_3c

    :cond_58
    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->screenshotActivityLocked()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v3, v1}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-nez v3, :cond_25

    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    :cond_25
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    :cond_32
    return-void
.end method

.method private handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IIIZ)V
    .registers 16

    if-eqz p3, :cond_1a

    const/4 v6, -0x1

    if-eq p3, v6, :cond_1a

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityStackSupervisor;->isStackDockedInEffect(I)Z

    move-result v6

    if-nez v6, :cond_13

    const/4 v6, 0x3

    if-eq p2, v6, :cond_13

    xor-int/lit8 v6, v1, 0x1

    if-nez v6, :cond_19

    :cond_13
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    if-eqz v6, :cond_1f

    :cond_19
    return-void

    :cond_1a
    invoke-static {p2}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v1

    goto :goto_6

    :cond_1f
    if-eqz v1, :cond_72

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    iget v0, v6, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v6

    if-nez v6, :cond_63

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->moveTaskToStack(IIZ)V

    const/4 v2, 0x1

    :goto_37
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v2, :cond_47

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_47

    if-eqz p5, :cond_7e

    :cond_47
    if-eqz v2, :cond_74

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v6}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed()V

    :goto_50
    const-string/jumbo v6, "persist.sys.miui_optimization"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_62

    const/4 v6, 0x3

    if-ne p4, v6, :cond_7c

    const/4 v6, 0x1

    :goto_5e
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v6}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    :cond_62
    :goto_62
    return-void

    :cond_63
    if-eqz v0, :cond_6c

    const/4 v6, -0x1

    if-eq p3, v6, :cond_70

    if-eq p3, v0, :cond_6e

    const/4 v2, 0x1

    goto :goto_37

    :cond_6c
    const/4 v2, 0x1

    goto :goto_37

    :cond_6e
    const/4 v2, 0x0

    goto :goto_37

    :cond_70
    const/4 v2, 0x0

    goto :goto_37

    :cond_72
    const/4 v2, 0x0

    goto :goto_37

    :cond_74
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v6}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    goto :goto_50

    :cond_7c
    const/4 v6, 0x0

    goto :goto_5e

    :cond_7e
    if-eqz v5, :cond_62

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v6

    if-eqz v6, :cond_62

    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_62

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_9d

    const/4 v4, 0x2

    :goto_93
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7, v4, v3}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    goto :goto_62

    :cond_9d
    const/4 v4, 0x1

    goto :goto_93
.end method

.method private isFrontOfStackList(Lcom/android/server/am/ActivityStack;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityStack;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    :cond_15
    return v0
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    packed-switch v0, :pswitch_data_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "LOCKED"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "PINNED"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "NONE"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 9

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/os/Bundle;->getSize()I

    move-result v1

    :cond_d
    if-nez p2, :cond_47

    const/4 v2, 0x0

    :goto_10
    add-int v3, v1, v2

    const v4, 0x30d40

    if-le v3, v4, :cond_46

    sget-object v3, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transaction too large, intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", extras size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", icicle size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-void

    :cond_47
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v2

    goto :goto_10
.end method

.method private moveTasksToFullscreenStackInSurfaceTransaction(IZ)V
    .registers 27

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v22

    if-nez v22, :cond_7

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_ad

    const/4 v2, 0x0

    :goto_14
    const/4 v1, 0x7

    if-gt v2, v1, :cond_57

    :try_start_17
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v1

    if-eqz v1, :cond_30

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v20

    if-eqz v20, :cond_33

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_33
    const/4 v1, 0x1

    if-ne v2, v1, :cond_30

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    :try_end_48
    .catchall {:try_start_17 .. :try_end_48} :catchall_49

    goto :goto_30

    :catchall_49
    move-exception v1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    :cond_57
    const/4 v1, 0x0

    :try_start_58
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    :cond_5c
    :goto_5c
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    if-eqz v18, :cond_c3

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_c0

    const/16 v19, 0x1

    :goto_71
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_c6

    const/4 v9, 0x1

    :goto_77
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-eqz p2, :cond_cc

    const/4 v2, 0x0

    :goto_82
    move/from16 v0, v21

    if-ge v2, v0, :cond_ea

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    add-int/lit8 v1, v21, -0x1

    if-ne v2, v1, :cond_c8

    const/4 v7, 0x1

    :goto_93
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_a0

    if-eqz v19, :cond_ca

    if-eqz p2, :cond_ca

    const/4 v1, 0x0

    :goto_9d
    invoke-virtual {v3, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_a0
    const-string/jumbo v10, "moveTasksToFullscreenStack - onTop"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZZLjava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_ad
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_5c

    if-eqz p2, :cond_5c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/16 v4, 0x334

    invoke-static {v1, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_5c

    :cond_c0
    const/16 v19, 0x0

    goto :goto_71

    :cond_c3
    const/16 v19, 0x0

    goto :goto_71

    :cond_c6
    const/4 v9, 0x0

    goto :goto_77

    :cond_c8
    const/4 v7, 0x0

    goto :goto_93

    :cond_ca
    const/4 v1, 0x1

    goto :goto_9d

    :cond_cc
    const/4 v2, 0x0

    :goto_cd
    move/from16 v0, v21

    if-ge v2, v0, :cond_ea

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    const-string/jumbo v17, "moveTasksToFullscreenStack - NOT_onTop"

    const/4 v11, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v10, v3

    move v12, v2

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/am/TaskRecord;->reparent(IIIZZZLjava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_cd

    :cond_ea
    const/4 v1, 0x7

    move/from16 v0, p1

    if-eq v0, v1, :cond_102

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z
    :try_end_102
    .catchall {:try_start_58 .. :try_end_102} :catchall_49

    :cond_102
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void
.end method

.method static nextTaskIdForUser(II)I
    .registers 5

    const v2, 0x186a0

    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_b

    sub-int/2addr v0, v2

    :cond_b
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6

    if-eqz p1, :cond_19

    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_c
    if-eqz p3, :cond_11

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    :cond_11
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private putStacksToSleepLocked(ZZ)Z
    .registers 8

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_9
    if-ltz v1, :cond_3a

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1b
    if-ltz v2, :cond_37

    if-eqz p1, :cond_2d

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v4

    and-int/2addr v0, v4

    :goto_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_2d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    goto :goto_2a

    :cond_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_3a
    return v0
.end method

.method private readyToResume()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDeferResumeCount:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private releaseSleepTokens(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    .registers 5

    iget-object v2, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    iget-object v2, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_21
    iget-object v2, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    return-void
.end method

.method private removeSleepTokenLocked(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;->-get0(Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_25

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    :cond_25
    return-void
.end method

.method private setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    return-void
.end method

.method private taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    :goto_a
    if-eqz v0, :cond_13

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v4, p2, :cond_13

    :cond_10
    :goto_10
    return v2

    :cond_11
    const/4 v1, 0x0

    goto :goto_a

    :cond_13
    if-eqz v1, :cond_19

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v4, p2, :cond_10

    :cond_19
    move v2, v3

    goto :goto_10
.end method

.method private unlinkToDeathMiuiAnimationHelper()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-interface {v0}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    :cond_17
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Ljava/lang/String;)V
    .registers 7

    const/16 v4, 0x1081

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    if-nez v0, :cond_f

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfPack:Landroid/util/BoostFramework;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, p1, v2, v1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    :cond_19
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-nez v0, :cond_24

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v0, v4, p1, v2, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    sput-boolean v3, Lcom/android/server/am/ActivityStackSupervisor;->mPerfSendTapHint:Z

    :cond_2f
    return-void
.end method

.method acquireLaunchWakelock()V
    .registers 5

    const/16 v1, 0x68

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_16
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .registers 23

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_47

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    if-eqz p2, :cond_26

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    :cond_26
    if-eqz p4, :cond_2d

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    :cond_2d
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_3e

    if-eqz p2, :cond_42

    :cond_3e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v12

    :cond_42
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v3}, Lcom/android/server/am/ExtraActivityManagerService;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v3

    if-eqz v3, :cond_78

    if-eqz v5, :cond_56

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    :cond_56
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_70

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_70
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_78
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v5, v3, v1}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_da

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a1

    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_bd

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_bd
    const/4 v14, 0x0

    :goto_be
    if-ge v14, v10, :cond_e0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    if-eqz v15, :cond_d7

    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_dc

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v15, v5, v3, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    :cond_d7
    :goto_d7
    add-int/lit8 v14, v14, 0x1

    goto :goto_be

    :cond_da
    const/4 v10, 0x0

    goto :goto_87

    :cond_dc
    invoke-virtual {v15, v5}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_d7

    :cond_e0
    const/4 v14, 0x0

    :goto_e1
    if-ge v14, v2, :cond_fb

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v15

    if-eqz v15, :cond_f8

    const-string/jumbo v3, "finish-idle"

    const/4 v4, 0x1

    invoke-virtual {v15, v5, v4, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v3

    or-int/2addr v11, v3

    :cond_f8
    add-int/lit8 v14, v14, 0x1

    goto :goto_e1

    :cond_fb
    if-nez v12, :cond_11a

    if-eqz v16, :cond_11a

    const/4 v14, 0x0

    :goto_100
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v14, v3, :cond_11a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UserState;

    invoke-virtual {v4, v3}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_100

    :cond_11a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    if-eqz v11, :cond_126

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_126
    return-object v5
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v2, v2}, Lcom/android/server/am/ActivityRecord;->setSleeping(ZZ)V

    :cond_19
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    return-void
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    :goto_e
    return-void

    :cond_f
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    goto :goto_e
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 8

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_8
    if-ltz v0, :cond_2c

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    move v2, v4

    :goto_1b
    if-ltz v2, :cond_29

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->addStartingWindowsForVisibleActivities(Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2c
    return-void
.end method

.method allPausedActivitiesComplete()Z
    .registers 10

    const/4 v8, 0x0

    const/4 v1, 0x1

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_a
    if-ltz v0, :cond_41

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_1c
    if-ltz v4, :cond_3e

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_3b

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_3b

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_3b

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_3b

    return v8

    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_41
    return v1
.end method

.method allResumedActivitiesComplete()Z
    .registers 9

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_9
    if-ltz v0, :cond_3a

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_1b
    if-ltz v3, :cond_37

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_34

    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_34

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_34

    return v7

    :cond_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_3a
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x1

    return v5
.end method

.method allResumedActivitiesIdle()Z
    .registers 8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_9
    if-ltz v0, :cond_40

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_1b
    if-ltz v3, :cond_3d

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v5

    if-nez v5, :cond_32

    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    :cond_32
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_3c

    iget-boolean v5, v1, Lcom/android/server/am/ActivityRecord;->idle:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2f

    :cond_3c
    return v6

    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_40
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchEndIfNeeded()V

    const/4 v5, 0x1

    return v5
.end method

.method allResumedActivitiesVisible()Z
    .registers 9

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_a
    if-ltz v0, :cond_3c

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_1c
    if-ltz v4, :cond_39

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_36

    iget-boolean v6, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v6, :cond_34

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    :cond_34
    return v7

    :cond_35
    const/4 v1, 0x1

    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_3c
    return v1
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 4

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(III)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method anyTaskForIdLocked(III)Lcom/android/server/am/TaskRecord;
    .registers 12

    const/4 v7, 0x0

    const/4 v6, 0x2

    if-eq p2, v6, :cond_10

    const/4 v6, -0x1

    if-eq p3, v6, :cond_10

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Should not specify stackId for non-restore lookup"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_10
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v1, :cond_3e

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_29
    if-ltz v3, :cond_3b

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_38

    return-object v5

    :cond_38
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_3e
    if-nez p2, :cond_41

    return-object v7

    :cond_41
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6, p1}, Lcom/android/server/am/RecentTasks;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-nez v5, :cond_4a

    return-object v7

    :cond_4a
    const/4 v6, 0x1

    if-ne p2, v6, :cond_4e

    return-object v5

    :cond_4e
    invoke-virtual {p0, v5, p3}, Lcom/android/server/am/ActivityStackSupervisor;->restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;I)Z

    move-result v6

    if-nez v6, :cond_55

    return-object v7

    :cond_55
    return-object v5
.end method

.method applySleepTokensLocked(Z)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v10, v1, -0x1

    :goto_a
    if-ltz v10, :cond_8b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->shouldSleep()Z

    move-result v11

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->isSleeping()Z

    move-result v1

    if-ne v11, v1, :cond_23

    :cond_20
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_23
    invoke-virtual {v9, v11}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setIsSleeping(Z)V

    if-eqz p1, :cond_20

    iget-object v0, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v15, v1, -0x1

    :goto_32
    if-ltz v15, :cond_5c

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ActivityStack;

    if-eqz v11, :cond_45

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    :cond_42
    :goto_42
    add-int/lit8 v15, v15, -0x1

    goto :goto_32

    :cond_45
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    iget v1, v14, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_42

    iget v2, v14, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v3, v14, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_42

    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    if-nez v11, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_73
    :goto_73
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v1

    iget v2, v9, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-ne v1, v2, :cond_73

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_73

    :cond_8b
    return-void
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    :goto_b
    if-ltz v2, :cond_f6

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v9, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v8, v11, -0x1

    :goto_1d
    if-ltz v8, :cond_f2

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v11

    if-nez v11, :cond_36

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isMiuiAiModeStack()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_36

    :cond_33
    :goto_33
    add-int/lit8 v8, v8, -0x1

    goto :goto_1d

    :cond_36
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Lcom/android/server/am/ActivityStack;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_46
    if-ge v4, v6, :cond_9b

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v11, :cond_71

    iget v11, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v12, :cond_71

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_71

    if-ne v10, v0, :cond_74

    const/4 v11, 0x1

    :goto_69
    const/4 v12, 0x1

    :try_start_6a
    invoke-virtual {p0, v0, p1, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6d} :catch_76

    move-result v11

    if-eqz v11, :cond_71

    const/4 v1, 0x1

    :cond_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    :cond_74
    const/4 v11, 0x0

    goto :goto_69

    :catch_76
    move-exception v3

    sget-object v11, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception in new application when starting activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v3

    :cond_9b
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpActivityList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_33

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->isMiuiAiModeStack()Z

    move-result v11

    if-eqz v11, :cond_33

    if-eqz v10, :cond_33

    move-object v0, v10

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v11, :cond_33

    iget v11, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v12, v10, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v12, :cond_33

    iget-object v11, v10, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_33

    const/4 v11, 0x1

    const/4 v12, 0x1

    :try_start_c4
    invoke-virtual {p0, v10, p1, v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c7} :catch_cd

    move-result v11

    if-eqz v11, :cond_33

    const/4 v1, 0x1

    goto/16 :goto_33

    :catch_cd
    move-exception v3

    sget-object v11, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Exception in new application when starting activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v3

    :cond_f2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_b

    :cond_f6
    if-nez v1, :cond_fe

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_fe
    return v1
.end method

.method canPlaceEntityOnDisplay(IZIILandroid/content/pm/ActivityInfo;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    if-nez v0, :cond_c

    return v1

    :cond_c
    if-nez p2, :cond_17

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->displayConfigMatchesGlobal(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    return v1

    :cond_17
    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/android/server/am/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_1e

    return v1

    :cond_1e
    return v2
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;I)Z
    .registers 4

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x4

    if-ne p2, v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v0, :cond_11

    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisorInjector;->supportsFreeform()Z

    move-result v0

    goto :goto_12
.end method

.method cancelInitializingActivities()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_8
    if-ltz v0, :cond_2b

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1a
    if-ltz v1, :cond_28

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    return-void
.end method

.method checkReadyForSleepLocked(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchEndIfNeeded()V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_28
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    :cond_33
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)Z
    .registers 32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-nez v16, :cond_13

    const/4 v4, 0x1

    return v4

    :cond_13
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move-object/from16 v6, p7

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p13

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;)I

    move-result v11

    const/4 v4, 0x1

    if-eq v12, v4, :cond_3b

    const/4 v4, 0x1

    if-ne v11, v4, :cond_171

    :cond_3b
    if-eqz p10, :cond_51

    const/16 v4, -0x3e9

    move/from16 v0, p4

    if-eq v0, v4, :cond_51

    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p11

    move-object/from16 v6, p10

    move-object/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_51
    const/4 v4, 0x1

    if-ne v11, v4, :cond_bc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with revoked permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_b1
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_bc
    move-object/from16 v0, p2

    iget-boolean v4, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v4, :cond_11a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not exported from uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_b1

    :cond_11a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_b1

    :cond_171
    const/4 v4, 0x2

    if-ne v11, v4, :cond_1dc

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Appop Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-static {v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_1dc
    const/4 v4, 0x2

    if-ne v12, v4, :cond_245

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Appop Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " requires appop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-static {v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p13

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisorInjector$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_245

    const/4 v4, 0x0

    return v4

    :cond_245
    if-eqz p12, :cond_327

    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2bb

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.START_TASKS_FROM_RECENTS"

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v17

    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_2bb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") with launchTaskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2bb
    invoke-virtual/range {p12 .. p12}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v13

    const/4 v4, -0x1

    if-eq v13, v4, :cond_327

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_327

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial: starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") with launchDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    invoke-static {v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_327
    const/4 v4, 0x1

    return v4
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V
    .registers 18

    if-eqz p3, :cond_a

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v11, p1}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2e

    sget-object v11, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No component for base intent of task: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    new-instance v12, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v11, p1, v0, v12}, Lcom/android/server/am/ActiveServices;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;Landroid/content/ComponentName;Landroid/content/Intent;)V

    if-nez p2, :cond_41

    return-void

    :cond_41
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    const/4 v1, 0x0

    :goto_53
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v1, v11, :cond_b2

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    const/4 v2, 0x0

    :goto_60
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v2, v11, :cond_af

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget v11, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    iget v12, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v11, v12, :cond_75

    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    :cond_75
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v8, v11, :cond_72

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_72

    const/4 v3, 0x0

    :goto_84
    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_a6

    iget-object v11, v8, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v12, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v11, v12, :cond_a3

    iget-boolean v11, v4, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v11, :cond_a3

    return-void

    :cond_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_a6
    iget-boolean v11, v8, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eqz v11, :cond_ab

    return-void

    :cond_ab
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_72

    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_b2
    const/4 v1, 0x0

    :goto_b3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v1, v11, :cond_db

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget v11, v7, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v11, :cond_d5

    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_d5

    const-string/jumbo v11, "remove task"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    :goto_d2
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    :cond_d5
    const-string/jumbo v11, "remove task"

    iput-object v11, v7, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    goto :goto_d2

    :cond_db
    return-void
.end method

.method cleanupActivity(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_12
    if-ltz v0, :cond_2c

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_2c
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 8

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_8
    if-ltz v0, :cond_2c

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    move v2, v4

    :goto_1b
    if-ltz v2, :cond_29

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2c
    return-void
.end method

.method closeSystemDialogsLocked()V
    .registers 5

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_8
    if-ltz v0, :cond_2b

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1a
    if-ltz v1, :cond_28

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_10
    return-void
.end method

.method continueUpdateBounds(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->continueUpdateBounds()V

    :cond_9
    return-void
.end method

.method createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;
    .registers 8

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v0, :cond_24

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$SleepTokenImpl;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mAllSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method createStack(ILcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)Lcom/android/server/am/ActivityStack;
    .registers 10

    packed-switch p1, :pswitch_data_1c

    new-instance v0, Lcom/android/server/am/ActivityStack;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    move-object v1, p2

    move v2, p1

    move-object v3, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/RecentTasks;Z)V

    return-object v0

    :pswitch_f
    new-instance v0, Lcom/android/server/am/PinnedActivityStack;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    move-object v1, p2

    move v2, p1

    move-object v3, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/PinnedActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/RecentTasks;Z)V

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x4
        :pswitch_f
    .end packed-switch
.end method

.method createStackOnDisplay(IIZ)Lcom/android/server/am/ActivityStack;
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->createStack(ILcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method deferUpdateBounds(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->deferUpdateBounds()V

    :cond_9
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFocusedStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " mLastFocusedStack="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurTaskIdForUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserStackInFront="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStacks="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLockTaskModeState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v2, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_d6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mLockTaskPackages (userId:packages)="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_ad
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_d6

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_d6
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_104

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mWaitingForActivityVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_e8
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_104

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e8

    :cond_104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mLockTaskModeTasks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .registers 36

    const/16 v25, 0x0

    const/4 v9, 0x0

    const/16 v23, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_15d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    const-string/jumbo v4, "Display #"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v4, " (activities from top to bottom):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v28, v4, -0x1

    :goto_42
    if-ltz v28, :cond_159

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "  Stack #"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, ":"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "  mResumedActivity="

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "  mFullscreen="

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "  isSleeping="

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\n"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "  mBounds="

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v26

    or-int v25, v25, v26

    if-nez v26, :cond_e8

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_e8
    iget-object v12, v3, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string/jumbo v13, "    "

    const-string/jumbo v14, "Run"

    xor-int/lit8 v16, p3, 0x1

    const-string/jumbo v20, "    Running activities (most recent first):"

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v25, v25, v4

    move/from16 v9, v25

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v5, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move/from16 v2, v25

    invoke-static {v0, v4, v1, v2, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_11e

    const/16 v25, 0x1

    const/4 v9, 0x0

    :cond_11e
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v5, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_130

    const/16 v25, 0x1

    const/4 v9, 0x0

    :cond_130
    if-eqz p3, :cond_153

    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v5, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_144

    const/16 v25, 0x1

    const/4 v9, 0x1

    :cond_144
    iget-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v5, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v9, v5}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int v25, v25, v4

    :cond_153
    move/from16 v9, v25

    add-int/lit8 v28, v28, -0x1

    goto/16 :goto_42

    :cond_159
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    :cond_15d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string/jumbo v13, "  "

    const-string/jumbo v14, "Fin"

    xor-int/lit8 v16, p3, 0x1

    const-string/jumbo v20, "  Activities waiting to finish:"

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v25, v25, v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string/jumbo v13, "  "

    const-string/jumbo v14, "Stop"

    xor-int/lit8 v16, p3, 0x1

    const-string/jumbo v20, "  Activities waiting to stop:"

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v25, v25, v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    const-string/jumbo v13, "  "

    const-string/jumbo v14, "Wait"

    xor-int/lit8 v16, p3, 0x1

    const-string/jumbo v20, "  Activities waiting for another to become visible:"

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v25, v25, v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string/jumbo v13, "  "

    const-string/jumbo v14, "Sleep"

    xor-int/lit8 v16, p3, 0x1

    const-string/jumbo v20, "  Activities waiting to sleep:"

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v21, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v18, p5

    invoke-static/range {v10 .. v21}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    or-int v25, v25, v4

    return v25
.end method

.method dumpDisplayConfigs(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Display override configurations:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_38

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_38
    return-void
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .registers 11

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v5}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    :try_start_5
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_d
    if-ltz v0, :cond_31

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    move v2, v4

    :goto_20
    if-ltz v2, :cond_2e

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_37

    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_31
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v5}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    return-void

    :catchall_37
    move-exception v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v6}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw v5
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .registers 10

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_9
    if-ltz v1, :cond_30

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1b
    if-ltz v2, :cond_2d

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2a

    return-object v0

    :cond_2a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_30
    return-object v5
.end method

.method findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v0, :cond_d

    return-object v5

    :cond_d
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_15
    if-ltz v1, :cond_2b

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_28

    if-lez v1, :cond_28

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    return-object v3

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_2b
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to find a stack behind stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iput-object v7, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iput-boolean v6, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_13
    if-ltz v1, :cond_6d

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_25
    if-ltz v3, :cond_6a

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkActivityBelongsInStack(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-nez v5, :cond_36

    :cond_33
    :goto_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_25

    :cond_36
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_33

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    if-nez v5, :cond_5b

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_56

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Ljava/lang/String;)V

    :cond_56
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    return-object v5

    :cond_5b
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v5

    if-ne v5, p2, :cond_33

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v0, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    goto :goto_33

    :cond_6a
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_6d
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_7d

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpFindTaskResult:Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_82

    :cond_7d
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Ljava/lang/String;)V

    :cond_82
    return-object v0
.end method

.method findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .registers 20

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v11

    if-eqz v11, :cond_4d

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    :goto_a
    if-eqz v13, :cond_17

    iget-object v1, v13, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v3, :cond_17

    iget-object v1, v13, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Ljava/lang/String;)V

    :cond_17
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    :cond_1e
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_26
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-nez v10, :cond_4f

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findTaskToMoveToFrontLocked: can\'t move task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to front. Stack is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4d
    const/4 v13, 0x0

    goto :goto_a

    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_96

    if-eqz p3, :cond_96

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;I)Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    const/4 v1, -0x1

    if-ne v2, v1, :cond_75

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result v2

    :cond_75
    iget v1, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v2, v1, :cond_86

    const-string/jumbo v7, "findTaskToMoveToFrontLocked"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    iget v2, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    :cond_86
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->resizeStackWithLaunchBounds(I)Z

    move-result v1

    if-eqz v1, :cond_b3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    :cond_96
    :goto_96
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    if-nez v12, :cond_b7

    const/4 v7, 0x0

    :goto_9d
    const/4 v5, 0x0

    move-object v3, v10

    move-object v4, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    iget v7, v10, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IIIZ)V

    return-void

    :cond_b3
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->resizeWindowContainer()V

    goto :goto_96

    :cond_b7
    iget-object v7, v12, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_9d
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    :goto_9
    if-ltz v7, :cond_35

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v9, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    :goto_1b
    if-ltz v8, :cond_32

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v6, 0x1

    :cond_2f
    add-int/lit8 v8, v8, -0x1

    goto :goto_1b

    :cond_32
    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    :cond_35
    return v6
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .registers 12

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_d
    if-ltz v0, :cond_35

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v3, :cond_32

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eq v4, v2, :cond_2e

    if-nez v1, :cond_2f

    :cond_2e
    move-object v1, v7

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_35
    return-object v1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 8

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_27

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    return-void
.end method

.method getActivityDisplay(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    return-object v0
.end method

.method getAllStackInfosLocked()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_33

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1e
    if-ltz v2, :cond_30

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_33
    return-object v1
.end method

.method protected getChildAt(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    return-object v0
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/am/ConfigurationContainer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getChildAt(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_9

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    return-object v6

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v2, :cond_46

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_27
    if-ltz v4, :cond_43

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    if-eqz p2, :cond_39

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_40

    :cond_39
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_40
    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_46
    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/am/ActivityRecord;
    .registers 2

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/am/ActivityRecord;
    .registers 9

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_c
    if-ltz v4, :cond_3e

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    if-eqz v6, :cond_3b

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_22
    if-ltz v1, :cond_3b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v6

    if-eqz v6, :cond_38

    const/4 v6, -0x1

    if-eq p1, v6, :cond_37

    iget v6, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v6, p1, :cond_38

    :cond_37
    return-object v2

    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_3e
    const/4 v6, 0x0

    return-object v6
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method getLockTaskModeState()I
    .registers 2

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    return v0
.end method

.method getLockedTaskLocked()Lcom/android/server/am/TaskRecord;
    .registers 3

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_13

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    return-object v1

    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .registers 10

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_10
    if-ltz v1, :cond_41

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v5

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_24
    if-ltz v2, :cond_3e

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    if-eq v3, p1, :cond_3b

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v5

    if-eqz v5, :cond_3b

    return-object v3

    :cond_3b
    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    :cond_3e
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_41
    return-object v7
.end method

.method getNextStackId()I
    .registers 3

    :goto_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_11

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    return v0

    :cond_11
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNextFreeStackId:I

    goto :goto_0
.end method

.method getNextTaskIdForUserLocked(I)I
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v3, 0x186a0

    mul-int/2addr v3, p1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v0

    :cond_e
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/am/RecentTasks;->taskIdTakenForUserLocked(II)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(III)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_2d

    :cond_1e
    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v0

    if-ne v0, v1, :cond_e

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    return v0
.end method

.method getNextValidLaunchStackLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityStack;
    .registers 9

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_10
    if-ltz v1, :cond_24

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-ne v0, p2, :cond_1d

    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_1a

    return-object v2

    :cond_24
    return-object v5
.end method

.method protected getParent()Lcom/android/server/am/ConfigurationContainer;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method getReparentTargetStack(Lcom/android/server/am/TaskRecord;IZ)Lcom/android/server/am/ActivityStack;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_30

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v1, p2, :cond_30

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not reparent to same stack, task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " already in stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_30
    invoke-static {p2}, Landroid/app/ActivityManager$StackId;->isMultiWindowStack(I)Z

    move-result v1

    if-eqz v1, :cond_63

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiWindow:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_63

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    invoke-static {p2}, Landroid/app/ActivityManager$StackId;->isDynamicStack(I)Z

    move-result v1

    if-eqz v1, :cond_96

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsMultiDisplay:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_96

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_96
    const/4 v1, 0x2

    if-ne p2, v1, :cond_c3

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSupportsFreeformWindowManagement:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c3

    invoke-static {}, Lcom/android/server/am/ActivityStackSupervisorInjector;->supportsFreeform()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_104

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_104

    if-eqz v0, :cond_10f

    iget p2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_d2
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not move unresizeable task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to docked stack."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Moving to stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_104
    const/4 v1, 0x1

    :try_start_105
    iput-boolean v1, p1, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;
    :try_end_10b
    .catchall {:try_start_105 .. :try_end_10b} :catchall_111

    move-result-object v1

    iput-boolean v4, p1, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    return-object v1

    :cond_10f
    const/4 p2, 0x1

    goto :goto_d2

    :catchall_111
    move-exception v1

    iput-boolean v4, p1, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    throw v1
.end method

.method getResumedActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_6

    return-object v2

    :cond_6
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1a

    :cond_e
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_16

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v2, :cond_1a

    :cond_16
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method protected getStack(I)Lcom/android/server/am/ActivityStack;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method protected getStack(IZZ)Lcom/android/server/am/ActivityStack;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/am/ActivityStack;",
            ">(IZZ)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    if-eqz p2, :cond_16

    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    :cond_16
    return-object v2

    :cond_17
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1f

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    :cond_1f
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    return-object v1
.end method

.method getStackInfoLocked(I)Landroid/app/ActivityManager$StackInfo;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStackInfoLocked(Lcom/android/server/am/ActivityStack;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    return-object v1

    :cond_c
    return-object v1
.end method

.method getStacks()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_d
    if-ltz v1, :cond_1f

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_1f
    return-object v0
.end method

.method getStacksOnDefaultDisplay()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method getTasksLocked(ILjava/util/List;IZ)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZ)V"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v3, :cond_4f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v14, v15, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v12, v15, -0x1

    :goto_22
    if-ltz v12, :cond_3c

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v11, v13, v0, v1}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Ljava/util/List;IZ)V

    add-int/lit8 v12, v12, -0x1

    goto :goto_22

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_3f
    if-eqz v10, :cond_79

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    :cond_4f
    if-lez p1, :cond_79

    const-wide/high16 v6, -0x8000000000000000L

    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_59
    if-ge v12, v8, :cond_3f

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_76

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-wide v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    cmp-long v15, v4, v6

    if-lez v15, :cond_76

    move-wide v6, v4

    move-object v10, v13

    :cond_76
    add-int/lit8 v12, v12, 0x1

    goto :goto_59

    :cond_79
    return-void
.end method

.method getTopVisibleActivities()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    :goto_f
    if-ltz v1, :cond_4d

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_21
    if-ltz v2, :cond_4a

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_41

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_41

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v3, v6, :cond_44

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v8, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_41
    :goto_41
    add-int/lit8 v2, v2, -0x1

    goto :goto_21

    :cond_44
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_4d
    return-object v5
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_14

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getValidLaunchStackOnDisplay(ILcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .registers 11

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_28

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Display with displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_28
    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_30
    if-ltz v1, :cond_4a

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    iget v5, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/am/ActivityStarter;->isValidLaunchStackId(IILcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_47

    return-object v3

    :cond_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    :cond_4a
    if-eqz p1, :cond_60

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextStackId()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v4, v2, p1, p2}, Lcom/android/server/am/ActivityStarter;->isValidLaunchStackId(IILcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_60

    const/4 v4, 0x1

    invoke-virtual {p0, v2, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->createStackOnDisplay(IIZ)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    return-object v4

    :cond_60
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getValidLaunchStackOnDisplay: can\'t launch on displayId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method goingToSleepLocked()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->applySleepTokensLocked(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_8
    if-ltz v0, :cond_2b

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1a
    if-ltz v1, :cond_28

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_9
    if-ltz v0, :cond_2e

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1b
    if-ltz v2, :cond_2b

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    or-int/2addr v1, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1b

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2e
    return v1
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;III)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IIIZ)V

    return-void
.end method

.method hasAwakeDisplay()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_1e

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->shouldSleep()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    return v2

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1e
    return v3
.end method

.method initPowerManagement()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "*launch*"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method invalidateTaskLayers()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 14

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p1, v8, :cond_8

    if-ne p2, v8, :cond_8

    return v7

    :cond_8
    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_17

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Launch on display check: display not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_17
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_23

    return v7

    :cond_23
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->isUidPresent(I)Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getOwnerUid()I

    move-result v1

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_58

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_58

    iget-object v4, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v4, :cond_58

    iget v4, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-nez v4, :cond_48

    return v6

    :cond_48
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v5, "android.permission.ACTIVITY_EMBEDDING"

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v8, :cond_58

    xor-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_58

    return v6

    :cond_58
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->isPrivate()Z

    move-result v4

    if-nez v4, :cond_5f

    return v7

    :cond_5f
    if-ne v1, p2, :cond_62

    return v7

    :cond_62
    if-eqz v3, :cond_65

    return v7

    :cond_65
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Launch on display check: denied"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method isCurrentProfileLocked(I)Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfileLocked(I)Z

    move-result v0

    return v0
.end method

.method isDisplayAdded(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method isFocusedStack(Lcom/android/server/am/ActivityStack;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne p1, v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method isFrontStackOnDisplay(Lcom/android/server/am/ActivityStack;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontOfStackList(Lcom/android/server/am/ActivityStack;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .registers 9

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v1, :cond_2f

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_1a
    if-ltz v3, :cond_2c

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_29

    return-object v2

    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2f
    return-object v6
.end method

.method isInMultiWindowStackMode()Z
    .registers 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v0, :cond_c

    return v4

    :cond_c
    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_14
    if-ltz v1, :cond_2b

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isMultiWindowStack(I)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    return v3

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_2b
    return v4
.end method

.method isLastLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z

    move-result v0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;Z)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v1, p1, :cond_c

    xor-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_40

    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLockTaskModeViolation: invalid lockTaskAuth value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :pswitch_2c
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :pswitch_35
    return v2

    :pswitch_36
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
    .end packed-switch
.end method

.method isLockedTask(Lcom/android/server/am/TaskRecord;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isStackDockedInEffect(I)Z
    .registers 6

    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v3, :cond_11

    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method isStoppingNoHistoryActivity()Z
    .registers 4

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isNoHistory()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    return v2

    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method synthetic lambda$-com_android_server_am_ActivityStackSupervisor_123732(IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackInSurfaceTransaction(IZ)V

    return-void
.end method

.method synthetic lambda$-com_android_server_am_ActivityStackSupervisor_132330(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeStackInSurfaceTransaction(I)V

    return-void
.end method

.method lockAllProfileTasks(I)V
    .registers 9

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_f
    if-ltz v0, :cond_3e

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_21
    if-ltz v3, :cond_3b

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->taskTopActivityIsUser(Lcom/android/server/am/TaskRecord;I)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v6, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6, p1}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskProfileLocked(II)V
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_44

    :cond_38
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_3e
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void

    :catchall_44
    move-exception v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v5
.end method

.method logStackState()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityMetricsLogger;->logWindowState()V

    return-void
.end method

.method moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FZLjava/lang/String;)V
    .registers 18

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/PinnedActivityStack;

    :try_start_13
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    iget-object v3, v11, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    iget-object v2, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7e

    if-eqz p4, :cond_46

    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_46

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v2, v3, :cond_41

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_46

    :cond_41
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    :cond_46
    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v11

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZZLjava/lang/String;)Z

    :goto_52
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_55
    .catchall {:try_start_13 .. :try_end_55} :catchall_aa

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-virtual {v10, p3}, Lcom/android/server/am/PinnedActivityStack;->getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;

    move-result-object v9

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v10, p2, v9, v2, v3}, Lcom/android/server/am/PinnedActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityPinned(Ljava/lang/String;II)V

    return-void

    :cond_7e
    :try_start_7e
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZI)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    const-string/jumbo v2, "moveActivityToStack"

    const v3, 0x7fffffff

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZZLjava/lang/String;)Z
    :try_end_a9
    .catchall {:try_start_7e .. :try_end_a9} :catchall_aa

    goto :goto_52

    :catchall_aa
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v2
.end method

.method moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x7

    const/4 v5, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    :cond_c
    return v5

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_3c

    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveActivityStackToFront: invalid task or stack: r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3c
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-ne v0, v2, :cond_44

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    :cond_44
    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual {p0, v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->remove()V

    :cond_5d
    const/4 v2, 0x1

    return v2
.end method

.method moveHomeStackTaskToTop(Ljava/lang/String;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v1, 0x0

    return v1

    :cond_d
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    const/4 v1, 0x1

    return v1
.end method

.method moveHomeStackToFront(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method moveStackToDisplayLocked(IIZ)V
    .registers 10

    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveStackToDisplayLocked: Unknown displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_20
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_44

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveStackToDisplayLocked: Unknown stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_44
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v1

    if-nez v1, :cond_6b

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveStackToDisplayLocked: Stack with stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not attached to any display."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6b
    iget v3, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-ne v3, p2, :cond_94

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Trying to move stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to its current displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_94
    invoke-virtual {v2, v0, p3}, Lcom/android/server/am/ActivityStack;->reparent(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)V

    return-void
.end method

.method moveTasksToFullscreenStackLocked(IZ)V
    .registers 6

    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    const-string/jumbo v0, "preload_pid=-1"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, p1, p0}, Lcom/android/server/am/-$Lambda$5yQSwWrsRDcxoFuTXgyaBIqPvDw;-><init>(BZILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method moveTopStackActivityToPinnedStackLocked(ILandroid/graphics/Rect;)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-nez v6, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTopStackActivityToPinnedStackLocked: Unknown stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_43

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTopStackActivityToPinnedStackLocked: No top running activity in stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_43
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_6b

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6b

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTopStackActivityToPinnedStackLocked: Picture-In-Picture not supported for  r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6b
    const-string/jumbo v5, "moveTopActivityToPinnedStack"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveActivityToPinnedStackLocked(Lcom/android/server/am/ActivityRecord;Landroid/graphics/Rect;FZLjava/lang/String;)V

    return v4
.end method

.method notifyAppTransitionDone()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_d
    if-ltz v0, :cond_28

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(III)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v1, v4}, Lcom/android/server/am/TaskRecord;->setTaskDockedResizing(Z)V

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_28
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x69

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x6b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .registers 16

    const/4 v14, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v0, 0x0

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    :goto_c
    if-ltz v9, :cond_43

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v11, v12, :cond_3b

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v11, v14, :cond_3d

    const/4 v10, 0x1

    :goto_1f
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v11, v12, :cond_3f

    iget v11, v3, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v11, v14, :cond_41

    const/4 v2, 0x1

    :goto_2b
    if-eqz v10, :cond_38

    xor-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_38

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    const/4 v0, 0x1

    :cond_38
    add-int/lit8 v9, v9, -0x1

    goto :goto_c

    :cond_3b
    const/4 v10, 0x1

    goto :goto_1f

    :cond_3d
    const/4 v10, 0x0

    goto :goto_1f

    :cond_3f
    const/4 v2, 0x1

    goto :goto_2b

    :cond_41
    const/4 v2, 0x0

    goto :goto_2b

    :cond_43
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    add-int/lit8 v1, v11, -0x1

    :goto_4b
    if-ltz v1, :cond_6e

    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v11, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    :goto_5d
    if-ltz v6, :cond_6b

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->onLockTaskPackagesUpdatedLocked()V

    add-int/lit8 v6, v6, -0x1

    goto :goto_5d

    :cond_6b
    add-int/lit8 v1, v1, -0x1

    goto :goto_4b

    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_94

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    :goto_78
    iget-object v11, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8e

    if-eqz v8, :cond_8e

    iget v11, v8, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-ne v11, v12, :cond_8e

    const-string/jumbo v11, "package updated"

    const/4 v12, 0x1

    invoke-virtual {p0, v8, v12, v11, v13}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_8e
    if-eqz v0, :cond_93

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_93
    return-void

    :cond_94
    const/4 v8, 0x0

    goto :goto_78
.end method

.method pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z
    .registers 15

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v6, v10, :cond_1c

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v6, v7, :cond_23

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_23

    :cond_1c
    const-string/jumbo v6, "persist.sys.miui_optimization"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_23
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_2c
    if-ltz v0, :cond_8f

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v5, v6, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :goto_3e
    if-ltz v4, :cond_8c

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_81

    iget-object v6, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_81

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-static {v6, v3}, Lcom/android/server/am/ActivityStackSupervisorInjector;->notPauseAtFreeformMode(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_81

    if-eqz v1, :cond_88

    iget v6, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v6, v7, :cond_84

    iget v6, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v6, v10, :cond_86

    move v6, v7

    :goto_65
    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_81

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isMiuiAiModeStack()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_81

    iget v6, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v9, 0x5

    if-ne v6, v9, :cond_8a

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    :goto_78
    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_81

    invoke-virtual {v3, p1, v8, p2, p3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v6

    or-int/2addr v2, v6

    :cond_81
    add-int/lit8 v4, v4, -0x1

    goto :goto_3e

    :cond_84
    move v6, v7

    goto :goto_65

    :cond_86
    move v6, v8

    goto :goto_65

    :cond_88
    move v6, v8

    goto :goto_65

    :cond_8a
    move v6, v8

    goto :goto_78

    :cond_8c
    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    :cond_8f
    return v2
.end method

.method prepareForShutdownLocked()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    const-string/jumbo v1, "shutdown"

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->createSleepTokenLocked(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method final processStoppingActivitiesLocked(Lcom/android/server/am/ActivityRecord;ZZ)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v1

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_e
    if-ltz v0, :cond_67

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    if-eqz v1, :cond_2f

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_2f

    invoke-virtual {v2, v9}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    :cond_2f
    if-eqz p2, :cond_4d

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_50

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v3

    :goto_3b
    if-eqz v6, :cond_3f

    if-eqz v3, :cond_4d

    :cond_3f
    if-nez p3, :cond_57

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_57

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_4d
    :goto_4d
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_50
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v3

    goto :goto_3b

    :cond_57
    if-nez v5, :cond_5e

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_5e
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4d

    :cond_67
    return-object v5
.end method

.method rankTaskLayersIfNeeded()V
    .registers 7

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    if-nez v4, :cond_6

    return-void

    :cond_6
    iput-boolean v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTaskLayersChanged:Z

    const/4 v1, 0x0

    :goto_9
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_35

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_22
    if-ltz v2, :cond_32

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->rankTaskLayers(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_35
    return-void
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v4, 0x0

    return v4

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v31

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->beginDeferResume()V

    const/4 v4, 0x0

    :try_start_14
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v4}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    :cond_31
    if-eqz p4, :cond_61

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getDisplayId()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_1a6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_4d
    move/from16 v0, v24

    invoke-virtual {v5, v6, v4, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v5, v2}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZI)Z

    :cond_61
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v4

    if-eqz v4, :cond_75

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    :cond_75
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1a9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0

    :goto_87
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, v5, :cond_9b

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v22

    if-eq v4, v0, :cond_f0

    :cond_9b
    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "User ID for activity changing for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " appInfo.uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " info.ai.uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v27

    if-gez v27, :cond_11c

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_13c

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_148

    :cond_13c
    const-string/jumbo v4, "mLockTaskAuth==LAUNCHABLE"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v5, v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    :try_end_148
    .catchall {:try_start_14 .. :try_end_148} :catchall_49d

    :cond_148
    :try_start_148
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v4, :cond_1ad

    new-instance v4, Landroid/os/RemoteException;

    invoke-direct {v4}, Landroid/os/RemoteException;-><init>()V

    throw v4
    :try_end_154
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_154} :catch_154
    .catchall {:try_start_148 .. :try_end_154} :catchall_49d

    :catch_154
    move-exception v25

    :try_start_155
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_4a2

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v8, "2nd-crash"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v31

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_1a1
    .catchall {:try_start_155 .. :try_end_1a1} :catchall_49d

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    return v4

    :cond_1a6
    const/4 v4, 0x0

    goto/16 :goto_4d

    :cond_1a9
    const/16 v22, -0x1

    goto/16 :goto_87

    :cond_1ad
    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz p3, :cond_1bf

    :try_start_1b3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    :cond_1bf
    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v5, v6

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v5, v6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v4, v5, v6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_491

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_1f6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v5, v6

    const/16 v4, 0x7536

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_494

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_211
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isMiuiAiModeStack()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v5, v6

    const/16 v4, 0x758a

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v4

    if-eqz v4, :cond_25c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    :cond_25c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->notifyPackageUse(Ljava/lang/String;I)V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showUnsupportedZoomDialogIfNeededLocked(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v4, :cond_2fd

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2fd

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_2ca

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v4, v0, :cond_2fd

    :cond_2ca
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2fd

    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v4, :cond_2fd

    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_2e6
    .catch Landroid/os/RemoteException; {:try_start_1b3 .. :try_end_2e6} :catch_154
    .catchall {:try_start_1b3 .. :try_end_2e6} :catchall_49d

    if-eqz v4, :cond_2f4

    :try_start_2e8
    move-object/from16 v0, v30

    iget-object v4, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_2f4
    .catch Ljava/io/IOException; {:try_start_2e8 .. :try_end_2f4} :catch_497
    .catch Landroid/os/RemoteException; {:try_start_2e8 .. :try_end_2f4} :catch_154
    .catchall {:try_start_2e8 .. :try_end_2f4} :catchall_49d

    :cond_2f4
    :goto_2f4
    :try_start_2f4
    new-instance v21, Landroid/app/ProfilerInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    :cond_2fd
    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    const/4 v4, 0x1

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    new-instance v28, Landroid/util/MergedConfiguration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityManagerServiceInjector;->onForegroundActivityChangedLocked(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isMiuiAiModeStack()Z

    move-result v4

    if-eqz v4, :cond_361

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preload_pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_361
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v28 .. v28}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual/range {v28 .. v28}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    move-object/from16 v16, v0

    xor-int/lit8 v19, p3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v20

    invoke-interface/range {v4 .. v21}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_428

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_428

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_403

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v4, v0, :cond_403

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting new heavy weight process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " when already running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_403
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_428
    .catch Landroid/os/RemoteException; {:try_start_2f4 .. :try_end_428} :catch_154
    .catchall {:try_start_2f4 .. :try_end_428} :catchall_49d

    :cond_428
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_45c

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " being launched, but already in LRU list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45c
    if-eqz p3, :cond_4b1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v4

    if-eqz v4, :cond_4b1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :goto_46b
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_47c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    :cond_47c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_48f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_48f
    const/4 v4, 0x1

    return v4

    :cond_491
    const/4 v4, 0x0

    goto/16 :goto_1f6

    :cond_494
    const/4 v4, 0x0

    goto/16 :goto_211

    :catch_497
    move-exception v26

    :try_start_498
    invoke-virtual/range {v30 .. v30}, Landroid/app/ProfilerInfo;->closeFd()V
    :try_end_49b
    .catch Landroid/os/RemoteException; {:try_start_498 .. :try_end_49b} :catch_154
    .catchall {:try_start_498 .. :try_end_49b} :catchall_49d

    goto/16 :goto_2f4

    :catchall_49d
    move-exception v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->endDeferResume()V

    throw v4

    :cond_4a2
    const/4 v4, 0x1

    :try_start_4a3
    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    throw v25
    :try_end_4b1
    .catchall {:try_start_4a3 .. :try_end_4b1} :catchall_49d

    :cond_4b1
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_46b
.end method

.method registerMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->unlinkToDeathMiuiAnimationHelper()V

    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_3e

    :try_start_14
    invoke-interface {p1}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1e} :catch_30
    .catchall {:try_start_14 .. :try_end_1e} :catchall_3e

    :try_start_1e
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_3e

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    :cond_2f
    return-void

    :catch_30
    move-exception v0

    :try_start_31
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "MiuiAppTransitionAnimationHelper linkToDeath failed."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_3e

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 15

    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_69

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iget-boolean v10, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v10, :cond_1d

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_1e

    :cond_1d
    return-void

    :cond_1e
    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v10, v11, :cond_1d

    iget-boolean v10, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v10, :cond_3a

    iget-boolean v10, v4, Lcom/android/server/am/ActivityRecord;->stopped:Z

    xor-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_3a

    iget-boolean v10, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    xor-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_3a

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v10, v11, :cond_3d

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3d
    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v10, v11, :cond_3a

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v10, v11, :cond_3a

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v11, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v10, v11, :cond_3a

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-eqz v8, :cond_3a

    if-nez v1, :cond_59

    move-object v1, v8

    goto :goto_3a

    :cond_59
    if-eq v1, v8, :cond_3a

    if-nez v9, :cond_65

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_65
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_69
    if-nez v9, :cond_6c

    return-void

    :cond_6c
    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_73
    if-ge v0, v3, :cond_99

    iget-object v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v7, v10, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_80
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_96

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v5, p1, v9, p2}, Lcom/android/server/am/ActivityStack;->releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_93

    return-void

    :cond_93
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_99
    return-void
.end method

.method removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_22
    return-void
.end method

.method removeSleepTimeouts()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    return-void
.end method

.method removeStackInSurfaceTransaction(I)V
    .registers 11

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v4

    if-ne v4, v8, :cond_26

    move-object v1, v2

    check-cast v1, Lcom/android/server/am/PinnedActivityStack;

    iput-boolean v6, v1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    invoke-virtual {v1, v7, v5, v6}, Lcom/android/server/am/PinnedActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iput-boolean v5, v1, Lcom/android/server/am/PinnedActivityStack;->mForceHidden:Z

    invoke-virtual {p0, v7, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v8, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    :cond_25
    return-void

    :cond_26
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_2c
    if-ltz v0, :cond_25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0, v4, v6, v6}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZ)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_2c
.end method

.method removeStackLocked(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0;

    invoke-direct {v1, p1, p0}, Lcom/android/server/am/-$Lambda$wXoCvN1vCS9Im-C0Hwk121gFGr0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeTaskByIdLocked(IZZ)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZ)Z

    move-result v0

    return v0
.end method

.method removeTaskByIdLocked(IZZZ)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(III)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0, p4}, Lcom/android/server/am/TaskRecord;->removeTaskActivitiesLocked(Z)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/am/TaskRecord;ZZ)V

    iget-boolean v1, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_18
    return v2

    :cond_19
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Request to remove task ignored for non-existent task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method removeUserLocked(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .registers 14

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_9
    if-ltz v1, :cond_32

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_2f

    const/4 v0, 0x1

    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    if-eqz p2, :cond_2b

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    :cond_2b
    iput-wide p3, v2, Landroid/app/WaitResult;->thisTime:J

    iput-wide p5, v2, Landroid/app/WaitResult;->totalTime:J

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_32
    if-eqz v0, :cond_39

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    :cond_39
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisorInjector;->updateScreenPaperMode(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    return v3

    :cond_2b
    return v2
.end method

.method reportTaskToFrontNoLaunch(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_9
    if-ltz v1, :cond_1e

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_1b

    const/4 v0, 0x1

    const/4 v3, 0x2

    iput v3, v2, Landroid/app/WaitResult;->result:I

    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_1e
    if-eqz v0, :cond_25

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    :cond_25
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 22

    iget-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v13

    if-nez v13, :cond_15

    sget-object v2, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "resizeDockedStackLocked: docked stack not found"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const-string/jumbo v2, "am.resizeDockedStack"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v2, 0x0

    :try_start_23
    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v13, p1, v0, v1}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-boolean v2, v13, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v2, :cond_3e

    if-nez p1, :cond_59

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_59

    :cond_3e
    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    const/4 v12, 0x0

    :cond_44
    if-nez p7, :cond_4b

    move/from16 v0, p6

    invoke-virtual {v13, v12, v0}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_9a

    :cond_4b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_59
    :try_start_59
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    :goto_5f
    const/4 v2, 0x7

    if-gt v3, v2, :cond_44

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v10

    if-eqz v10, :cond_92

    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isResizeableByDockedStack(I)Z

    move-result v2

    if-eqz v2, :cond_92

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v2, v11, v4}, Lcom/android/server/am/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    :goto_80
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_97

    move-object v5, v11

    :goto_87
    const/4 v8, 0x1

    move-object v2, p0

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    :try_end_92
    .catchall {:try_start_59 .. :try_end_92} :catchall_9a

    :cond_92
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    :cond_95
    const/4 v4, 0x0

    goto :goto_80

    :cond_97
    move-object/from16 v5, p4

    goto :goto_87

    :catchall_9a
    move-exception v2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11

    const-wide/16 v6, 0x40

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PinnedActivityStack;

    if-nez v2, :cond_14

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resizePinnedStackLocked: pinned stack not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    invoke-virtual {v2}, Lcom/android/server/am/PinnedActivityStack;->getWindowContainerController()Lcom/android/server/wm/StackWindowController;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/PinnedStackWindowController;

    invoke-virtual {v3}, Lcom/android/server/wm/PinnedStackWindowController;->pinnedStackResizeDisallowed()Z

    move-result v4

    if-eqz v4, :cond_21

    return-void

    :cond_21
    const-string/jumbo v4, "am.resizePinnedStack"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_2c
    invoke-virtual {v2}, Lcom/android/server/am/PinnedActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p2, :cond_47

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    iput v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_47
    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/am/PinnedActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/android/server/am/PinnedActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_57

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_57
    move-exception v4

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method resizeStackLocked(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V
    .registers 17

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v6, p5

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-nez v8, :cond_37

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizeStack: stackId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    if-nez p6, :cond_49

    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->tasksAreFloating(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_49

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_49

    return-void

    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "am.resizeStack_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_67
    invoke-virtual {v8, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-nez p7, :cond_73

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-virtual {v8, v0, p5}, Lcom/android/server/am/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_7e

    :cond_73
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_7e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .registers 11

    const/4 v5, 0x0

    if-eqz p2, :cond_5e

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_5
    if-eqz v0, :cond_5d

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v3, "system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    :cond_2c
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    :cond_39
    and-int/lit8 v2, p3, 0x4

    if-eqz v2, :cond_46

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    :cond_46
    if-eqz p4, :cond_51

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, p4}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    :cond_51
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v2, :cond_5d

    if-eqz v1, :cond_5d

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    :cond_5d
    return-object v0

    :cond_5e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 8

    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .registers 8

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const/high16 v2, 0x810000

    or-int/2addr v2, p4

    or-int/lit16 v2, v2, 0x400

    invoke-virtual {v0, p1, p2, v2, p3}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    move-result-object v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    :catchall_1a
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/am/TaskRecord;I)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getLaunchStackId()I

    move-result p2

    :cond_c
    :goto_c
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eqz v2, :cond_2a

    iget v4, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v4, p2, :cond_24

    return v6

    :cond_17
    const/4 v4, 0x3

    if-ne p2, v4, :cond_c

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c

    const/4 p2, 0x1

    goto :goto_c

    :cond_24
    const-string/jumbo v4, "restoreRecentTaskLocked"

    invoke-virtual {v2, p1, v4, v6}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    :cond_2a
    invoke-virtual {p0, p2, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_31

    return v5

    :cond_31
    const-string/jumbo v4, "restoreRecentTask"

    invoke-virtual {v3, p1, v5, v4}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    invoke-virtual {p1, v5, v6}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_42
    if-ltz v1, :cond_50

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    :cond_50
    return v6
.end method

.method resumeFocusedStackTopActivityLocked()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 14

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->readyToResume()Z

    move-result v6

    if-nez v6, :cond_b

    return v9

    :cond_b
    const/4 v3, 0x0

    if-eqz p1, :cond_8c

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isMiuiAiModeStack()Z

    move-result v6

    if-eqz v6, :cond_8c

    :cond_1a
    if-eqz p2, :cond_34

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_34

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    if-eqz v6, :cond_34

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    iput-boolean v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-nez v6, :cond_34

    return v9

    :cond_34
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v3

    :cond_38
    :goto_38
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eqz v6, :cond_8b

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8b

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8b

    const-string/jumbo v6, "persist.sys.miui_optimization"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8b

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v6, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v6, v4, :cond_66

    move v4, v5

    :cond_66
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_8b

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v4

    if-ne v4, v5, :cond_8b

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_8b

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_8b

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8b

    invoke-virtual {v0, v8, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    :cond_8b
    return v3

    :cond_8c
    const/4 v6, 0x5

    invoke-virtual {p0, v6, v9, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchRecentsFromGesture:Z

    if-eqz v6, :cond_a7

    if-eqz v2, :cond_a7

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHasResumeRecentsBehind:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a7

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStopLaunchRecentsBehind:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a7

    invoke-virtual {v2, v8, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_38

    :cond_a7
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_b5

    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_bc

    :cond_b5
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v6, v8, v8}, Lcom/android/server/am/ActivityStack;->resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_38

    :cond_bc
    iget-object v6, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_38

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v4, :cond_cf

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p3}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    :cond_cf
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    if-eqz v4, :cond_d8

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    iput-boolean v9, p0, Lcom/android/server/am/ActivityStackSupervisor;->mNeedScheduleIdle:Z

    :cond_d8
    return v9
.end method

.method resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_11

    return v3

    :cond_11
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_1a
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->moveHomeStackTaskToTop()V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resumeHomeStackTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_49

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_49

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v2, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    :cond_49
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 9

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_8
    if-ltz v0, :cond_2a

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_27

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2a
    return-void
.end method

.method final scheduleIdleLocked()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    const/16 v1, 0x66

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x1388

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/am/TaskRecord;)V
    .registers 10

    const/16 v7, 0x72

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v5

    if-eqz v5, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x0

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_18
    if-ltz v0, :cond_38

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_35

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_35

    if-nez v1, :cond_30

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_30
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_38
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v6, :cond_64

    :goto_49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v5, v4

    const v3, 0x11171

    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_63

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    :cond_63
    return-void

    :cond_64
    move v3, v4

    goto :goto_49
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
    .registers 7

    const/16 v3, 0x73

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_a
    if-ltz v0, :cond_26

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_23

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_26
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_35

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    :cond_35
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .registers 6

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz p2, :cond_9

    if-ne p2, v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget v1, p2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-eq v1, v2, :cond_12

    iget v1, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v1, v2, :cond_9

    :cond_12
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V

    return-void
.end method

.method sendWaitingVisibleReportLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_a
    if-ltz v1, :cond_3e

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v2

    const/4 v0, 0x1

    iput-boolean v8, v2, Landroid/app/WaitResult;->timeout:Z

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/app/WaitResult;->thisTime:J

    sub-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/WaitResult;->totalTime:J

    iget-wide v4, v2, Landroid/app/WaitResult;->totalTime:J

    iput-wide v4, v2, Landroid/app/WaitResult;->thisTime:J

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_3e
    if-eqz v0, :cond_45

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->notifyAll()V

    :cond_45
    return-void
.end method

.method setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V
    .registers 7

    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplayOrCreateLocked(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No display found with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method setDockedStackMinimized(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    return-void
.end method

.method setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V
    .registers 8

    const/4 v2, -0x1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object p2

    :cond_b
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq p2, v1, :cond_23

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v1, :cond_3f

    move v1, v2

    :goto_1c
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v4, :cond_46

    :goto_20
    invoke-static {v3, v1, v2, p1}, Lcom/android/server/am/EventLogTags;->writeAmFocusedStack(IIILjava/lang/String;)V

    :cond_23
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3e

    :cond_35
    if-eqz v0, :cond_3e

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-eqz v1, :cond_3e

    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    :cond_3e
    return-void

    :cond_3f
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    goto :goto_1c

    :cond_46
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    goto :goto_20
.end method

.method setIsMultiWindowMode(Lcom/android/server/am/ActivityRecord;)V
    .registers 5

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setIsInMultiWindowMode(Z)V

    :cond_11
    return-void
.end method

.method setLaunchSource(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method setLockTaskModeLocked(Lcom/android/server/am/TaskRecord;ILjava/lang/String;Z)V
    .registers 16

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLockedTaskLocked()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    if-eqz v10, :cond_1e

    invoke-virtual {p0, v10}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void

    :cond_1e
    return-void

    :cond_1f
    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-nez v0, :cond_24

    return-void

    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->isLockTaskModeViolation(Lcom/android/server/am/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG_LOCKTASK:Ljava/lang/String;

    const-string/jumbo v1, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v0, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iput v0, v9, Landroid/os/Message;->arg1:I

    const/16 v0, 0x6d

    iput v0, v9, Landroid/os/Message;->what:I

    iput p2, v9, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_5a
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    if-ne v0, v5, :cond_6c

    iget v0, p1, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    iput v0, p1, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    :cond_6c
    if-eqz p4, :cond_82

    if-eqz p2, :cond_80

    move v5, v8

    :goto_71
    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskToMoveToFrontLocked(Lcom/android/server/am/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    move v5, v2

    goto :goto_71

    :cond_82
    if-eqz p2, :cond_7f

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v7

    move-object v3, p0

    move-object v4, p1

    move v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/am/TaskRecord;IIIZ)V

    goto :goto_7f
.end method

.method setNextTaskIdForUserLocked(II)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-le p1, v0, :cond_e

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_e
    return-void
.end method

.method setRecentTasks(Lcom/android/server/am/RecentTasks;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 10

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v4, p1}, Lcom/android/server/am/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "display"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v6, 0x0

    invoke-virtual {v4, p0, v6}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const-class v4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    :goto_35
    if-ltz v2, :cond_60

    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;I)V

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_55

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Default Display does not exist"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    :cond_55
    :try_start_55
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->calculateDefaultMinimalSizeOfResizeableTasks(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_35

    :cond_60
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const-class v4, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/InputManagerInternal;

    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;
    :try_end_77
    .catchall {:try_start_55 .. :try_end_77} :catchall_4f

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void
.end method

.method showLockTaskEscapeMessageLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method showLockTaskToast()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/LockTaskNotify;->showToast(I)V

    :cond_b
    return-void
.end method

.method shutdownLocked(I)Z
    .registers 13

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v8, p1

    add-long v2, v6, v8

    :goto_c
    invoke-direct {p0, v10, v10}, Lcom/android/server/am/ActivityStackSupervisor;->putStacksToSleepLocked(ZZ)Z

    move-result v6

    if-nez v6, :cond_2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v2, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_26

    :try_start_1e
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/am/ActivityManagerService;->wait(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_c

    :catch_24
    move-exception v0

    goto :goto_c

    :cond_26
    sget-object v6, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Activity manager shutdown timed out"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_2f
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    return v1
.end method

.method final startActivityFromRecentsInner(ILandroid/os/Bundle;)I
    .registers 25

    if-eqz p2, :cond_3a

    new-instance v17, Landroid/app/ActivityOptions;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    :goto_b
    if-eqz v17, :cond_3d

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActivityOptions;->getLaunchStackId()I

    move-result v3

    :goto_11
    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startActivityFromRecentsInner: Task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " can\'t be launch in the home/recents stack."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3a
    const/16 v17, 0x0

    goto :goto_b

    :cond_3d
    const/4 v3, -0x1

    goto :goto_11

    :cond_3f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v4, 0x3

    if-ne v3, v4, :cond_65

    :try_start_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {v17 .. v17}, Landroid/app/ActivityOptions;->getDockCreateMode()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->deferUpdateBounds(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v8, 0x13

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    :cond_65
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(III)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-nez v2, :cond_a9

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->continueUpdateBounds(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startActivityFromRecentsInner: Task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_a0
    .catchall {:try_start_49 .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v4

    :cond_a9
    :try_start_a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v18

    if-eqz v18, :cond_137

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    :goto_b3
    const/4 v4, -0x1

    if-eq v3, v4, :cond_c6

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v4

    if-eq v4, v3, :cond_c6

    const-string/jumbo v8, "startActivityFromRecents"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z

    :cond_c6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v8, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v8}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v4

    if-nez v4, :cond_13d

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_13d

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    const/4 v8, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v4, v8, v0}, Lcom/android/server/am/ActivityStarter;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunching()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v4, v8, v9, v0, v10}, Lcom/android/server/am/ActivityManagerService;->moveTaskToFrontLocked(IILandroid/os/Bundle;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/am/ActivityMetricsLogger;

    const/4 v8, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v4, v8, v0}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V

    const/4 v4, 0x3

    if-ne v3, v4, :cond_110

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    :cond_110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-eqz v20, :cond_13b

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v7

    :goto_124
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v9

    const/4 v6, 0x2

    move-object/from16 v8, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/am/ActivityRecord;IILcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStack;)V
    :try_end_12e
    .catchall {:try_start_a9 .. :try_end_12e} :catchall_a0

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v4

    :cond_137
    const/16 v20, 0x0

    goto/16 :goto_b3

    :cond_13b
    const/4 v7, -0x1

    goto :goto_124

    :cond_13d
    :try_start_13d
    iget v5, v2, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    const/high16 v4, 0x100000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    iget v14, v2, Lcom/android/server/am/TaskRecord;->userId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v16, "startActivityFromRecents"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p2

    move-object v15, v2

    invoke-virtual/range {v4 .. v16}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v19

    const/4 v4, 0x3

    if-ne v3, v4, :cond_169

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/am/TaskRecord;)V

    :cond_169
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_180

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_180

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    const-string/jumbo v8, "startActivityFromRecents"

    const/4 v9, 0x0

    invoke-virtual {v4, v2, v8, v9}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V
    :try_end_180
    .catchall {:try_start_13d .. :try_end_180} :catchall_a0

    :cond_180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v19
.end method

.method final startActivityInMiuiAiModeInner(Landroid/content/Intent;)I
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v1}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->isInMultiWindowStackMode()Z

    move-result v1

    if-eqz v1, :cond_2b

    :cond_20
    sget-object v1, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, " Start activity inMiuiAiMode failed, because first condition is not satisfied."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x60

    return v1

    :cond_2b
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v16

    const/4 v1, 0x7

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(IZZ)Lcom/android/server/am/ActivityStack;

    move-result-object v18

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    move-object/from16 v0, v19

    iget v11, v0, Lcom/android/server/am/TaskRecord;->userId:I

    const-string/jumbo v13, "startActivityInMiuiAiModeInner"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ActivityManagerService;->startActivityInPackage(ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/os/Bundle;ILcom/android/server/am/TaskRecord;Ljava/lang/String;)I

    move-result v17

    return v17
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    if-eqz v15, :cond_8a

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_8a

    :try_start_24
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3f

    const-string/jumbo v4, "android"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_56

    :cond_3f
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->versionCode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v15, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;ILcom/android/server/am/ProcessStatsService;)Z

    :cond_56
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception v16

    sget-object v4, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception when starting activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->theme:I

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->nextActivityTheme:I

    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->isColdStart:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v9, "activity"

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZLjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    return-void
.end method

.method switchUserLocked(ILcom/android/server/am/UserState;)Z
    .registers 15

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v1

    if-ne v1, v10, :cond_58

    const/4 v8, 0x1

    :goto_c
    invoke-virtual {p0, v10, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(IZ)V

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->removeStackLocked(I)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v10, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v8, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_2f
    if-ltz v0, :cond_5d

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    :goto_41
    if-ltz v5, :cond_5a

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eqz v7, :cond_55

    invoke-virtual {v4, v7}, Lcom/android/server/am/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V

    :cond_55
    add-int/lit8 v5, v5, -0x1

    goto :goto_41

    :cond_58
    move v8, v9

    goto :goto_c

    :cond_5a
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    :cond_5d
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-nez v4, :cond_65

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    :cond_65
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v8

    if-eqz v8, :cond_76

    const-string/jumbo v8, "switchUserOnHomeDisplay"

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    :goto_75
    return v2

    :cond_76
    const-string/jumbo v8, "switchUserOnOtherDisplay"

    invoke-virtual {p0, v11, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    goto :goto_75
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .registers 11

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_a

    return-object v4

    :cond_a
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    :goto_19
    if-ltz v2, :cond_56

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mTmpOrderedDisplayIds:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v7, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    if-nez v6, :cond_30

    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_30
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_36
    if-ltz v3, :cond_2d

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStack;

    if-eq v5, v1, :cond_53

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStackOnDisplay(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_53

    return-object v4

    :cond_53
    add-int/lit8 v3, v3, -0x1

    goto :goto_36

    :cond_56
    return-object v9
.end method

.method unregisterMiuiAppTransitionAnimationHelper(Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mAnimationHelperDeathRecipient:Lcom/android/server/am/ActivityStackSupervisor$AnimationHelperDeathRecipient;

    if-eq p1, v0, :cond_18

    sget-object v0, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "The death recipient has changed, we have registered a new helper so we don\'t need to unregister now."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_2c

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/android/server/am/ActivityStackSupervisor;->unlinkToDeathMiuiAnimationHelper()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mMiuiAppTransitionAnimationHelper:Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_2c

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setMiuiAppTransitionAnimationHelper(Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;)V

    :cond_2b
    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_8
    if-ltz v0, :cond_2b

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v2, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1a
    if-ltz v1, :cond_28

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_2b
    return-void
.end method

.method updateMiuiAnimationInfo(Lcom/android/server/am/ActivityRecord;)V
    .registers 6

    if-eqz p1, :cond_35

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isAppTransitionSkipped()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_35

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v2}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    :goto_18
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_35

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->realComponentName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setLoadBackHomeAnimation(Z)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->startFetchingAppTransitionSpecs()V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/server/am/ActivityStackSupervisor$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_35
    return-void

    :cond_36
    const/4 v2, 0x0

    goto :goto_18
.end method

.method updatePictureInPictureMode(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Z)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_f
    if-ltz v0, :cond_29

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_26

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_26

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_29
    return-void
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 12

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_9
    if-ltz v0, :cond_40

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v5, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_1b
    if-ltz v3, :cond_31

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_3d

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_34

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :cond_31
    :goto_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_34
    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_31

    iget-object v5, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_31

    :cond_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    :cond_40
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_68

    if-eqz v1, :cond_68

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v1, :cond_68

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_68

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v5, v6, :cond_68

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v6, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v6, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    :cond_68
    return-void
.end method

.method updateUIDsPresentOnDisplay()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_d
    if-ltz v1, :cond_2b

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->isPrivate()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->-wrap0(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)Landroid/util/IntArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayAccessUIDs(Landroid/util/SparseArray;)V

    return-void
.end method

.method updateUserStackLocked(ILcom/android/server/am/ActivityStack;)V
    .registers 5

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    if-eq p1, v0, :cond_f

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    :goto_c
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_f
    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method validateTopActivitiesLocked()V
    .registers 12

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_8
    if-ltz v0, :cond_106

    iget-object v8, p0, Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v6, v8, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    :goto_1a
    if-ltz v5, :cond_102

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_4e

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    :goto_2a
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_a8

    if-nez v2, :cond_51

    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: null top activity, stack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    :goto_4b
    add-int/lit8 v5, v5, -0x1

    goto :goto_1a

    :cond_4e
    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2a

    :cond_51
    iget-object v1, v4, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_7b

    if-ne v1, v2, :cond_7b

    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_4b

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_4b

    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: activity in front not resumed r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_a8
    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_d2

    if-ne v3, v2, :cond_d2

    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    if-eqz v2, :cond_4b

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v7, v8, :cond_dc

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_4b

    :cond_dc
    sget-object v8, Lcom/android/server/am/ActivityStackSupervisor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validateTop...: activity in back resumed r="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    :cond_102
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    :cond_106
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;)V
    .registers 5

    new-instance v0, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android.server.am:TURN_ON:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void
.end method
